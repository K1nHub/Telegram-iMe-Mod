package com.microsoft.appcenter.ingestion.models.one;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.microsoft.appcenter.ingestion.models.AbstractLog;
import com.microsoft.appcenter.ingestion.models.json.JSONDateUtils;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public abstract class CommonSchemaLog extends AbstractLog {

    /* renamed from: cV */
    private String f467cV;
    private Data data;
    private Extensions ext;
    private Long flags;
    private String iKey;
    private String name;
    private Double popSample;
    private String ver;

    public String getVer() {
        return this.ver;
    }

    public void setVer(String ver) {
        this.ver = ver;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPopSample() {
        return this.popSample;
    }

    public void setPopSample(Double popSample) {
        this.popSample = popSample;
    }

    public String getIKey() {
        return this.iKey;
    }

    public void setIKey(String iKey) {
        this.iKey = iKey;
    }

    public Long getFlags() {
        return this.flags;
    }

    public void setFlags(Long flags) {
        this.flags = flags;
    }

    public String getCV() {
        return this.f467cV;
    }

    public void setCV(String cV) {
        this.f467cV = cV;
    }

    public Extensions getExt() {
        return this.ext;
    }

    public void setExt(Extensions ext) {
        this.ext = ext;
    }

    public Data getData() {
        return this.data;
    }

    public void setData(Data data) {
        this.data = data;
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog, com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        setVer(object.getString("ver"));
        setName(object.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        setTimestamp(JSONDateUtils.toDate(object.getString("time")));
        if (object.has("popSample")) {
            setPopSample(Double.valueOf(object.getDouble("popSample")));
        }
        setIKey(object.optString("iKey", null));
        setFlags(JSONUtils.readLong(object, "flags"));
        setCV(object.optString("cV", null));
        if (object.has("ext")) {
            Extensions extensions = new Extensions();
            extensions.read(object.getJSONObject("ext"));
            setExt(extensions);
        }
        if (object.has("data")) {
            Data data = new Data();
            data.read(object.getJSONObject("data"));
            setData(data);
        }
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog, com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        writer.key("ver").value(getVer());
        writer.key(AppMeasurementSdk.ConditionalUserProperty.NAME).value(getName());
        writer.key("time").value(JSONDateUtils.toString(getTimestamp()));
        JSONUtils.write(writer, "popSample", getPopSample());
        JSONUtils.write(writer, "iKey", getIKey());
        JSONUtils.write(writer, "flags", getFlags());
        JSONUtils.write(writer, "cV", getCV());
        if (getExt() != null) {
            writer.key("ext").object();
            getExt().write(writer);
            writer.endObject();
        }
        if (getData() != null) {
            writer.key("data").object();
            getData().write(writer);
            writer.endObject();
        }
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o != null && CommonSchemaLog.class == o.getClass() && super.equals(o)) {
            CommonSchemaLog commonSchemaLog = (CommonSchemaLog) o;
            String str = this.ver;
            if (str == null ? commonSchemaLog.ver == null : str.equals(commonSchemaLog.ver)) {
                String str2 = this.name;
                if (str2 == null ? commonSchemaLog.name == null : str2.equals(commonSchemaLog.name)) {
                    Double d = this.popSample;
                    if (d == null ? commonSchemaLog.popSample == null : d.equals(commonSchemaLog.popSample)) {
                        String str3 = this.iKey;
                        if (str3 == null ? commonSchemaLog.iKey == null : str3.equals(commonSchemaLog.iKey)) {
                            Long l = this.flags;
                            if (l == null ? commonSchemaLog.flags == null : l.equals(commonSchemaLog.flags)) {
                                String str4 = this.f467cV;
                                if (str4 == null ? commonSchemaLog.f467cV == null : str4.equals(commonSchemaLog.f467cV)) {
                                    Extensions extensions = this.ext;
                                    if (extensions == null ? commonSchemaLog.ext == null : extensions.equals(commonSchemaLog.ext)) {
                                        Data data = this.data;
                                        Data data2 = commonSchemaLog.data;
                                        return data != null ? data.equals(data2) : data2 == null;
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
        String str = this.ver;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.name;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Double d = this.popSample;
        int hashCode4 = (hashCode3 + (d != null ? d.hashCode() : 0)) * 31;
        String str3 = this.iKey;
        int hashCode5 = (hashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Long l = this.flags;
        int hashCode6 = (hashCode5 + (l != null ? l.hashCode() : 0)) * 31;
        String str4 = this.f467cV;
        int hashCode7 = (hashCode6 + (str4 != null ? str4.hashCode() : 0)) * 31;
        Extensions extensions = this.ext;
        int hashCode8 = (hashCode7 + (extensions != null ? extensions.hashCode() : 0)) * 31;
        Data data = this.data;
        return hashCode8 + (data != null ? data.hashCode() : 0);
    }
}
