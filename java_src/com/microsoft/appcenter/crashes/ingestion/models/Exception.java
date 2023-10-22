package com.microsoft.appcenter.crashes.ingestion.models;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.microsoft.appcenter.crashes.ingestion.models.json.ExceptionFactory;
import com.microsoft.appcenter.crashes.ingestion.models.json.StackFrameFactory;
import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class Exception implements Model {
    private List<StackFrame> frames;
    private List<Exception> innerExceptions;
    private String message;
    private String minidumpFilePath;
    private String stackTrace;
    private String type;
    private String wrapperSdkName;

    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getStackTrace() {
        return this.stackTrace;
    }

    public void setStackTrace(String stackTrace) {
        this.stackTrace = stackTrace;
    }

    public List<StackFrame> getFrames() {
        return this.frames;
    }

    public void setFrames(List<StackFrame> frames) {
        this.frames = frames;
    }

    public List<Exception> getInnerExceptions() {
        return this.innerExceptions;
    }

    public void setInnerExceptions(List<Exception> innerExceptions) {
        this.innerExceptions = innerExceptions;
    }

    public String getWrapperSdkName() {
        return this.wrapperSdkName;
    }

    public void setWrapperSdkName(String wrapperSdkName) {
        this.wrapperSdkName = wrapperSdkName;
    }

    public String getMinidumpFilePath() {
        return this.minidumpFilePath;
    }

    public void setMinidumpFilePath(String minidumpFilePath) {
        this.minidumpFilePath = minidumpFilePath;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        setType(object.optString(SessionDescription.ATTR_TYPE, null));
        setMessage(object.optString("message", null));
        setStackTrace(object.optString("stackTrace", null));
        setFrames(JSONUtils.readArray(object, "frames", StackFrameFactory.getInstance()));
        setInnerExceptions(JSONUtils.readArray(object, "innerExceptions", ExceptionFactory.getInstance()));
        setWrapperSdkName(object.optString("wrapperSdkName", null));
        setMinidumpFilePath(object.optString("minidumpFilePath", null));
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.write(writer, SessionDescription.ATTR_TYPE, getType());
        JSONUtils.write(writer, "message", getMessage());
        JSONUtils.write(writer, "stackTrace", getStackTrace());
        JSONUtils.writeArray(writer, "frames", getFrames());
        JSONUtils.writeArray(writer, "innerExceptions", getInnerExceptions());
        JSONUtils.write(writer, "wrapperSdkName", getWrapperSdkName());
        JSONUtils.write(writer, "minidumpFilePath", getMinidumpFilePath());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || Exception.class != o.getClass()) {
            return false;
        }
        Exception exception = (Exception) o;
        String str = this.type;
        if (str == null ? exception.type == null : str.equals(exception.type)) {
            String str2 = this.message;
            if (str2 == null ? exception.message == null : str2.equals(exception.message)) {
                String str3 = this.stackTrace;
                if (str3 == null ? exception.stackTrace == null : str3.equals(exception.stackTrace)) {
                    List<StackFrame> list = this.frames;
                    if (list == null ? exception.frames == null : list.equals(exception.frames)) {
                        List<Exception> list2 = this.innerExceptions;
                        if (list2 == null ? exception.innerExceptions == null : list2.equals(exception.innerExceptions)) {
                            String str4 = this.wrapperSdkName;
                            if (str4 == null ? exception.wrapperSdkName == null : str4.equals(exception.wrapperSdkName)) {
                                String str5 = this.minidumpFilePath;
                                String str6 = exception.minidumpFilePath;
                                return str5 != null ? str5.equals(str6) : str6 == null;
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

    public int hashCode() {
        String str = this.type;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.message;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.stackTrace;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        List<StackFrame> list = this.frames;
        int hashCode4 = (hashCode3 + (list != null ? list.hashCode() : 0)) * 31;
        List<Exception> list2 = this.innerExceptions;
        int hashCode5 = (hashCode4 + (list2 != null ? list2.hashCode() : 0)) * 31;
        String str4 = this.wrapperSdkName;
        int hashCode6 = (hashCode5 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.minidumpFilePath;
        return hashCode6 + (str5 != null ? str5.hashCode() : 0);
    }
}
