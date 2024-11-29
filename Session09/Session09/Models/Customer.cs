﻿using System;
using System.Collections.Generic;

namespace Session09.Models;

public partial class Customer
{
    public long Id { get; set; }

    public string? Name { get; set; }

    public string? Usename { get; set; }

    public string? Password { get; set; }

    public string? Address { get; set; }

    public string? Email { get; set; }

    public string? Phone { get; set; }

    public string? Avatar { get; set; }

    public DateTime? CreatedDate { get; set; }

    public DateTime? UpdatedDate { get; set; }

    public long? CreatedBy { get; set; }

    public long? UpdatedBy { get; set; }

    public byte? Isdelete { get; set; }

    public byte? Isactive { get; set; }
}