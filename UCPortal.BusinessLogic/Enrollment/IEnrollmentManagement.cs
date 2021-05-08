﻿using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using UCPortal.DTO.Request;
using UCPortal.DTO.Response;

namespace UCPortal.BusinessLogic.Enrollment
{
    public interface IEnrollmentManagement
    {
        RegistrationResponse RegisterStudent(RegistrationRequest registrationRequest);
        SaveEnrollmentResponse SaveEnrollmentData(SaveEnrollmentRequest saveEnrollRequest);
        GetDepartmentResponse GetDepartment(GetDepartmentRequest getDepartmentRequest);
        GetCoursesResponse GetCourses(GetCoursesRequest getCollegeRequest);
        ViewScheduleResponse ViewSchedules(ViewScheduleRequest viewScheduleRequest);
        GetStudyLoadResponse GetStudyLoad(GetStudyLoadRequest getRequest);
        GetStudentStatusResponse GetStudentStatus(GetStudentStatusRequest getStudentStatusRequest);
        ViewStudentPerStatusResponse ViewStudentStatus(ViewStudentPerStatusRequest viewStudentPerStatusRequest);
        ViewStudentRegistrationResponse ViewRegistration(ViewStudentRegistrationRequest viewStudentRegistrationRequest);
        SetApproveOrDisapprovedResponse SetApproveOrDisapprove(SetApproveOrDisapprovedRequest setApproveOrDisapprovedRequest);
        GetActiveSectionsResponse GetActiveSections(GetActiveSectionsRequest getActiveSectionsRequest);
        StudentReqResponse GetStudentRequest(StudentReqRequest studentReqRequest);
        ApplyReqResponse ApplyRequest(ApplyReqRequest applyReqRequest);
        ApproveReqResponse ApproveRequest(ApproveReqRequest approveReqRequest);
        GetSectionResponse GetSection(GetSectionRequest getSectionRequest);
        ChangeSchedStatusResponse ChangeSchedStatus(ChangeSchedStatusRequest changeSchedStatusRequest);
        CancelEnrollmentResponse CancelEnrollment(CancelEnrollmentRequest cancelEnrollmentRequest);
        GetStatusCountResponse GetStatusCount(GetStatusCountRequest getStatusCountRequest);
        SavePaymentResponse SavePayments(SavePaymentRequest savePaymentsRequest);
        ViewClasslistResponse ViewClasslist(ViewClasslistRequest viewClasslistRequest);
        GetEnrollmentStatusResponse GetEnrollmentStatus(GetEnrollmentStatusRequest getEnrollmentStatusRequest);
        UpdateStudentInfoResponse UpdateStudentInfo(UpdateStudentInfoRequest updateStudentInfoRequest);
        ViewStudentEvaluationResponse ViewEvaluation(ViewStudentEvaluationRequest viewStudentEvaluationRequest);
        ViewStudentEvaluationBEResponse ViewEvaluationBE(ViewStudentEvaluationBERequest viewStudentEvaluationBERequest);
        ViewOldStudentInfoResponse ViewOldStudentInfo(ViewOldStudentInfoRequest viewOldStudentInfoRequest);
        SelectSubjectInfoResponse SelectSubject(SelectSubjectInfoRequest selectSubjectInfoRequest);
        UpdateSubjectResponse UpdateSubject(UpdateSubjectRequest updateSubjectRequest);
        RemoveDuplicateOtspResponse RemoveDuplicateOstsp(RemoveDuplicateOstspRequest removeDuplicateOstspRequest);
        ViewClasslistPerSectionResponse ViewClasslistPerSection(ViewClasslistPerSectionRequest viewClasslistPerSectionRequest);
        UpdateStudentStatusResponse UpdateStudentStatus(UpdateStudentStatusRequest updateStudentStatusRequest);
        ManualEnrollmentResponse ManualEnrollment(ManualEnrollmentRequest manualEnrollmentRequest);
        RequestPromissoryResponse RequestPromissory(RequestPromissoryRequest requestPromissoryRequest);
        GetPromissoryListResponse GetPromissoryList(GetPromissoryListRequest getPromissoryListRequest);
        CorrectTotalUnitsResponse CorrectTotalUnits(CorrectTotalUnitsRequest correctTotalUnitsRequest);
        AddNotificationResponse AddNotification(AddNotificationRequest addNotificationRequest);
        UpdateInfoResponse GetInfoUpdate(UpdateInfoRequest updateInfoRequest);
        UpdateInforResponse UpdateInfor(UpdateInforRequest updateInfor);
        SetClosedSubjectResponse SetClosed(SetClosedSubjectRequest setClosedSubjectRequest);
        GetTeachersListResponse GetTeachersList(GetTeachersListRequest getTeachersListRequest);
        SaveTeachersLoadResponse SaveTeachersLoad(SaveTeachersLoadRequest saveTeachersLoadRequest);
        GetTeachersLoadResponse GetTeachersLoad(GetTeachersLoadRequest getTeachersLoadRequest);
        SaveAdjustmentResponse SaveAdjustment(SaveAdjustmentRequest saveAdjustmentRequest);
        GetAdjustmentListResponse GetAdjustmentlist(GetAdjustmentListRequest getAdjustmentListRequest);
        GetAdjustmentDetailResponse GetAdjustmentDetail(GetAdjustmentDetailRequest getAdjustmentDetailRequest);
        ApproveAdjustmentResponse ApproveAdjustment(ApproveAdjustmentRequest approveAdjustmentRequest);
        ActivateAdjustmentResponse ActivateAdjustment(ActivateAdjustmentRequest activateAdjustmentRequest);
        GetCoursesOpenResponse GetCoursesOpen(GetCoursesOpenRequest getCoursesOpenRequest);
        TransferSectionResponse TransferSection(TransferSectionRequest transferSectionRequest);
        CorrectLabAndLecResponse CorrectLabAndLec(CorrectLecAndLabRequest correctLecAndLabRequest);
        SendNotificationForDissolvedResponse SendNotificationDissolved(SendNotificationRequest sendNotificationRequest);
        UserLMSReportResponse CreateLMSUserReport(UserLMSReportRequest userLMSReportRequest);
        CourseLMSReportResponse CreateLMSCourseReport(CourseLMSReportRequest courseLMSReportRequest);
        EnrolledLMSReportResponse CreateLMSEnrolledReport(EnrolledLMSReportRequest enrolledLMSReportRequest);
        TeachersLMSReportResponse CreateTeachersLoadReport(CreateTeachersLoadReportRequest createTeachersLoadReportRequest);
        GetSHSAssessmentResponse GetSHSAssessment(GetSHSAssessmentRequest getSHSAssessmentRequest);
        GetCLAssessmentResponse GetCLAssessment(GetCLAssessmentRequest getCLAssessmentRequest);
        GetBEAssessmentResponse GetBEssessment(GetBEAssessmentRequest getBEAssessmentRequest);
        GetBasicEdMonthResponse GetBasicEdMonth(GetBasicEdMonthRequest getBasicEdMonthRequest);
        GetStudentBalancePerCategoryResponse GetStudentBalancePerCategory(GetStudentBalancePerCategoryRequest getStudentBalancePerCategoryRequest);
        ViewPermitListResponse ViewPermitList(ViewPermitListRequest viewPermitListRequest);
        GetPaymentResponse GetPayments(GetPaymentRequest getPaymentRequest);
        RequestExamPromiResponse RequestExamPromi(RequestExamPromiRequest requestExamPromiRequest);
        GetExamPromissoryListResponse GetExamPromisorryList(GetExamPromisorryListRequest getExamPromisorryListRequest);
        GetStudentPaymentListResponse GetStudentPaymentList(GetStudentPaymentListRequest getStudentPaymentListRequest);
        AcknowledgePaymentResponse AcknowledgePayment(AcknowledgePaymentRequest acknowledgePaymentRequest);
        UploadGradesResponse UploadGrades(UploadGradesRequest uploadGradesRequest);
        UploadCoreValuesResponse UploadCoreValues(UploadCoreValuesRequest uploadCoreValuesRequest);
        GradeReportResponse GradeReport(GradeReportRequest gradeReportRequest);
        ViewGradesResponse ViewGrades(ViewGradesRequest viewGradesRequest);
        ActiveTermResponse GetActiveTerm();
        AssignSectionResponse AssignSectionAdviser(AssignSectionRequest assignSectionRequest);
        ViewAdviserResponse ViewAdviser(ViewAdviserRequest viewAdviserRequest);
        TransferGradeResponse TransferGrade(TransferGradeRequest transferGradeRequest);
        ViewTeachersPerDepartmentResponse ViewTeachersPerDept(ViewTeachersPerDepartmentRequest viewTeachersPerDepartmentRequest);
        GetCurriculumResponse GetCurriculum(GetCurriculumRequest getCurriculumRequest);
        StudentSubjectResponse RequestSubject(StudentSubjectRequest requestSubject);
        GetSubjectReqResponse GetRequestSubject(GetSubjectReqRequest getRequest);
        GetStudentReqResponse GetStudentSubjectRequest(GetStudentReqRequest getRequest);
        AddStudentReqResponse AddSubjectRequest(AddStudentReqRequest getRequest);
        CancelSubjectReqResponse CancelSubjectRequest(CancelSubjectReqRequest getRequest);
        GetAllCurriculumResponse GetAllCurriculum();
        GetCourseInfoResponse GetCourseInfo(GetCourseInfoRequest getRequest);
        AddCurriculumResponse AddCurriculum(AddCurriculumRequest getRequest);
        CloseCurriculumReponse CloseCurriculum(CloseCurriculumRequest getRequest);
        GetSubjectInfoResponse GetSubjectInfo(GetSubjectInfoRequest getRequest);
        RemoveRequisiteResponse RemovePrerequisite(RemoveRequisiteRequest getRequest);
        SaveRequisiteResponse SavePrerequisite(SaveRequisiteRequest savePrerequisiteRequest);
        GetEquivalenceResponse GetEquivalence(GetEquivalenceRequest getEquivalenceRequest);
        SearchSubjectResponse SearchSubject(SearchSubjectRequest searchSubjectRequest);
        AddEquivalenceResponse AddEquivalence(AddEquivalenceRequest addEquivalenceRequest);
        RemoveEquivalenceResponse RemoveEquivalence(RemoveEquivalenceRequest removeEquivalenceRequest);
        GetSubjectEquivalenceResponse GetSubjectEquivalence(GetSubjectEquivalenceRequest equivalenceRequest);
        ViewStudentDeanEvaluationResponse ViewStudentEvaluation(ViewStudentDeanEvaluationRequest viewStudentDeanEvaluationRequest);
        GetStudentListResponse GetStudentList(GetStudentListRequest getRequest);
        UpdateRequestScheduleStatusResponse UpdateRequestStatus(UpdateRequestScheduleStatusRequest getRequest);
        GetStudentGradesResponse GetStudentGrades(GetStudentGradesRequest getStudentGrades);
        SetGradeEvaluationResponse SetGradeEvaluation(SetGradeEvaluationRequest setGradeEvaluation);
        SetStatusEvaluationResponse SetStatusEvaluation(SetStatusEvaluationRequest setStatusEvaluation);
    }
}
