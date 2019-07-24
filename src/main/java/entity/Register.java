package entity;

import java.util.Date;

public class Register {

    private Integer id;

    private Integer caseCode;

    private Date diagnoseTime;

    private String diagnosePeriod;

    private String status;

    private Integer clinicId;

    private Integer doctorId;

    private Integer registerCategoryId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCaseCode() {
        return caseCode;
    }

    public void setCaseCode(Integer caseCode) {
        this.caseCode = caseCode;
    }

    public Date getDiagnoseTime() {
        return diagnoseTime;
    }

    public void setDiagnoseTime(Date diagnoseTime) {
        this.diagnoseTime = diagnoseTime;
    }

    public String getDiagnosePeriod() {
        return diagnosePeriod;
    }

    public void setDiagnosePeriod(String diagnosePeriod) {
        this.diagnosePeriod = diagnosePeriod;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getClinicId() {
        return clinicId;
    }

    public void setClinicId(Integer clinicId) {
        this.clinicId = clinicId;
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public Integer getRegisterCategoryId() {
        return registerCategoryId;
    }

    public void setRegisterCategoryId(Integer registerCategoryId) {
        this.registerCategoryId = registerCategoryId;
    }
}
