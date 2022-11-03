package ru.hogwarts.school.HW2_course4_dbmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.hogwarts.school.HW2_course4_dbmanagement.model.Avatar;

import java.util.Optional;

public interface AvatarRepository extends JpaRepository<Avatar, Long> { //расширяет PagingAndSortingRepository
     Optional<Avatar> findAvatarByStudentId (long studentId);
}
