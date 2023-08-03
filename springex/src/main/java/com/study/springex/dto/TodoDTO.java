package com.study.springex.dto;


import lombok.*;

import javax.validation.constraints.Email;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@ToString
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class TodoDTO {
    private Long tno;

    @NotNull
    private String title;

    @Future
    private LocalDate dueDate;

    private boolean finished;
    @NotEmpty
    private String writer;
}
