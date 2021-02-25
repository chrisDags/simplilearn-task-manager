package com.dags.simplilearntaskmanager.repository;

import com.dags.simplilearntaskmanager.entity.Task;
import com.dags.simplilearntaskmanager.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TaskRepository extends CrudRepository<Task, Long> {
    @Override
    boolean existsById(Long id);
    Iterable<Task> findAllByUser(User user);
    Task findTaskById(Long id);
}
