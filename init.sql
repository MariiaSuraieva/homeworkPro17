create table Homework
(
    id          mediumint auto_increment
        primary key,
    name        varchar(30)  null,
    description varchar(100) null
);

create table Lessons
(
    id          mediumint auto_increment
        primary key,
    name        varchar(30) null,
    updatedAt   date        null,
    homework_id mediumint   null,
    constraint FK_homework
        foreign key (homework_id) references Homework (id)
);

create table Schedule
(
    id        mediumint auto_increment
        primary key,
    name      varchar(30) null,
    updatedAt date        null
);

create table Lessons_Schedule
(
    lesson_id   mediumint not null,
    schedule_id mediumint not null,
    primary key (lesson_id, schedule_id),
    constraint FK_Lesson
        foreign key (lesson_id) references Lessons (id)
            on delete cascade,
    constraint FK_Schedule
        foreign key (schedule_id) references Schedule (id)
            on delete cascade
);


