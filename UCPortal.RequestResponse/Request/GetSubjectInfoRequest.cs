﻿using System;
using System.Collections.Generic;
using System.Text;

namespace UCPortal.RequestResponse.Request
{
    public class GetSubjectInfoRequest
    {
        public int curr_year { get; set; }
        public string course_code { get; set; }
    }
}
