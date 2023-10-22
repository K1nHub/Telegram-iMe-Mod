package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class ProtocolExtension implements Model {
    private String devMake;
    private String devModel;
    private List<String> ticketKeys;

    public List<String> getTicketKeys() {
        return this.ticketKeys;
    }

    public void setTicketKeys(List<String> ticketKeys) {
        this.ticketKeys = ticketKeys;
    }

    public String getDevMake() {
        return this.devMake;
    }

    public void setDevMake(String devMake) {
        this.devMake = devMake;
    }

    public String getDevModel() {
        return this.devModel;
    }

    public void setDevModel(String devModel) {
        this.devModel = devModel;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        setTicketKeys(JSONUtils.readStringArray(object, "ticketKeys"));
        setDevMake(object.optString("devMake", null));
        setDevModel(object.optString("devModel", null));
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.writeStringArray(writer, "ticketKeys", getTicketKeys());
        JSONUtils.write(writer, "devMake", getDevMake());
        JSONUtils.write(writer, "devModel", getDevModel());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || ProtocolExtension.class != o.getClass()) {
            return false;
        }
        ProtocolExtension protocolExtension = (ProtocolExtension) o;
        List<String> list = this.ticketKeys;
        if (list == null ? protocolExtension.ticketKeys == null : list.equals(protocolExtension.ticketKeys)) {
            String str = this.devMake;
            if (str == null ? protocolExtension.devMake == null : str.equals(protocolExtension.devMake)) {
                String str2 = this.devModel;
                String str3 = protocolExtension.devModel;
                return str2 != null ? str2.equals(str3) : str3 == null;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        List<String> list = this.ticketKeys;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        String str = this.devMake;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.devModel;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
