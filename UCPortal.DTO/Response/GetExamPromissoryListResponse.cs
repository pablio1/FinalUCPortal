﻿using System;
using System.Collections.Generic;
using System.Text;

namespace UCPortal.DTO.Response
{
    public class GetExamPromissoryListResponse
    {
        public int count { get; set; }
        public List<Student> students { get; set; }
        public class Student
        {
            public string id_number { get; set; }
            public string lastname { get; set; }
            public string firstname { get; set; }
            public string mi { get; set; }
            public string suffix { get; set; }
            public string classification { get; set; }
            public string course_year { get; set; }
            public string course_code { get; set; }
            public string message { get; set; }
            public DateTime date { get; set; }
            public int status { get; set; }
            public int promise_pay { get; set; }
            public int needed_payment { get; set; }
        }
    }
}
