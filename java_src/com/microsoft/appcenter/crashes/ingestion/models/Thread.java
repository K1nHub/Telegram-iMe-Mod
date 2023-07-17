package com.microsoft.appcenter.crashes.ingestion.models;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.microsoft.appcenter.crashes.ingestion.models.json.StackFrameFactory;
import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class Thread implements Model {
    private List<StackFrame> frames;

    /* renamed from: id */
    private long f461id;
    private String name;

    public long getId() {
        return this.f461id;
    }

    public void setId(long id) {
        this.f461id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<StackFrame> getFrames() {
        return this.frames;
    }

    public void setFrames(List<StackFrame> frames) {
        this.frames = frames;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        setId(object.getLong(TtmlNode.ATTR_ID));
        setName(object.optString(AppMeasurementSdk.ConditionalUserProperty.NAME, null));
        setFrames(JSONUtils.readArray(object, "frames", StackFrameFactory.getInstance()));
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.write(writer, TtmlNode.ATTR_ID, Long.valueOf(getId()));
        JSONUtils.write(writer, AppMeasurementSdk.ConditionalUserProperty.NAME, getName());
        JSONUtils.writeArray(writer, "frames", getFrames());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || Thread.class != o.getClass()) {
            return false;
        }
        Thread thread = (Thread) o;
        if (this.f461id != thread.f461id) {
            return false;
        }
        String str = this.name;
        if (str == null ? thread.name == null : str.equals(thread.name)) {
            List<StackFrame> list = this.frames;
            List<StackFrame> list2 = thread.frames;
            return list != null ? list.equals(list2) : list2 == null;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f461id;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        String str = this.name;
        int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        List<StackFrame> list = this.frames;
        return hashCode + (list != null ? list.hashCode() : 0);
    }
}
