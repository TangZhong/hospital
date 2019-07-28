package entity;

import java.util.Date;

public class Register {

    private Integer id;

    private Integer caseCode;

    private Date diagnoseTime;

    private String diagnosePeriod;

    private String status;

    private String clinicId;

    private String doctorId;

    private String registerCategoryId;

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

    public String getClinicId() {
        return clinicId;
    }

    public void setClinicId(String clinicId) {
        this.clinicId = clinicId;
    }

    public String getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(String doctorId) {
        this.doctorId = doctorId;
    }

    public String getRegisterCategoryId() {
        return registerCategoryId;
    }

    public void setRegisterCategoryId(String registerCategoryId) {
        this.registerCategoryId = registerCategoryId;
    }
}
