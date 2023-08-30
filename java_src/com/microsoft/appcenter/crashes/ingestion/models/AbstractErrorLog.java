package com.microsoft.appcenter.crashes.ingestion.models;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.microsoft.appcenter.ingestion.models.AbstractLog;
import com.microsoft.appcenter.ingestion.models.json.JSONDateUtils;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.Date;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public abstract class AbstractErrorLog extends AbstractLog {
    private Date appLaunchTimestamp;
    private String architecture;
    private Long errorThreadId;
    private String errorThreadName;
    private Boolean fatal;

    /* renamed from: id */
    private UUID f471id;
    private Integer parentProcessId;
    private String parentProcessName;
    private Integer processId;
    private String processName;

    public UUID getId() {
        return this.f471id;
    }

    public void setId(UUID id) {
        this.f471id = id;
    }

    public Integer getProcessId() {
        return this.processId;
    }

    public void setProcessId(Integer processId) {
        this.processId = processId;
    }

    public String getProcessName() {
        return this.processName;
    }

    public void setProcessName(String processName) {
        this.processName = processName;
    }

    public Integer getParentProcessId() {
        return this.parentProcessId;
    }

    public void setParentProcessId(Integer parentProcessId) {
        this.parentProcessId = parentProcessId;
    }

    public String getParentProcessName() {
        return this.parentProcessName;
    }

    public void setParentProcessName(String parentProcessName) {
        this.parentProcessName = parentProcessName;
    }

    public Long getErrorThreadId() {
        return this.errorThreadId;
    }

    public void setErrorThreadId(Long errorThreadId) {
        this.errorThreadId = errorThreadId;
    }

    public String getErrorThreadName() {
        return this.errorThreadName;
    }

    public void setErrorThreadName(String errorThreadName) {
        this.errorThreadName = errorThreadName;
    }

    public Boolean getFatal() {
        return this.fatal;
    }

    public void setFatal(Boolean fatal) {
        this.fatal = fatal;
    }

    public Date getAppLaunchTimestamp() {
        return this.appLaunchTimestamp;
    }

    public void setAppLaunchTimestamp(Date appLaunchTimestamp) {
        this.appLaunchTimestamp = appLaunchTimestamp;
    }

    public String getArchitecture() {
        return this.architecture;
    }

    public void setArchitecture(String architecture) {
        this.architecture = architecture;
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog, com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        super.read(object);
        setId(UUID.fromString(object.getString(TtmlNode.ATTR_ID)));
        setProcessId(JSONUtils.readInteger(object, "processId"));
        setProcessName(object.optString("processName", null));
        setParentProcessId(JSONUtils.readInteger(object, "parentProcessId"));
        setParentProcessName(object.optString("parentProcessName", null));
        setErrorThreadId(JSONUtils.readLong(object, "errorThreadId"));
        setErrorThreadName(object.optString("errorThreadName", null));
        setFatal(JSONUtils.readBoolean(object, "fatal"));
        setAppLaunchTimestamp(JSONDateUtils.toDate(object.getString("appLaunchTimestamp")));
        setArchitecture(object.optString("architecture", null));
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog, com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        super.write(writer);
        JSONUtils.write(writer, TtmlNode.ATTR_ID, getId());
        JSONUtils.write(writer, "processId", getProcessId());
        JSONUtils.write(writer, "processName", getProcessName());
        JSONUtils.write(writer, "parentProcessId", getParentProcessId());
        JSONUtils.write(writer, "parentProcessName", getParentProcessName());
        JSONUtils.write(writer, "errorThreadId", getErrorThreadId());
        JSONUtils.write(writer, "errorThreadName", getErrorThreadName());
        JSONUtils.write(writer, "fatal", getFatal());
        JSONUtils.write(writer, "appLaunchTimestamp", JSONDateUtils.toString(getAppLaunchTimestamp()));
        JSONUtils.write(writer, "architecture", getArchitecture());
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o != null && getClass() == o.getClass() && super.equals(o)) {
            AbstractErrorLog abstractErrorLog = (AbstractErrorLog) o;
            UUID uuid = this.f471id;
            if (uuid == null ? abstractErrorLog.f471id == null : uuid.equals(abstractErrorLog.f471id)) {
                Integer num = this.processId;
                if (num == null ? abstractErrorLog.processId == null : num.equals(abstractErrorLog.processId)) {
                    String str = this.processName;
                    if (str == null ? abstractErrorLog.processName == null : str.equals(abstractErrorLog.processName)) {
                        Integer num2 = this.parentProcessId;
                        if (num2 == null ? abstractErrorLog.parentProcessId == null : num2.equals(abstractErrorLog.parentProcessId)) {
                            String str2 = this.parentProcessName;
                            if (str2 == null ? abstractErrorLog.parentProcessName == null : str2.equals(abstractErrorLog.parentProcessName)) {
                                Long l = this.errorThreadId;
                                if (l == null ? abstractErrorLog.errorThreadId == null : l.equals(abstractErrorLog.errorThreadId)) {
                                    String str3 = this.errorThreadName;
                                    if (str3 == null ? abstractErrorLog.errorThreadName == null : str3.equals(abstractErrorLog.errorThreadName)) {
                                        Boolean bool = this.fatal;
                                        if (bool == null ? abstractErrorLog.fatal == null : bool.equals(abstractErrorLog.fatal)) {
                                            Date date = this.appLaunchTimestamp;
                                            if (date == null ? abstractErrorLog.appLaunchTimestamp == null : date.equals(abstractErrorLog.appLaunchTimestamp)) {
                                                String str4 = this.architecture;
                                                String str5 = abstractErrorLog.architecture;
                                                return str4 != null ? str4.equals(str5) : str5 == null;
                                            }
                                            return false;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        UUID uuid = this.f471id;
        int hashCode2 = (hashCode + (uuid != null ? uuid.hashCode() : 0)) * 31;
        Integer num = this.processId;
        int hashCode3 = (hashCode2 + (num != null ? num.hashCode() : 0)) * 31;
        String str = this.processName;
        int hashCode4 = (hashCode3 + (str != null ? str.hashCode() : 0)) * 31;
        Integer num2 = this.parentProcessId;
        int hashCode5 = (hashCode4 + (num2 != null ? num2.hashCode() : 0)) * 31;
        String str2 = this.parentProcessName;
        int hashCode6 = (hashCode5 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Long l = this.errorThreadId;
        int hashCode7 = (hashCode6 + (l != null ? l.hashCode() : 0)) * 31;
        String str3 = this.errorThreadName;
        int hashCode8 = (hashCode7 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Boolean bool = this.fatal;
        int hashCode9 = (hashCode8 + (bool != null ? bool.hashCode() : 0)) * 31;
        Date date = this.appLaunchTimestamp;
        int hashCode10 = (hashCode9 + (date != null ? date.hashCode() : 0)) * 31;
        String str4 = this.architecture;
        return hashCode10 + (str4 != null ? str4.hashCode() : 0);
    }
}
