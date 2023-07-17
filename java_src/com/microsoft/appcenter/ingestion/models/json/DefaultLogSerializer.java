package com.microsoft.appcenter.ingestion.models.json;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.LogContainer;
import com.microsoft.appcenter.ingestion.models.one.CommonSchemaLog;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class DefaultLogSerializer implements LogSerializer {
    private final Map<String, LogFactory> mLogFactories = new HashMap();

    private JSONStringer writeLog(JSONStringer writer, Log log) throws JSONException {
        writer.object();
        log.write(writer);
        writer.endObject();
        return writer;
    }

    private Log readLog(JSONObject object, String type) throws JSONException {
        if (type == null) {
            type = object.getString(SessionDescription.ATTR_TYPE);
        }
        LogFactory logFactory = this.mLogFactories.get(type);
        if (logFactory == null) {
            throw new JSONException("Unknown log type: " + type);
        }
        Log create = logFactory.create();
        create.read(object);
        return create;
    }

    @Override // com.microsoft.appcenter.ingestion.models.json.LogSerializer
    public String serializeLog(Log log) throws JSONException {
        return writeLog(new JSONStringer(), log).toString();
    }

    @Override // com.microsoft.appcenter.ingestion.models.json.LogSerializer
    public Log deserializeLog(String json, String type) throws JSONException {
        return readLog(new JSONObject(json), type);
    }

    @Override // com.microsoft.appcenter.ingestion.models.json.LogSerializer
    public Collection<CommonSchemaLog> toCommonSchemaLog(Log log) {
        return this.mLogFactories.get(log.getType()).toCommonSchemaLogs(log);
    }

    @Override // com.microsoft.appcenter.ingestion.models.json.LogSerializer
    public String serializeContainer(LogContainer logContainer) throws JSONException {
        JSONStringer jSONStringer = new JSONStringer();
        jSONStringer.object();
        jSONStringer.key("logs").array();
        for (Log log : logContainer.getLogs()) {
            writeLog(jSONStringer, log);
        }
        jSONStringer.endArray();
        jSONStringer.endObject();
        return jSONStringer.toString();
    }

    @Override // com.microsoft.appcenter.ingestion.models.json.LogSerializer
    public void addLogFactory(String logType, LogFactory logFactory) {
        this.mLogFactories.put(logType, logFactory);
    }
}
