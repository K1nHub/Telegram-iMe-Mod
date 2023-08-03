package com.microsoft.appcenter.crashes.ingestion.models;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.microsoft.appcenter.ingestion.models.LogWithProperties;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class HandledErrorLog extends LogWithProperties {
    private Exception exception;

    /* renamed from: id */
    private UUID f463id;

    @Override // com.microsoft.appcenter.ingestion.models.Log
    public String getType() {
        return "handledError";
    }

    public UUID getId() {
        return this.f463id;
    }

    public void setId(UUID id) {
        this.f463id = id;
    }

    public Exception getException() {
        return this.exception;
    }

    public void setException(Exception exception) {
        this.exception = exception;
    }

    @Override // com.microsoft.appcenter.ingestion.models.LogWithProperties, com.microsoft.appcenter.ingestion.models.AbstractLog, com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        super.read(object);
        setId(UUID.fromString(object.getString(TtmlNode.ATTR_ID)));
        if (object.has("exception")) {
            JSONObject jSONObject = object.getJSONObject("exception");
            Exception exception = new Exception();
            exception.read(jSONObject);
            setException(exception);
        }
    }

    @Override // com.microsoft.appcenter.ingestion.models.LogWithProperties, com.microsoft.appcenter.ingestion.models.AbstractLog, com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        super.write(writer);
        writer.key(TtmlNode.ATTR_ID).value(getId());
        if (getException() != null) {
            writer.key("exception").object();
            this.exception.write(writer);
            writer.endObject();
        }
    }

    @Override // com.microsoft.appcenter.ingestion.models.LogWithProperties, com.microsoft.appcenter.ingestion.models.AbstractLog
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o != null && HandledErrorLog.class == o.getClass() && super.equals(o)) {
            HandledErrorLog handledErrorLog = (HandledErrorLog) o;
            UUID uuid = this.f463id;
            if (uuid == null ? handledErrorLog.f463id == null : uuid.equals(handledErrorLog.f463id)) {
                Exception exception = this.exception;
                Exception exception2 = handledErrorLog.exception;
                return exception != null ? exception.equals(exception2) : exception2 == null;
            }
            return false;
        }
        return false;
    }

    @Override // com.microsoft.appcenter.ingestion.models.LogWithProperties, com.microsoft.appcenter.ingestion.models.AbstractLog
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        UUID uuid = this.f463id;
        int hashCode2 = (hashCode + (uuid != null ? uuid.hashCode() : 0)) * 31;
        Exception exception = this.exception;
        return hashCode2 + (exception != null ? exception.hashCode() : 0);
    }
}
