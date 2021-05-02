USE [master]
GO
/****** Object:  Database [UCOnlinePortal]    Script Date: 11/17/2020 10:41:41 AM ******/
CREATE DATABASE [UCOnlinePortal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UCOnlinePortal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\UCOnlinePortal.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UCOnlinePortal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\UCOnlinePortal_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UCOnlinePortal] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UCOnlinePortal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UCOnlinePortal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET ARITHABORT OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UCOnlinePortal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UCOnlinePortal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UCOnlinePortal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UCOnlinePortal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UCOnlinePortal] SET  MULTI_USER 
GO
ALTER DATABASE [UCOnlinePortal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UCOnlinePortal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UCOnlinePortal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [UCOnlinePortal] SET DELAYED_DURABILITY = DISABLED 
GO
USE [UCOnlinePortal]
GO
/****** Object:  Table [dbo].[212contact_address]    Script Date: 11/17/2020 10:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[212contact_address](
	[add_con_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_info_id] [int] NOT NULL,
	[p_country] [varchar](50) NULL,
	[p_province] [varchar](50) NULL,
	[p_city] [varchar](50) NULL,
	[p_barangay] [varchar](50) NULL,
	[p_street] [varchar](150) NULL,
	[p_zip] [varchar](10) NULL,
	[c_province] [varchar](50) NULL,
	[c_city] [varchar](50) NULL,
	[c_barangay] [varchar](50) NULL,
	[c_street] [varchar](150) NULL,
	[mobile] [varchar](15) NOT NULL,
	[landline] [varchar](15) NULL,
	[email] [varchar](50) NOT NULL,
	[facebook] [varchar](100) NULL,
 CONSTRAINT [PK_212contact_address] PRIMARY KEY CLUSTERED 
(
	[add_con_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[212family_info]    Script Date: 11/17/2020 10:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[212family_info](
	[family_info_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_info_id] [int] NOT NULL,
	[father_name] [varchar](120) NULL,
	[father_contact] [varchar](15) NULL,
	[father_occupation] [varchar](50) NULL,
	[mother_name] [varchar](120) NULL,
	[mother_contact] [varchar](15) NULL,
	[mother_occupation] [varchar](50) NULL,
	[guardian_name] [varchar](150) NULL,
	[guardian_contact] [varchar](15) NULL,
	[guardian_occupation] [varchar](50) NULL,
 CONSTRAINT [PK_212family_info] PRIMARY KEY CLUSTERED 
(
	[family_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[212notification]    Script Date: 11/17/2020 10:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[212notification](
	[notif_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[notif_read] [smallint] NOT NULL,
	[message] [varchar](300) NOT NULL,
	[dte] [datetime] NOT NULL,
 CONSTRAINT [PK_212notification] PRIMARY KEY CLUSTERED 
(
	[notif_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[212oenrp]    Script Date: 11/17/2020 10:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[212oenrp](
	[oenrp_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[year_level] [smallint] NOT NULL,
	[course_code] [varchar](10) NOT NULL,
	[enrollment_date] [datetime] NOT NULL,
	[units] [smallint] NOT NULL,
	[classification] [varchar](10) NOT NULL,
	[dept] [varchar](5) NOT NULL,
	[section] [varchar](10) NULL,
	[status] [smallint] NOT NULL,
	[approved_registrar] [varchar](100) NULL,
	[approved_registrar_on] [datetime] NULL,
	[approved_dean] [varchar](100) NULL,
	[approved_dean_on] [datetime] NULL,
	[adjustment_count] [smallint] NOT NULL,
	[adjustment_by] [varchar](100) NULL,
	[adjustment_on] [datetime] NULL,
	[approved_acctg] [varchar](100) NULL,
	[approved_acctg_on] [datetime] NULL,
	[needed_payment] [int] NULL,
	[approved_cashier] [varchar](100) NULL,
	[approved_cashier_on] [datetime] NULL,
 CONSTRAINT [PK_212oenrp] PRIMARY KEY CLUSTERED 
(
	[oenrp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[212ostsp]    Script Date: 11/17/2020 10:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[212ostsp](
	[sts_id] [smallint] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[edp_code] [varchar](5) NOT NULL,
	[status] [smallint] NOT NULL,
	[remarks] [varchar](50) NULL,
	[adjusted_on] [datetime] NOT NULL,
 CONSTRAINT [PK_212ostsp] PRIMARY KEY CLUSTERED 
(
	[sts_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[212school_info]    Script Date: 11/17/2020 10:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[212school_info](
	[school_info_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_info_id] [int] NOT NULL,
	[elem_name] [varchar](200) NULL,
	[elem_year] [varchar](15) NULL,
	[elem_last_year] [smallint] NULL,
	[elem_type] [varchar](20) NULL,
	[elem_lrn_no] [varchar](20) NULL,
	[elem_esc_student_id] [varchar](20) NULL,
	[elem_esc_school_id] [varchar](20) NULL,
	[sec_name] [varchar](200) NULL,
	[sec_year] [varchar](15) NULL,
	[sec_last_year] [smallint] NULL,
	[sec_last_strand] [varchar](100) NULL,
	[sec_type] [varchar](20) NULL,
	[sec_lrn_no] [varchar](20) NULL,
	[sec_esc_student_id] [varchar](20) NULL,
	[sec_esc_school_id] [varchar](20) NULL,
	[col_name] [varchar](200) NULL,
	[col_year] [varchar](15) NULL,
	[col_course] [varchar](50) NULL,
	[col_last_year] [smallint] NULL,
 CONSTRAINT [PK_212school_info] PRIMARY KEY CLUSTERED 
(
	[school_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[212student_info]    Script Date: 11/17/2020 10:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[212student_info](
	[stud_info_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NULL,
	[course_code] [varchar](10) NOT NULL,
	[year_level] [int] NOT NULL,
	[mdn] [varchar](5) NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[middle_name] [varchar](50) NOT NULL,
	[suffix] [varchar](5) NULL,
	[gender] [varchar](10) NOT NULL,
	[status] [varchar](20) NOT NULL,
	[nationality] [varchar](50) NOT NULL,
	[birth_date] [datetime] NOT NULL,
	[birth_place] [varchar](50) NOT NULL,
	[religion] [varchar](50) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_updated] [datetime] NOT NULL,
	[start_term] [smallint] NOT NULL,
	[is_verified] [smallint] NOT NULL,
	[token] [varchar](8) NOT NULL,
	[allowed_unit] [smallint] NOT NULL,
	[classification] [varchar](5) NOT NULL,
	[dept] [varchar](10) NOT NULL,
 CONSTRAINT [PK_212student_info] PRIMARY KEY CLUSTERED 
(
	[stud_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[course_list]    Script Date: 11/17/2020 10:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course_list](
	[course_id] [smallint] IDENTITY(1,1) NOT NULL,
	[course_code] [varchar](10) NOT NULL,
	[course_description] [varchar](150) NOT NULL,
	[course_abbr] [varchar](10) NOT NULL,
	[course_year_limit] [smallint] NOT NULL,
	[course_department] [varchar](100) NOT NULL,
	[department] [varchar](10) NOT NULL,
	[course_active] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login_info]    Script Date: 11/17/2020 10:41:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login_info](
	[cinfo_id] [smallint] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NULL,
	[last_name] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[mi] [varchar](1) NOT NULL,
	[suffix] [varchar](5) NULL,
	[start_term] [varchar](5) NOT NULL,
	[password] [varchar](200) NOT NULL,
	[dept] [varchar](10) NOT NULL,
	[course_code] [varchar](10) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[mobile_number] [varchar](20) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[birthdate] [datetime] NOT NULL,
	[facebook] [varchar](50) NOT NULL,
	[is_verified] [smallint] NOT NULL,
	[is_blocked] [smallint] NOT NULL,
	[user_type] [varchar](20) NOT NULL,
 CONSTRAINT [PK_login_info] PRIMARY KEY CLUSTERED 
(
	[cinfo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[212contact_address] ON 

INSERT [dbo].[212contact_address] ([add_con_id], [stud_info_id], [p_country], [p_province], [p_city], [p_barangay], [p_street], [p_zip], [c_province], [c_city], [c_barangay], [c_street], [mobile], [landline], [email], [facebook]) VALUES (1, 2, N'PHILIPPINES', N'CEBU', N'LAPULAPU', N'BANKAL', N'SAMPLE STREET', N'6015', N'CEBU', N'LAPULAPU', N'PAJO', N'SAMPLE STREET', N'+639397245384', N'032-3408677', N'TEST@TEST.com', N'TEST TERONE')
INSERT [dbo].[212contact_address] ([add_con_id], [stud_info_id], [p_country], [p_province], [p_city], [p_barangay], [p_street], [p_zip], [c_province], [c_city], [c_barangay], [c_street], [mobile], [landline], [email], [facebook]) VALUES (2, 4, N'PHILIPPINES', N'CEBU', N'LAPULAPU', N'BANKAL', N'SAMPLE STREET', N'6015', N'CEBU', N'LAPULAPU', N'PAJO', N'SAMPLE STREET', N'+639397245384', N'032-3408677', N'TEST@TEST.com', N'TEST TERONE')
INSERT [dbo].[212contact_address] ([add_con_id], [stud_info_id], [p_country], [p_province], [p_city], [p_barangay], [p_street], [p_zip], [c_province], [c_city], [c_barangay], [c_street], [mobile], [landline], [email], [facebook]) VALUES (3, 5, N'PHILIPPINES', N'CEBU', N'LAPULAPU', N'BANKAL', N'SAMPLE STREET', N'6015', N'CEBU', N'LAPULAPU', N'PAJO', N'SAMPLE STREET', N'+639397245384', N'032-3408677', N'TEST@TEST.com', N'TEST TERONE')
INSERT [dbo].[212contact_address] ([add_con_id], [stud_info_id], [p_country], [p_province], [p_city], [p_barangay], [p_street], [p_zip], [c_province], [c_city], [c_barangay], [c_street], [mobile], [landline], [email], [facebook]) VALUES (4, 1, N'PHILIPPINES', N'CEBU', N'LAPULAPU', N'BANKAL', N'SAMPLE STREET', N'6015', N'CEBU', N'LAPULAPU', N'PAJO', N'SAMPLE STREET', N'+639397245384', N'032-3408677', N'TEST@TEST.com', N'TEST TERONE')
SET IDENTITY_INSERT [dbo].[212contact_address] OFF
SET IDENTITY_INSERT [dbo].[212family_info] ON 

INSERT [dbo].[212family_info] ([family_info_id], [stud_info_id], [father_name], [father_contact], [father_occupation], [mother_name], [mother_contact], [mother_occupation], [guardian_name], [guardian_contact], [guardian_occupation]) VALUES (1, 2, N'FATHER I TAY', N'+639123456789', N'SALESMAN', N'MOTHER N ANAY', N'+639123456789', N'SALESWOMAN', N'GUARDIAN B ANTAY', N'+639123456789', N'GUARD')
INSERT [dbo].[212family_info] ([family_info_id], [stud_info_id], [father_name], [father_contact], [father_occupation], [mother_name], [mother_contact], [mother_occupation], [guardian_name], [guardian_contact], [guardian_occupation]) VALUES (2, 4, N'FATHER I TAY', N'+639123456789', N'SALESMAN', N'MOTHER N ANAY', N'+639123456789', N'SALESWOMAN', N'GUARDIAN B ANTAY', N'+639123456789', N'GUARD')
INSERT [dbo].[212family_info] ([family_info_id], [stud_info_id], [father_name], [father_contact], [father_occupation], [mother_name], [mother_contact], [mother_occupation], [guardian_name], [guardian_contact], [guardian_occupation]) VALUES (3, 5, N'FATHER I TAY', N'+639123456789', N'SALESMAN', N'MOTHER N ANAY', N'+639123456789', N'SALESWOMAN', N'GUARDIAN B ANTAY', N'+639123456789', N'GUARD')
INSERT [dbo].[212family_info] ([family_info_id], [stud_info_id], [father_name], [father_contact], [father_occupation], [mother_name], [mother_contact], [mother_occupation], [guardian_name], [guardian_contact], [guardian_occupation]) VALUES (4, 1, N'FATHER I TAY', N'+639123456789', N'SALESMAN', N'MOTHER N ANAY', N'+639123456789', N'SALESWOMAN', N'GUARDIAN B ANTAY', N'+639123456789', N'GUARD')
SET IDENTITY_INSERT [dbo].[212family_info] OFF
SET IDENTITY_INSERT [dbo].[212notification] ON 

INSERT [dbo].[212notification] ([notif_id], [stud_id], [notif_read], [message], [dte]) VALUES (1, N'2', 0, N'Greg', CAST(N'2020-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[212notification] ([notif_id], [stud_id], [notif_read], [message], [dte]) VALUES (2, N'2', 1, N'James', CAST(N'2020-11-12 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[212notification] OFF
SET IDENTITY_INSERT [dbo].[212oenrp] ON 

INSERT [dbo].[212oenrp] ([oenrp_id], [stud_id], [year_level], [course_code], [enrollment_date], [units], [classification], [dept], [section], [status], [approved_registrar], [approved_registrar_on], [approved_dean], [approved_dean_on], [adjustment_count], [adjustment_by], [adjustment_on], [approved_acctg], [approved_acctg_on], [needed_payment], [approved_cashier], [approved_cashier_on]) VALUES (1, N'5', 5, N'AE', CAST(N'2020-11-13 00:00:00.000' AS DateTime), 14, N'O', N'CL', N'', 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[212oenrp] OFF
SET IDENTITY_INSERT [dbo].[212ostsp] ON 

INSERT [dbo].[212ostsp] ([sts_id], [stud_id], [edp_code], [status], [remarks], [adjusted_on]) VALUES (1, N'5', N'18954', 1, NULL, CAST(N'2020-11-13 17:11:33.997' AS DateTime))
INSERT [dbo].[212ostsp] ([sts_id], [stud_id], [edp_code], [status], [remarks], [adjusted_on]) VALUES (2, N'5', N'19585', 1, NULL, CAST(N'2020-11-13 17:11:34.030' AS DateTime))
INSERT [dbo].[212ostsp] ([sts_id], [stud_id], [edp_code], [status], [remarks], [adjusted_on]) VALUES (3, N'5', N'16478', 1, NULL, CAST(N'2020-11-13 17:11:34.033' AS DateTime))
SET IDENTITY_INSERT [dbo].[212ostsp] OFF
SET IDENTITY_INSERT [dbo].[212school_info] ON 

INSERT [dbo].[212school_info] ([school_info_id], [stud_info_id], [elem_name], [elem_year], [elem_last_year], [elem_type], [elem_lrn_no], [elem_esc_student_id], [elem_esc_school_id], [sec_name], [sec_year], [sec_last_year], [sec_last_strand], [sec_type], [sec_lrn_no], [sec_esc_student_id], [sec_esc_school_id], [col_name], [col_year], [col_course], [col_last_year]) VALUES (1, 2, N'ELEMENTARY SCHOOL', N'2008-2012', 5, N'PRIVATE', N'1456456546', N'4564654', N'54645', N'SECONDARY SCHOOL', N'2008-2012', 11, NULL, N'PUBLIC', N'1456456546', N'4564654', N'54645', N'COLLEGE', N'2018-2012', N'BSIT', 2)
INSERT [dbo].[212school_info] ([school_info_id], [stud_info_id], [elem_name], [elem_year], [elem_last_year], [elem_type], [elem_lrn_no], [elem_esc_student_id], [elem_esc_school_id], [sec_name], [sec_year], [sec_last_year], [sec_last_strand], [sec_type], [sec_lrn_no], [sec_esc_student_id], [sec_esc_school_id], [col_name], [col_year], [col_course], [col_last_year]) VALUES (2, 4, N'ELEMENTARY SCHOOL', N'2008-2012', 5, N'PRIVATE', N'1456456546', N'4564654', N'54645', N'SECONDARY SCHOOL', N'2008-2012', 11, NULL, N'PUBLIC', N'1456456546', N'4564654', N'54645', N'COLLEGE', N'2018-2012', N'BSIT', 2)
INSERT [dbo].[212school_info] ([school_info_id], [stud_info_id], [elem_name], [elem_year], [elem_last_year], [elem_type], [elem_lrn_no], [elem_esc_student_id], [elem_esc_school_id], [sec_name], [sec_year], [sec_last_year], [sec_last_strand], [sec_type], [sec_lrn_no], [sec_esc_student_id], [sec_esc_school_id], [col_name], [col_year], [col_course], [col_last_year]) VALUES (3, 5, N'ELEMENTARY SCHOOL', N'2008-2012', 5, N'PRIVATE', N'1456456546', N'4564654', N'54645', N'SECONDARY SCHOOL', N'2008-2012', 11, NULL, N'PUBLIC', N'1456456546', N'4564654', N'54645', N'COLLEGE', N'2018-2012', N'BSIT', 2)
INSERT [dbo].[212school_info] ([school_info_id], [stud_info_id], [elem_name], [elem_year], [elem_last_year], [elem_type], [elem_lrn_no], [elem_esc_student_id], [elem_esc_school_id], [sec_name], [sec_year], [sec_last_year], [sec_last_strand], [sec_type], [sec_lrn_no], [sec_esc_student_id], [sec_esc_school_id], [col_name], [col_year], [col_course], [col_last_year]) VALUES (4, 1, N'ELEMENTARY SCHOOL', N'2008-2012', 5, N'PRIVATE', N'1456456546', N'4564654', N'54645', N'SECONDARY SCHOOL', N'2008-2012', 11, NULL, N'PUBLIC', N'1456456546', N'4564654', N'54645', N'COLLEGE', N'2018-2012', N'BSIT', 2)
SET IDENTITY_INSERT [dbo].[212school_info] OFF
SET IDENTITY_INSERT [dbo].[212student_info] ON 

INSERT [dbo].[212student_info] ([stud_info_id], [stud_id], [course_code], [year_level], [mdn], [first_name], [last_name], [middle_name], [suffix], [gender], [status], [nationality], [birth_date], [birth_place], [religion], [date_created], [date_updated], [start_term], [is_verified], [token], [allowed_unit], [classification], [dept]) VALUES (1, N'1', N'AE', 3, N'AM', N'GILBERT', N'TUMULAK', N'ONG', N'JR', N'MALE', N'SINGLE', N'FILIPINO', CAST(N'2008-09-26 00:00:00.000' AS DateTime), N'PAJO, LAPULAPU', N'ROMAN CATHOLIC', CAST(N'2020-11-13 00:00:00.000' AS DateTime), CAST(N'2020-11-13 00:00:00.000' AS DateTime), 20211, 0, N'696688', 30, N'O', N'CL')
SET IDENTITY_INSERT [dbo].[212student_info] OFF
SET IDENTITY_INSERT [dbo].[course_list] ON 

INSERT [dbo].[course_list] ([course_id], [course_code], [course_description], [course_abbr], [course_year_limit], [course_department], [department], [course_active]) VALUES (1, N'EC', N'Bachelor of Science in Information Technology', N'BSIT', 4, N'College of Computer Studies', N'CL', 1)
INSERT [dbo].[course_list] ([course_id], [course_code], [course_description], [course_abbr], [course_year_limit], [course_department], [department], [course_active]) VALUES (4, N'IE', N'Bachelor of Science in Computer Science', N'BSCS', 4, N'College of Computer Studies', N'CL', 1)
INSERT [dbo].[course_list] ([course_id], [course_code], [course_description], [course_abbr], [course_year_limit], [course_department], [department], [course_active]) VALUES (5, N'MV', N'Bachelor of Science in Marine Transportation', N'BSMT', 4, N'College of Marine Studies', N'CL', 1)
INSERT [dbo].[course_list] ([course_id], [course_code], [course_description], [course_abbr], [course_year_limit], [course_department], [department], [course_active]) VALUES (6, N'MR', N'Bachelor of Science in Marine Engineering', N'BSMARE', 4, N'College of Marine Studies', N'CL', 1)
SET IDENTITY_INSERT [dbo].[course_list] OFF
SET IDENTITY_INSERT [dbo].[login_info] ON 

INSERT [dbo].[login_info] ([cinfo_id], [stud_id], [last_name], [first_name], [mi], [suffix], [start_term], [password], [dept], [course_code], [sex], [mobile_number], [email], [birthdate], [facebook], [is_verified], [is_blocked], [user_type]) VALUES (1, N'5', N'TUMULAK', N'GILBERT', N'O', N'JR', N'20211', N'TUMULAK', N'CL', N'AE', N'MALE', N'+639397245384', N'TEST@TEST.com', CAST(N'2008-09-26 00:00:00.000' AS DateTime), N'TEST TERONE', 1, 0, N'Student')
INSERT [dbo].[login_info] ([cinfo_id], [stud_id], [last_name], [first_name], [mi], [suffix], [start_term], [password], [dept], [course_code], [sex], [mobile_number], [email], [birthdate], [facebook], [is_verified], [is_blocked], [user_type]) VALUES (2, N'1', N'TUMULAK', N'GILBERT', N'O', N'JR', N'20211', N'TUMULAK', N'CL', N'AE', N'MALE', N'+639397245384', N'TEST@TEST.com', CAST(N'2008-09-26 00:00:00.000' AS DateTime), N'TEST TERONE', 0, 0, N'Student')
SET IDENTITY_INSERT [dbo].[login_info] OFF
USE [master]
GO
ALTER DATABASE [UCOnlinePortal] SET  READ_WRITE 
GO
