package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Attendance;
import com.klef.jfsd.model.Event;
import com.klef.jfsd.model.Manager;
import com.klef.jfsd.model.Student;
import com.klef.jfsd.repository.AttendanceRepository;
import com.klef.jfsd.repository.EventRepository;
import com.klef.jfsd.repository.ManagerRepository;
import com.klef.jfsd.repository.StudentRepository;

import jakarta.transaction.Transactional;

@Service
public class EventServiceImpl implements EventService{
	
	
	@Autowired
    private EventRepository eventRepository;
	
	@Autowired
    private StudentRepository studentRepository;
	
	@Autowired
    private ManagerRepository managerRepository; // JPA repository for Manager

    @Autowired
    private AttendanceRepository attendanceRepository;

	@Override
	public List<Event> findByManagerId(int managerId) {
		return eventRepository.findByManagerId(managerId);
	}

	@Override
	public List<Event> getEventsByManager(long managerId) {
		return eventRepository.findByManagerId(managerId);
	}

	@Override
	public List<Student> getStudentsForEvent(int eventId) {
		return studentRepository.findByRegisteredEventsId(eventId);
	}

	@Override
	public Event getEventById(int eventId) {
		 return eventRepository.findById(eventId)
	                .orElseThrow(() -> new RuntimeException("Event not found with ID: " + eventId));
	}

	@Override
	@Transactional
	public void postAttendance(int id, Event event, int studentId, String status) {
		 Manager manager = managerRepository.findById(id)
		            .orElseThrow(() -> new RuntimeException("Manager not found with ID: " + id));

		    // Find the student
		    Student student = studentRepository.findById(studentId)
		            .orElseThrow(() -> new RuntimeException("Student not found with ID: " + studentId));

		    // Create an Attendance record
		    Attendance attendance = new Attendance();
		    attendance.setManager(manager);
		    attendance.setEvent(event);
		    attendance.setStudent(student);
		    attendance.setStatus(status);

		    // Save the attendance
		    attendanceRepository.save(attendance);
	}

}