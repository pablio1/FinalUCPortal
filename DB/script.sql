USE [master]
GO
/****** Object:  Database [UCOnlinePortal]    Script Date: 3/18/2021 6:09:07 PM ******/
CREATE DATABASE [UCOnlinePortal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UCOnlinePortal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\UCOnlinePortal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UCOnlinePortal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\UCOnlinePortal_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [UCOnlinePortal] SET COMPATIBILITY_LEVEL = 140
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
ALTER DATABASE [UCOnlinePortal] SET RECOVERY FULL 
GO
ALTER DATABASE [UCOnlinePortal] SET  MULTI_USER 
GO
ALTER DATABASE [UCOnlinePortal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UCOnlinePortal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UCOnlinePortal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UCOnlinePortal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UCOnlinePortal] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'UCOnlinePortal', N'ON'
GO
ALTER DATABASE [UCOnlinePortal] SET QUERY_STORE = OFF
GO
USE [UCOnlinePortal]
GO
/****** Object:  Table [dbo].[212assessment_be]    Script Date: 3/18/2021 6:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212assessment_be](
	[assess_be_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[old_account] [float] NOT NULL,
	[fee_tuition] [float] NOT NULL,
	[fee_lab] [float] NOT NULL,
	[fee_reg] [float] NOT NULL,
	[fee_misc_others] [float] NOT NULL,
	[fee_total] [float] NOT NULL,
	[total_due] [float] NOT NULL,
	[payment] [float] NOT NULL,
	[discount] [float] NOT NULL,
	[adjustment] [float] NOT NULL,
	[balance] [float] NOT NULL,
	[stud_share] [float] NOT NULL,
	[stud_share_bal] [float] NOT NULL,
	[amount_due] [float] NOT NULL,
	[exam] [varchar](1) NOT NULL,
 CONSTRAINT [PK_212assessment_be] PRIMARY KEY CLUSTERED 
(
	[assess_be_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212assessment_cl]    Script Date: 3/18/2021 6:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212assessment_cl](
	[assess_cl_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[old_account] [float] NOT NULL,
	[fee_tuition] [float] NOT NULL,
	[fee_lab] [float] NOT NULL,
	[fee_reg] [float] NOT NULL,
	[fee_misc] [float] NOT NULL,
	[assess_total] [float] NOT NULL,
	[excess_payment] [float] NULL,
	[payment] [float] NOT NULL,
	[discount] [float] NOT NULL,
	[adjustment] [float] NOT NULL,
	[adjustment_credit] [float] NULL,
	[adjustment_debit] [float] NULL,
	[balance] [float] NOT NULL,
	[amount_due] [float] NOT NULL,
	[exam] [varchar](1) NOT NULL,
 CONSTRAINT [PK_212assessment_cl] PRIMARY KEY CLUSTERED 
(
	[assess_cl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212assessment_sh]    Script Date: 3/18/2021 6:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212assessment_sh](
	[assess_sh_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[old_account] [float] NOT NULL,
	[fee_tuition] [float] NOT NULL,
	[fee_lab] [float] NOT NULL,
	[fee_reg] [float] NOT NULL,
	[fee_misc_others] [float] NOT NULL,
	[fee_total] [float] NOT NULL,
	[total_due] [float] NOT NULL,
	[payment] [float] NOT NULL,
	[excess_payment] [float] NULL,
	[discount] [float] NOT NULL,
	[adjustment] [float] NOT NULL,
	[adjustment_credit] [float] NULL,
	[adjustment_debit] [float] NULL,
	[government_subsidy] [float] NULL,
	[balance] [float] NOT NULL,
	[stud_share] [float] NOT NULL,
	[stud_share_bal] [float] NOT NULL,
	[amount_due] [float] NOT NULL,
	[exam] [varchar](1) NOT NULL,
 CONSTRAINT [PK_212assessment_sh] PRIMARY KEY CLUSTERED 
(
	[assess_sh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212attachments]    Script Date: 3/18/2021 6:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212attachments](
	[attachment_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](11) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[type] [varchar](150) NOT NULL,
	[filename] [varchar](150) NOT NULL,
	[acknowledged] [smallint] NULL,
 CONSTRAINT [PK_212attachments] PRIMARY KEY CLUSTERED 
(
	[attachment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212contact_address]    Script Date: 3/18/2021 6:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[212core_be]    Script Date: 3/18/2021 6:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212core_be](
	[core_be_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[innovation_1] [varchar](3) NULL,
	[innovation_2] [varchar](3) NULL,
	[innovation_3] [varchar](3) NULL,
	[camaraderie] [varchar](3) NULL,
	[alignment] [varchar](3) NULL,
	[respect] [varchar](3) NULL,
	[excellence] [varchar](3) NULL,
	[exam] [varchar](1) NULL,
 CONSTRAINT [PK_212core_be] PRIMARY KEY CLUSTERED 
(
	[core_be_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212core_sh]    Script Date: 3/18/2021 6:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212core_sh](
	[core_sh_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[innovation_1] [varchar](3) NULL,
	[innovation_2] [varchar](3) NULL,
	[innovation_3] [varchar](3) NULL,
	[camaraderie] [varchar](3) NULL,
	[alignment] [varchar](3) NULL,
	[respect] [varchar](3) NULL,
	[excellence] [varchar](3) NULL,
	[exam] [varchar](1) NULL,
 CONSTRAINT [PK_212core_sh] PRIMARY KEY CLUSTERED 
(
	[core_sh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212exam_promissory]    Script Date: 3/18/2021 6:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212exam_promissory](
	[exam_promi_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[request_prelim] [smallint] NULL,
	[request_prelim_amount] [int] NULL,
	[request_prelim_date] [datetime] NULL,
	[prelim_promi_id] [int] NULL,
	[request_midterm] [smallint] NULL,
	[request_midterm_amount] [int] NULL,
	[request_midterm_date] [datetime] NULL,
	[midterm_promi_id] [int] NULL,
	[request_semi] [smallint] NULL,
	[request_semi_amount] [int] NULL,
	[request_semi_date] [datetime] NULL,
	[semi_promi_id] [int] NULL,
	[request_final] [smallint] NULL,
	[request_final_amount] [int] NULL,
	[request_final_date] [datetime] NULL,
	[final_promi_id] [int] NULL,
 CONSTRAINT [PK_212ExamPromissory] PRIMARY KEY CLUSTERED 
(
	[exam_promi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212family_info]    Script Date: 3/18/2021 6:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[212grades_be]    Script Date: 3/18/2021 6:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212grades_be](
	[grades_be_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](11) NOT NULL,
	[edp_code] [varchar](5) NOT NULL,
	[dte] [datetime] NOT NULL,
	[grade_1] [varchar](3) NULL,
	[grade_2] [varchar](3) NULL,
	[grade_3] [varchar](3) NULL,
	[grade_4] [varchar](3) NULL,
 CONSTRAINT [PK_212grades_be] PRIMARY KEY CLUSTERED 
(
	[grades_be_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212grades_cl]    Script Date: 3/18/2021 6:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212grades_cl](
	[grades_cl_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](11) NOT NULL,
	[edp_code] [varchar](5) NOT NULL,
	[dte] [datetime] NOT NULL,
	[grade_1] [varchar](3) NULL,
	[grade_2] [varchar](3) NULL,
 CONSTRAINT [PK_212grades_cl] PRIMARY KEY CLUSTERED 
(
	[grades_cl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212grades_sh]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212grades_sh](
	[grades_sh_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](11) NOT NULL,
	[edp_code] [varchar](5) NOT NULL,
	[dte] [datetime] NOT NULL,
	[grade_1] [varchar](3) NULL,
	[grade_2] [varchar](3) NULL,
 CONSTRAINT [PK_212grades_sh] PRIMARY KEY CLUSTERED 
(
	[grades_sh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212oenrp]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212oenrp](
	[oenrp_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[year_level] [smallint] NOT NULL,
	[course_code] [varchar](10) NOT NULL,
	[enrollment_date] [datetime] NULL,
	[units] [smallint] NOT NULL,
	[classification] [varchar](10) NOT NULL,
	[dept] [varchar](5) NOT NULL,
	[mdn] [varchar](2) NULL,
	[section] [varchar](10) NULL,
	[status] [smallint] NOT NULL,
	[request_overload] [smallint] NULL,
	[request_deblock] [smallint] NULL,
	[request_promissory] [smallint] NOT NULL,
	[promi_pay] [int] NOT NULL,
	[registered_on] [datetime] NULL,
	[submitted_on] [datetime] NULL,
	[approved_reg_registrar] [varchar](100) NULL,
	[approved_reg_registrar_on] [datetime] NULL,
	[disapproved_reg_registrar] [varchar](100) NULL,
	[disapproved_reg_registrar_on] [datetime] NULL,
	[approved_reg_dean] [varchar](100) NULL,
	[approved_reg_dean_on] [datetime] NULL,
	[disapproved_reg_dean] [varchar](100) NULL,
	[disapproved_reg_dean_on] [datetime] NULL,
	[approved_dean] [varchar](100) NULL,
	[approved_dean_on] [datetime] NULL,
	[disapproved_dean] [varchar](100) NULL,
	[disapproved_dean_on] [datetime] NULL,
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
/****** Object:  Table [dbo].[212ostsp]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212ostsp](
	[sts_id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[212promissory]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212promissory](
	[promi_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[promi_message] [varchar](1500) NOT NULL,
	[promi_date] [datetime] NOT NULL,
 CONSTRAINT [PK_212promissory] PRIMARY KEY CLUSTERED 
(
	[promi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212schedules]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[212schedules](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[edp_code] [varchar](5) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[internal_code] [varchar](10) NOT NULL,
	[sub_type] [varchar](5) NULL,
	[units] [smallint] NOT NULL,
	[time_start] [varchar](10) NOT NULL,
	[time_end] [varchar](10) NOT NULL,
	[mdn] [varchar](2) NOT NULL,
	[days] [varchar](10) NOT NULL,
	[m_time_start] [varchar](10) NOT NULL,
	[m_time_end] [varchar](10) NOT NULL,
	[m_days] [varchar](10) NOT NULL,
	[size] [int] NOT NULL,
	[pending_enrolled] [int] NULL,
	[official_enrolled] [int] NULL,
	[max_size] [int] NOT NULL,
	[instructor] [varchar](15) NULL,
	[course_code] [varchar](10) NULL,
	[section] [varchar](10) NULL,
	[room] [varchar](20) NOT NULL,
	[instructor_2] [varchar](15) NULL,
	[deployed] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
	[split_type] [varchar](10) NULL,
	[split_code] [varchar](10) NULL,
	[is_gened] [smallint] NULL,
 CONSTRAINT [PK_212schedules] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[212school_info]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[212student_info]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[classification] [varchar](5) NOT NULL,
	[dept] [varchar](10) NOT NULL,
 CONSTRAINT [PK_212student_info] PRIMARY KEY CLUSTERED 
(
	[stud_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assessment_be]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assessment_be](
	[assess_be_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[old_account] [float] NOT NULL,
	[fee_tuition] [float] NOT NULL,
	[fee_lab] [float] NOT NULL,
	[fee_reg] [float] NOT NULL,
	[fee_misc_others] [float] NOT NULL,
	[fee_total] [float] NOT NULL,
	[total_due] [float] NOT NULL,
	[payment] [float] NOT NULL,
	[discount] [float] NOT NULL,
	[adjustment] [float] NOT NULL,
	[balance] [float] NOT NULL,
	[stud_share] [float] NOT NULL,
	[stud_share_bal] [float] NOT NULL,
	[amount_due] [float] NOT NULL,
	[exam] [varchar](1) NOT NULL,
	[active_term] [varchar](5) NOT NULL,
 CONSTRAINT [PK_assessment_be] PRIMARY KEY CLUSTERED 
(
	[assess_be_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assessment_cl]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assessment_cl](
	[assess_cl_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[old_account] [float] NOT NULL,
	[fee_tuition] [float] NOT NULL,
	[fee_lab] [float] NOT NULL,
	[fee_reg] [float] NOT NULL,
	[fee_misc] [float] NOT NULL,
	[assess_total] [float] NOT NULL,
	[excess_payment] [float] NULL,
	[payment] [float] NOT NULL,
	[discount] [float] NOT NULL,
	[adjustment] [float] NOT NULL,
	[adjustment_credit] [float] NULL,
	[adjustment_debit] [float] NULL,
	[balance] [float] NOT NULL,
	[amount_due] [float] NOT NULL,
	[exam] [varchar](1) NOT NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_assessment_cl] PRIMARY KEY CLUSTERED 
(
	[assess_cl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assessment_sh]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assessment_sh](
	[assess_sh_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[old_account] [float] NOT NULL,
	[fee_tuition] [float] NOT NULL,
	[fee_lab] [float] NOT NULL,
	[fee_reg] [float] NOT NULL,
	[fee_misc_others] [float] NOT NULL,
	[fee_total] [float] NOT NULL,
	[total_due] [float] NOT NULL,
	[payment] [float] NOT NULL,
	[excess_payment] [float] NULL,
	[discount] [float] NOT NULL,
	[adjustment] [float] NOT NULL,
	[adjustment_credit] [float] NULL,
	[adjustment_debit] [float] NULL,
	[government_subsidy] [float] NULL,
	[balance] [float] NOT NULL,
	[stud_share] [float] NOT NULL,
	[stud_share_bal] [float] NOT NULL,
	[amount_due] [float] NOT NULL,
	[exam] [varchar](1) NOT NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_assessment_sh] PRIMARY KEY CLUSTERED 
(
	[assess_sh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attachments]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attachments](
	[attachment_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](11) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[type] [varchar](150) NOT NULL,
	[filename] [varchar](150) NOT NULL,
	[acknowledged] [smallint] NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_attachments] PRIMARY KEY CLUSTERED 
(
	[attachment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[config]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[config](
	[config_id] [int] IDENTITY(1,1) NOT NULL,
	[sequence] [int] NOT NULL,
	[id_year] [smallint] NOT NULL,
	[campus_id] [smallint] NOT NULL,
	[campus_lms] [varchar](10) NOT NULL,
	[prelim] [datetime] NULL,
	[midterm] [datetime] NULL,
	[semifinal] [datetime] NULL,
	[final] [datetime] NULL,
	[basic_start] [int] NOT NULL,
	[basic_end] [int] NOT NULL,
	[permit_cutoff] [int] NOT NULL,
	[grade1_due] [datetime] NULL,
	[grade2_due] [datetime] NULL,
	[active_term] [varchar](50) NULL,
 CONSTRAINT [PK_config] PRIMARY KEY CLUSTERED 
(
	[config_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact_address]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact_address](
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
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_contact_address] PRIMARY KEY CLUSTERED 
(
	[add_con_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[core_be]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[core_be](
	[core_be_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[innovation_1] [varchar](3) NULL,
	[innovation_2] [varchar](3) NULL,
	[innovation_3] [varchar](3) NULL,
	[camaraderie] [varchar](3) NULL,
	[alignment] [varchar](3) NULL,
	[respect] [varchar](3) NULL,
	[excellence] [varchar](3) NULL,
	[exam] [varchar](1) NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_core_be] PRIMARY KEY CLUSTERED 
(
	[core_be_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[core_sh]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[core_sh](
	[core_sh_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[innovation_1] [varchar](3) NULL,
	[innovation_2] [varchar](3) NULL,
	[innovation_3] [varchar](3) NULL,
	[camaraderie] [varchar](3) NULL,
	[alignment] [varchar](3) NULL,
	[respect] [varchar](3) NULL,
	[excellence] [varchar](3) NULL,
	[exam] [varchar](1) NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_core_sh] PRIMARY KEY CLUSTERED 
(
	[core_sh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course_list]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_list](
	[course_id] [smallint] IDENTITY(1,1) NOT NULL,
	[course_code] [varchar](10) NOT NULL,
	[course_description] [varchar](150) NOT NULL,
	[course_abbr] [varchar](10) NOT NULL,
	[course_year_limit] [smallint] NOT NULL,
	[course_department] [varchar](100) NOT NULL,
	[course_department_abbr] [varchar](10) NOT NULL,
	[department] [varchar](10) NOT NULL,
	[course_active] [smallint] NOT NULL,
	[enrollment_open] [smallint] NULL,
	[adjustment_start] [datetime] NULL,
	[adjustment_end] [datetime] NULL,
	[active_term] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exam_promissory]    Script Date: 3/18/2021 6:09:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exam_promissory](
	[exam_promi_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[request_prelim] [smallint] NULL,
	[request_prelim_amount] [int] NULL,
	[request_prelim_date] [datetime] NULL,
	[prelim_promi_id] [int] NULL,
	[request_midterm] [smallint] NULL,
	[request_midterm_amount] [int] NULL,
	[request_midterm_date] [datetime] NULL,
	[midterm_promi_id] [int] NULL,
	[request_semi] [smallint] NULL,
	[request_semi_amount] [int] NULL,
	[request_semi_date] [datetime] NULL,
	[semi_promi_id] [int] NULL,
	[request_final] [smallint] NULL,
	[request_final_amount] [int] NULL,
	[request_final_date] [datetime] NULL,
	[final_promi_id] [int] NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_ExamPromissory] PRIMARY KEY CLUSTERED 
(
	[exam_promi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[family_info]    Script Date: 3/18/2021 6:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[family_info](
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
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_family_info] PRIMARY KEY CLUSTERED 
(
	[family_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grade_evaluation]    Script Date: 3/18/2021 6:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grade_evaluation](
	[grade_eval_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[int_code] [varchar](10) NOT NULL,
	[midterm_grade] [varchar](3) NULL,
	[final_grade] [varchar](3) NULL,
	[term] [varchar](5) NOT NULL,
 CONSTRAINT [PK_grade_evaluation] PRIMARY KEY CLUSTERED 
(
	[grade_eval_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grades_be]    Script Date: 3/18/2021 6:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grades_be](
	[grades_be_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](11) NOT NULL,
	[edp_code] [varchar](5) NOT NULL,
	[dte] [datetime] NOT NULL,
	[grade_1] [varchar](3) NULL,
	[grade_2] [varchar](3) NULL,
	[grade_3] [varchar](3) NULL,
	[grade_4] [varchar](3) NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_grades_be] PRIMARY KEY CLUSTERED 
(
	[grades_be_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grades_cl]    Script Date: 3/18/2021 6:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grades_cl](
	[grades_cl_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](11) NOT NULL,
	[edp_code] [varchar](5) NOT NULL,
	[dte] [datetime] NOT NULL,
	[grade_1] [varchar](3) NULL,
	[grade_2] [varchar](3) NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_grades_cl] PRIMARY KEY CLUSTERED 
(
	[grades_cl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grades_sh]    Script Date: 3/18/2021 6:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grades_sh](
	[grades_sh_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](11) NOT NULL,
	[edp_code] [varchar](5) NOT NULL,
	[dte] [datetime] NOT NULL,
	[grade_1] [varchar](3) NULL,
	[grade_2] [varchar](3) NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_grades_sh] PRIMARY KEY CLUSTERED 
(
	[grades_sh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login_info]    Script Date: 3/18/2021 6:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login_info](
	[cinfo_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NULL,
	[last_name] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[mi] [varchar](1) NULL,
	[suffix] [varchar](5) NULL,
	[start_term] [varchar](5) NULL,
	[password] [varchar](200) NULL,
	[dept] [varchar](10) NULL,
	[course_code] [varchar](10) NULL,
	[year] [smallint] NULL,
	[sex] [varchar](50) NULL,
	[mobile_number] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[birthdate] [datetime] NULL,
	[facebook] [varchar](50) NULL,
	[is_verified] [smallint] NULL,
	[is_blocked] [smallint] NULL,
	[allowed_units] [smallint] NULL,
	[user_type] [varchar](20) NULL,
	[token] [varchar](6) NULL,
 CONSTRAINT [PK_login_info] PRIMARY KEY CLUSTERED 
(
	[cinfo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notification]    Script Date: 3/18/2021 6:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification](
	[notif_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[notif_read] [smallint] NOT NULL,
	[message] [varchar](500) NOT NULL,
	[dte] [datetime] NOT NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_212notification] PRIMARY KEY CLUSTERED 
(
	[notif_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oenrp]    Script Date: 3/18/2021 6:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oenrp](
	[oenrp_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[year_level] [smallint] NOT NULL,
	[course_code] [varchar](10) NOT NULL,
	[enrollment_date] [datetime] NULL,
	[units] [smallint] NOT NULL,
	[classification] [varchar](10) NOT NULL,
	[dept] [varchar](5) NOT NULL,
	[mdn] [varchar](2) NULL,
	[section] [varchar](10) NULL,
	[status] [smallint] NOT NULL,
	[request_overload] [smallint] NULL,
	[request_deblock] [smallint] NULL,
	[request_promissory] [smallint] NOT NULL,
	[promi_pay] [int] NOT NULL,
	[registered_on] [datetime] NULL,
	[submitted_on] [datetime] NULL,
	[approved_reg_registrar] [varchar](100) NULL,
	[approved_reg_registrar_on] [datetime] NULL,
	[disapproved_reg_registrar] [varchar](100) NULL,
	[disapproved_reg_registrar_on] [datetime] NULL,
	[approved_reg_dean] [varchar](100) NULL,
	[approved_reg_dean_on] [datetime] NULL,
	[disapproved_reg_dean] [varchar](100) NULL,
	[disapproved_reg_dean_on] [datetime] NULL,
	[approved_dean] [varchar](100) NULL,
	[approved_dean_on] [datetime] NULL,
	[disapproved_dean] [varchar](100) NULL,
	[disapproved_dean_on] [datetime] NULL,
	[adjustment_count] [smallint] NOT NULL,
	[adjustment_by] [varchar](100) NULL,
	[adjustment_on] [datetime] NULL,
	[approved_acctg] [varchar](100) NULL,
	[approved_acctg_on] [datetime] NULL,
	[needed_payment] [int] NULL,
	[approved_cashier] [varchar](100) NULL,
	[approved_cashier_on] [datetime] NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_oenrp] PRIMARY KEY CLUSTERED 
(
	[oenrp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ostsp]    Script Date: 3/18/2021 6:09:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ostsp](
	[sts_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[edp_code] [varchar](5) NOT NULL,
	[status] [smallint] NOT NULL,
	[remarks] [varchar](50) NULL,
	[adjusted_on] [datetime] NOT NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_ostsp] PRIMARY KEY CLUSTERED 
(
	[sts_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promissory]    Script Date: 3/18/2021 6:09:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promissory](
	[promi_id] [int] IDENTITY(1,1) NOT NULL,
	[stud_id] [varchar](8) NOT NULL,
	[promi_message] [varchar](1500) NOT NULL,
	[promi_date] [datetime] NOT NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_promissory] PRIMARY KEY CLUSTERED 
(
	[promi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedules]    Script Date: 3/18/2021 6:09:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedules](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[edp_code] [varchar](5) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[internal_code] [varchar](10) NOT NULL,
	[sub_type] [varchar](5) NULL,
	[units] [smallint] NOT NULL,
	[time_start] [varchar](10) NOT NULL,
	[time_end] [varchar](10) NOT NULL,
	[mdn] [varchar](2) NOT NULL,
	[days] [varchar](10) NOT NULL,
	[m_time_start] [varchar](10) NOT NULL,
	[m_time_end] [varchar](10) NOT NULL,
	[m_days] [varchar](10) NOT NULL,
	[size] [int] NOT NULL,
	[pending_enrolled] [int] NULL,
	[official_enrolled] [int] NULL,
	[max_size] [int] NOT NULL,
	[instructor] [varchar](15) NULL,
	[course_code] [varchar](10) NULL,
	[section] [varchar](10) NULL,
	[room] [varchar](20) NOT NULL,
	[instructor_2] [varchar](15) NULL,
	[deployed] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
	[split_type] [varchar](10) NULL,
	[split_code] [varchar](10) NULL,
	[is_gened] [smallint] NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_schedules] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[school_info]    Script Date: 3/18/2021 6:09:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[school_info](
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
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_school_info] PRIMARY KEY CLUSTERED 
(
	[school_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_info]    Script Date: 3/18/2021 6:09:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_info](
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
	[classification] [varchar](5) NOT NULL,
	[dept] [varchar](10) NOT NULL,
	[active_term] [varchar](5) NULL,
 CONSTRAINT [PK_student_info] PRIMARY KEY CLUSTERED 
(
	[stud_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject_info]    Script Date: 3/18/2021 6:09:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject_info](
	[sub_info_id] [int] IDENTITY(1,1) NOT NULL,
	[internal_code] [varchar](10) NOT NULL,
	[subject_name] [varchar](20) NOT NULL,
	[subject_type] [varchar](5) NULL,
	[descr_1] [varchar](250) NOT NULL,
	[descr_2] [varchar](250) NULL,
	[units] [smallint] NOT NULL,
 CONSTRAINT [PK_subject_info] PRIMARY KEY CLUSTERED 
(
	[sub_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_login]    Script Date: 3/18/2021 6:09:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_login](
	[tmp_login_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[token] [varchar](6) NOT NULL,
 CONSTRAINT [PK_tmp_login] PRIMARY KEY CLUSTERED 
(
	[tmp_login_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_old_account]  DEFAULT ((0)) FOR [old_account]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_fee_tuition]  DEFAULT ((0)) FOR [fee_tuition]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_fee_lab]  DEFAULT ((0)) FOR [fee_lab]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_fee_reg]  DEFAULT ((0)) FOR [fee_reg]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_fee_misc_others]  DEFAULT ((0)) FOR [fee_misc_others]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_fee_total]  DEFAULT ((0)) FOR [fee_total]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_total_due]  DEFAULT ((0)) FOR [total_due]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_payment]  DEFAULT ((0)) FOR [payment]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_discount]  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_adjustment]  DEFAULT ((0)) FOR [adjustment]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_balance]  DEFAULT ((0)) FOR [balance]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_stud_share]  DEFAULT ((0)) FOR [stud_share]
GO
ALTER TABLE [dbo].[212assessment_be] ADD  CONSTRAINT [DF_212assessment_be_amount_due]  DEFAULT ((0)) FOR [amount_due]
GO
ALTER TABLE [dbo].[212assessment_cl] ADD  CONSTRAINT [DF_Table_1_assess_total]  DEFAULT ((0)) FOR [fee_tuition]
GO
ALTER TABLE [dbo].[212assessment_cl] ADD  CONSTRAINT [DF_Table_1_old_balance]  DEFAULT ((0)) FOR [fee_lab]
GO
ALTER TABLE [dbo].[212assessment_cl] ADD  CONSTRAINT [DF_Table_1_payments]  DEFAULT ((0)) FOR [fee_reg]
GO
ALTER TABLE [dbo].[212assessment_cl] ADD  CONSTRAINT [DF_Table_1_adjustment]  DEFAULT ((0)) FOR [fee_misc]
GO
ALTER TABLE [dbo].[212assessment_cl] ADD  CONSTRAINT [DF_Table_1_discount]  DEFAULT ((0)) FOR [assess_total]
GO
ALTER TABLE [dbo].[212assessment_cl] ADD  CONSTRAINT [DF_212assessment_cl_payment]  DEFAULT ((0)) FOR [payment]
GO
ALTER TABLE [dbo].[212assessment_cl] ADD  CONSTRAINT [DF_212assessment_cl_discount]  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [dbo].[212assessment_cl] ADD  CONSTRAINT [DF_212assessment_cl_adjustment]  DEFAULT ((0)) FOR [adjustment]
GO
ALTER TABLE [dbo].[212assessment_cl] ADD  CONSTRAINT [DF_212assessment_cl_balance]  DEFAULT ((0)) FOR [balance]
GO
ALTER TABLE [dbo].[212assessment_cl] ADD  CONSTRAINT [DF_212assessment_cl_amount_due]  DEFAULT ((0)) FOR [amount_due]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_old_account]  DEFAULT ((0)) FOR [old_account]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_fee_tuition]  DEFAULT ((0)) FOR [fee_tuition]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_fee_lab]  DEFAULT ((0)) FOR [fee_lab]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_fee_reg]  DEFAULT ((0)) FOR [fee_reg]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_fee_misc_others]  DEFAULT ((0)) FOR [fee_misc_others]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_fee_total]  DEFAULT ((0)) FOR [fee_total]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_total_due]  DEFAULT ((0)) FOR [total_due]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_payment]  DEFAULT ((0)) FOR [payment]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_discount]  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_adjustment]  DEFAULT ((0)) FOR [adjustment]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_balance]  DEFAULT ((0)) FOR [balance]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_stud_share]  DEFAULT ((0)) FOR [stud_share]
GO
ALTER TABLE [dbo].[212assessment_sh] ADD  CONSTRAINT [DF_212assessment_sh_amount_due]  DEFAULT ((0)) FOR [amount_due]
GO
ALTER TABLE [dbo].[212oenrp] ADD  CONSTRAINT [DF_212oenrp_request_promissory]  DEFAULT ((0)) FOR [request_promissory]
GO
ALTER TABLE [dbo].[212oenrp] ADD  CONSTRAINT [DF_212oenrp_promi_pay]  DEFAULT ((0)) FOR [promi_pay]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_old_account]  DEFAULT ((0)) FOR [old_account]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_fee_tuition]  DEFAULT ((0)) FOR [fee_tuition]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_fee_lab]  DEFAULT ((0)) FOR [fee_lab]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_fee_reg]  DEFAULT ((0)) FOR [fee_reg]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_fee_misc_others]  DEFAULT ((0)) FOR [fee_misc_others]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_fee_total]  DEFAULT ((0)) FOR [fee_total]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_total_due]  DEFAULT ((0)) FOR [total_due]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_payment]  DEFAULT ((0)) FOR [payment]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_discount]  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_adjustment]  DEFAULT ((0)) FOR [adjustment]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_balance]  DEFAULT ((0)) FOR [balance]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_stud_share]  DEFAULT ((0)) FOR [stud_share]
GO
ALTER TABLE [dbo].[assessment_be] ADD  CONSTRAINT [DF_assessment_be_amount_due]  DEFAULT ((0)) FOR [amount_due]
GO
ALTER TABLE [dbo].[assessment_cl] ADD  CONSTRAINT [DF_assessment_cl_old_account]  DEFAULT ((0)) FOR [old_account]
GO
ALTER TABLE [dbo].[assessment_cl] ADD  CONSTRAINT [DF_assessment_cl_fee_tuition]  DEFAULT ((0)) FOR [fee_tuition]
GO
ALTER TABLE [dbo].[assessment_cl] ADD  CONSTRAINT [DF_assessment_cl_fee_lab]  DEFAULT ((0)) FOR [fee_lab]
GO
ALTER TABLE [dbo].[assessment_cl] ADD  CONSTRAINT [DF_assessment_cl_fee_reg]  DEFAULT ((0)) FOR [fee_reg]
GO
ALTER TABLE [dbo].[assessment_cl] ADD  CONSTRAINT [DF_assessment_cl_fee_misc]  DEFAULT ((0)) FOR [fee_misc]
GO
ALTER TABLE [dbo].[assessment_cl] ADD  CONSTRAINT [DF_assessment_cl_assess_total]  DEFAULT ((0)) FOR [assess_total]
GO
ALTER TABLE [dbo].[assessment_cl] ADD  CONSTRAINT [DF_assessment_cl_payment]  DEFAULT ((0)) FOR [payment]
GO
ALTER TABLE [dbo].[assessment_cl] ADD  CONSTRAINT [DF_assessment_cl_discount]  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [dbo].[assessment_cl] ADD  CONSTRAINT [DF_assessment_cl_adjustment]  DEFAULT ((0)) FOR [adjustment]
GO
ALTER TABLE [dbo].[assessment_cl] ADD  CONSTRAINT [DF_assessment_cl_balance]  DEFAULT ((0)) FOR [balance]
GO
ALTER TABLE [dbo].[assessment_cl] ADD  CONSTRAINT [DF_assessment_cl_amount_due]  DEFAULT ((0)) FOR [amount_due]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_old_account]  DEFAULT ((0)) FOR [old_account]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_fee_tuition]  DEFAULT ((0)) FOR [fee_tuition]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_fee_lab]  DEFAULT ((0)) FOR [fee_lab]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_fee_reg]  DEFAULT ((0)) FOR [fee_reg]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_fee_misc_others]  DEFAULT ((0)) FOR [fee_misc_others]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_fee_total]  DEFAULT ((0)) FOR [fee_total]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_total_due]  DEFAULT ((0)) FOR [total_due]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_payment]  DEFAULT ((0)) FOR [payment]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_discount]  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_adjustment]  DEFAULT ((0)) FOR [adjustment]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_balance]  DEFAULT ((0)) FOR [balance]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_stud_share]  DEFAULT ((0)) FOR [stud_share]
GO
ALTER TABLE [dbo].[assessment_sh] ADD  CONSTRAINT [DF_assessment_sh_amount_due]  DEFAULT ((0)) FOR [amount_due]
GO
ALTER TABLE [dbo].[oenrp] ADD  CONSTRAINT [DF_oenrp_request_promissory]  DEFAULT ((0)) FOR [request_promissory]
GO
ALTER TABLE [dbo].[oenrp] ADD  CONSTRAINT [DF_oenrp_promi_pay]  DEFAULT ((0)) FOR [promi_pay]
GO
ALTER TABLE [dbo].[subject_info] ADD  CONSTRAINT [DF_subject_info_untis]  DEFAULT ((0)) FOR [units]
GO
USE [master]
GO
ALTER DATABASE [UCOnlinePortal] SET  READ_WRITE 
GO
