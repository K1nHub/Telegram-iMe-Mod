package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class SdkExtension implements Model {
    private String epoch;
    private UUID installId;
    private String libVer;
    private Long seq;

    public String getLibVer() {
        return this.libVer;
    }

    public void setLibVer(String libVer) {
        this.libVer = libVer;
    }

    public String getEpoch() {
        return this.epoch;
    }

    public void setEpoch(String epoch) {
        this.epoch = epoch;
    }

    public Long getSeq() {
        return this.seq;
    }

    public void setSeq(Long seq) {
        this.seq = seq;
    }

    public UUID getInstallId() {
        return this.installId;
    }

    public void setInstallId(UUID installId) {
        this.installId = installId;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        setLibVer(object.optString("libVer", null));
        setEpoch(object.optString("epoch", null));
        setSeq(JSONUtils.readLong(object, "seq"));
        if (object.has("installId")) {
            setInstallId(UUID.fromString(object.getString("installId")));
        }
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.write(writer, "libVer", getLibVer());
        JSONUtils.write(writer, "epoch", getEpoch());
        JSONUtils.write(writer, "seq", getSeq());
        JSONUtils.write(writer, "installId", getInstallId());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || SdkExtension.class != o.getClass()) {
            return false;
        }
        SdkExtension sdkExtension = (SdkExtension) o;
        String str = this.libVer;
        if (str == null ? sdkExtension.libVer == null : str.equals(sdkExtension.libVer)) {
            String str2 = this.epoch;
            if (str2 == null ? sdkExtension.epoch == null : str2.equals(sdkExtension.epoch)) {
                Long l = this.seq;
                if (l == null ? sdkExtension.seq == null : l.equals(sdkExtension.seq)) {
                    UUID uuid = this.installId;
                    UUID uuid2 = sdkExtension.installId;
                    return uuid != null ? uuid.equals(uuid2) : uuid2 == null;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.libVer;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.epoch;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Long l = this.seq;
        int hashCode3 = (hashCode2 + (l != null ? l.hashCode() : 0)) * 31;
        UUID uuid = this.installId;
        return hashCode3 + (uuid != null ? uuid.hashCode() : 0);
    }
}
