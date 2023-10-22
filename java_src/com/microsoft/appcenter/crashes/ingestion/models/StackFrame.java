package com.microsoft.appcenter.crashes.ingestion.models;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class StackFrame implements Model {
    private String className;
    private String fileName;
    private Integer lineNumber;
    private String methodName;

    public String getClassName() {
        return this.className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getMethodName() {
        return this.methodName;
    }

    public void setMethodName(String methodName) {
        this.methodName = methodName;
    }

    public Integer getLineNumber() {
        return this.lineNumber;
    }

    public void setLineNumber(Integer lineNumber) {
        this.lineNumber = lineNumber;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        setClassName(object.optString("className", null));
        setMethodName(object.optString("methodName", null));
        setLineNumber(JSONUtils.readInteger(object, "lineNumber"));
        setFileName(object.optString("fileName", null));
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.write(writer, "className", getClassName());
        JSONUtils.write(writer, "methodName", getMethodName());
        JSONUtils.write(writer, "lineNumber", getLineNumber());
        JSONUtils.write(writer, "fileName", getFileName());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || StackFrame.class != o.getClass()) {
            return false;
        }
        StackFrame stackFrame = (StackFrame) o;
        String str = this.className;
        if (str == null ? stackFrame.className == null : str.equals(stackFrame.className)) {
            String str2 = this.methodName;
            if (str2 == null ? stackFrame.methodName == null : str2.equals(stackFrame.methodName)) {
                Integer num = this.lineNumber;
                if (num == null ? stackFrame.lineNumber == null : num.equals(stackFrame.lineNumber)) {
                    String str3 = this.fileName;
                    String str4 = stackFrame.fileName;
                    return str3 != null ? str3.equals(str4) : str4 == null;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.className;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.methodName;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer num = this.lineNumber;
        int hashCode3 = (hashCode2 + (num != null ? num.hashCode() : 0)) * 31;
        String str3 = this.fileName;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }
}
