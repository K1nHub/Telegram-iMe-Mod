package com.microsoft.appcenter.crashes.ingestion.models;

import android.util.Base64;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.microsoft.appcenter.ingestion.models.AbstractLog;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class ErrorAttachmentLog extends AbstractLog {
    private String contentType;
    private byte[] data;
    private UUID errorId;
    private String fileName;

    /* renamed from: id */
    private UUID f459id;

    @Override // com.microsoft.appcenter.ingestion.models.Log
    public String getType() {
        return "errorAttachment";
    }

    static {
        Charset.forName("UTF-8");
    }

    public static ErrorAttachmentLog attachmentWithBinary(byte[] data, String fileName, String contentType) {
        ErrorAttachmentLog errorAttachmentLog = new ErrorAttachmentLog();
        errorAttachmentLog.setData(data);
        errorAttachmentLog.setFileName(fileName);
        errorAttachmentLog.setContentType(contentType);
        return errorAttachmentLog;
    }

    public UUID getId() {
        return this.f459id;
    }

    public void setId(UUID id) {
        this.f459id = id;
    }

    public UUID getErrorId() {
        return this.errorId;
    }

    public void setErrorId(UUID errorId) {
        this.errorId = errorId;
    }

    public String getContentType() {
        return this.contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] data) {
        this.data = data;
    }

    public boolean isValid() {
        return (getId() == null || getErrorId() == null || getContentType() == null || getData() == null) ? false : true;
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog, com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        super.read(object);
        setId(UUID.fromString(object.getString(TtmlNode.ATTR_ID)));
        setErrorId(UUID.fromString(object.getString("errorId")));
        setContentType(object.getString("contentType"));
        setFileName(object.optString("fileName", null));
        try {
            setData(Base64.decode(object.getString("data"), 0));
        } catch (IllegalArgumentException e) {
            throw new JSONException(e.getMessage());
        }
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog, com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        super.write(writer);
        JSONUtils.write(writer, TtmlNode.ATTR_ID, getId());
        JSONUtils.write(writer, "errorId", getErrorId());
        JSONUtils.write(writer, "contentType", getContentType());
        JSONUtils.write(writer, "fileName", getFileName());
        JSONUtils.write(writer, "data", Base64.encodeToString(getData(), 2));
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o != null && ErrorAttachmentLog.class == o.getClass() && super.equals(o)) {
            ErrorAttachmentLog errorAttachmentLog = (ErrorAttachmentLog) o;
            UUID uuid = this.f459id;
            if (uuid == null ? errorAttachmentLog.f459id == null : uuid.equals(errorAttachmentLog.f459id)) {
                UUID uuid2 = this.errorId;
                if (uuid2 == null ? errorAttachmentLog.errorId == null : uuid2.equals(errorAttachmentLog.errorId)) {
                    String str = this.contentType;
                    if (str == null ? errorAttachmentLog.contentType == null : str.equals(errorAttachmentLog.contentType)) {
                        String str2 = this.fileName;
                        if (str2 == null ? errorAttachmentLog.fileName == null : str2.equals(errorAttachmentLog.fileName)) {
                            return Arrays.equals(this.data, errorAttachmentLog.data);
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
        UUID uuid = this.f459id;
        int hashCode2 = (hashCode + (uuid != null ? uuid.hashCode() : 0)) * 31;
        UUID uuid2 = this.errorId;
        int hashCode3 = (hashCode2 + (uuid2 != null ? uuid2.hashCode() : 0)) * 31;
        String str = this.contentType;
        int hashCode4 = (hashCode3 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.fileName;
        return ((hashCode4 + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.data);
    }
}
