package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.model.Attendance;

public interface AttendanceRepository extends JpaRepository<Attendance, Long>{

}