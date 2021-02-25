package com.dags.simplilearntaskmanager.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TaskDto {
    private String taskName;
    private String startDate;
    private String endDate;
    private String description;
    private String severity;
}
