﻿using System;
using System.Collections.Generic;
using System.Text;

namespace UCPortal.RequestResponse.Request
{
    public class GetStudentGradesRequest
    {
        public string internal_code {get;set;}
        public string id_number { get; set; }
    }
}
