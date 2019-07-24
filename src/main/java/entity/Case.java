package entity;

/**
 * 诊断实体类
 */

public class Case {

    private Integer id;

    private Integer case_code;

    private String zhushu;
    private String xianbingshi;
    private String xianbingzhiliao;
    private String jiwangshi;
    private String guominshi;
    private String tigejiancha;
    private String jianchajianyi;
    private String warning;
    private Integer registerId;
    private String result;


    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCase_code() {
        return case_code;
    }

    public void setCase_code(Integer case_code) {
        this.case_code = case_code;
    }

    public String getZhushu() {
        return zhushu;
    }

    public void setZhushu(String zhushu) {
        this.zhushu = zhushu;
    }

    public String getXianbingshi() {
        return xianbingshi;
    }

    public void setXianbingshi(String xianbingshi) {
        this.xianbingshi = xianbingshi;
    }

    public String getXianbingzhiliao() {
        return xianbingzhiliao;
    }

    public void setXianbingzhiliao(String xianbingzhiliao) {
        this.xianbingzhiliao = xianbingzhiliao;
    }

    public String getJiwangshi() {
        return jiwangshi;
    }

    public void setJiwangshi(String jiwangshi) {
        this.jiwangshi = jiwangshi;
    }

    public String getGuominshi() {
        return guominshi;
    }

    public void setGuominshi(String guominshi) {
        this.guominshi = guominshi;
    }

    public String getTigejiancha() {
        return tigejiancha;
    }

    public void setTigejiancha(String tigejiancha) {
        this.tigejiancha = tigejiancha;
    }

    public String getJianchajianyi() {
        return jianchajianyi;
    }

    public void setJianchajianyi(String jianchajianyi) {
        this.jianchajianyi = jianchajianyi;
    }

    public String getWarning() {
        return warning;
    }

    public void setWarning(String warning) {
        this.warning = warning;
    }

    public Integer getRegisterId() {
        return registerId;
    }

    public void setRegisterId(Integer registerId) {
        this.registerId = registerId;
    }
}
