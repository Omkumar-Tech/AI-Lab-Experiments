timetable(monday,     '9:00', python,   aradhana, room101).
timetable(monday,     '10:00',dsa,        sharma, room104).
timetable(tuesday,    '9:00',ai,           verma, room103).
timetable(tuesday,    '10:00',python,   aradhana, room104).
timetable(wednesday,  '9:00',dsa,       sharma, room105).
timetable(wednesday,  '10:00',python,    aradhana, room104).


%faculty scedule
faculty_sh(Faculty,Day,Time,Subject,RoomNo):-
    timetable(Day,Time,Subject,Faculty,RoomNo).



%Teaching Subject
subject_name(Subject,Faculty):-
    timetable(_,_,Subject,Faculty,_).


%Room wise Time Table
room_no(RoomNo,Day,Time,Subject,Faculty):-
    timetable(Day,Time,Subject,Faculty,RoomNo).