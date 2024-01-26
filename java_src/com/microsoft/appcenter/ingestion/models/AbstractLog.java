package com.microsoft.appcenter.ingestion.models;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.microsoft.appcenter.ingestion.models.json.JSONDateUtils;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public abstract class AbstractLog implements Log {
    private Device device;
    private String distributionGroupId;
    private UUID sid;
    private Object tag;
    private Date timestamp;
    private final Set<String> transmissionTargetTokens = new LinkedHashSet();
    private String userId;

    @Override // com.microsoft.appcenter.ingestion.models.Log
    public Date getTimestamp() {
        return this.timestamp;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Log
    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Log
    public UUID getSid() {
        return this.sid;
    }

    public void setSid(UUID sid) {
        this.sid = sid;
    }

    public String getDistributionGroupId() {
        return this.distributionGroupId;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Log
    public void setDistributionGroupId(String distributionGroupId) {
        this.distributionGroupId = distributionGroupId;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Log
    public Device getDevice() {
        return this.device;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Log
    public void setDevice(Device device) {
        this.device = device;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Log
    public synchronized void addTransmissionTarget(String transmissionTargetToken) {
        this.transmissionTargetTokens.add(transmissionTargetToken);
    }

    @Override // com.microsoft.appcenter.ingestion.models.Log
    public synchronized Set<String> getTransmissionTargetTokens() {
        return Collections.unmodifiableSet(this.transmissionTargetTokens);
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.write(writer, SessionDescription.ATTR_TYPE, getType());
        writer.key("timestamp").value(JSONDateUtils.toString(getTimestamp()));
        JSONUtils.write(writer, "sid", getSid());
        JSONUtils.write(writer, "distributionGroupId", getDistributionGroupId());
        JSONUtils.write(writer, "userId", getUserId());
        if (getDevice() != null) {
            writer.key("device").object();
            getDevice().write(writer);
            writer.endObject();
        }
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        if (!object.getString(SessionDescription.ATTR_TYPE).equals(getType())) {
            throw new JSONException("Invalid type");
        }
        setTimestamp(JSONDateUtils.toDate(object.getString("timestamp")));
        if (object.has("sid")) {
            setSid(UUID.fromString(object.getString("sid")));
        }
        setDistributionGroupId(object.optString("distributionGroupId", null));
        setUserId(object.optString("userId", null));
        if (object.has("device")) {
            Device device = new Device();
            device.read(object.getJSONObject("device"));
            setDevice(device);
        }
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        AbstractLog abstractLog = (AbstractLog) o;
        if (this.transmissionTargetTokens.equals(abstractLog.transmissionTargetTokens)) {
            Date date = this.timestamp;
            if (date == null ? abstractLog.timestamp == null : date.equals(abstractLog.timestamp)) {
                UUID uuid = this.sid;
                if (uuid == null ? abstractLog.sid == null : uuid.equals(abstractLog.sid)) {
                    String str = this.distributionGroupId;
                    if (str == null ? abstractLog.distributionGroupId == null : str.equals(abstractLog.distributionGroupId)) {
                        String str2 = this.userId;
                        if (str2 == null ? abstractLog.userId == null : str2.equals(abstractLog.userId)) {
                            Device device = this.device;
                            if (device == null ? abstractLog.device == null : device.equals(abstractLog.device)) {
                                Object obj = this.tag;
                                Object obj2 = abstractLog.tag;
                                return obj != null ? obj.equals(obj2) : obj2 == null;
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
        int hashCode = this.transmissionTargetTokens.hashCode() * 31;
        Date date = this.timestamp;
        int hashCode2 = (hashCode + (date != null ? date.hashCode() : 0)) * 31;
        UUID uuid = this.sid;
        int hashCode3 = (hashCode2 + (uuid != null ? uuid.hashCode() : 0)) * 31;
        String str = this.distributionGroupId;
        int hashCode4 = (hashCode3 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.userId;
        int hashCode5 = (hashCode4 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Device device = this.device;
        int hashCode6 = (hashCode5 + (device != null ? device.hashCode() : 0)) * 31;
        Object obj = this.tag;
        return hashCode6 + (obj != null ? obj.hashCode() : 0);
    }
}
