package com.microsoft.appcenter.ingestion.models;

import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class StartServiceLog extends AbstractLog {
    private Boolean isOneCollectorEnabled = null;
    private List<String> services;

    @Override // com.microsoft.appcenter.ingestion.models.Log
    public String getType() {
        return "startService";
    }

    public List<String> getServices() {
        return this.services;
    }

    public void setServices(List<String> services) {
        this.services = services;
    }

    public void oneCollectorEnabled(Boolean isEnabled) {
        this.isOneCollectorEnabled = isEnabled;
    }

    public Boolean isOneCollectorEnabled() {
        return this.isOneCollectorEnabled;
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog, com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        super.read(object);
        setServices(JSONUtils.readStringArray(object, "services"));
        oneCollectorEnabled(JSONUtils.readBoolean(object, "isOneCollectorEnabled"));
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog, com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        super.write(writer);
        JSONUtils.writeStringArray(writer, "services", getServices());
        JSONUtils.write(writer, "isOneCollectorEnabled", isOneCollectorEnabled());
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o != null && StartServiceLog.class == o.getClass() && super.equals(o)) {
            List<String> list = this.services;
            List<String> list2 = ((StartServiceLog) o).services;
            return list != null ? list.equals(list2) : list2 == null;
        }
        return false;
    }

    @Override // com.microsoft.appcenter.ingestion.models.AbstractLog
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        List<String> list = this.services;
        return hashCode + (list != null ? list.hashCode() : 0);
    }
}
