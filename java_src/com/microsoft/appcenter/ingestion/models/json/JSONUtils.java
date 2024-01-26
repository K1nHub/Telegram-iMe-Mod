package com.microsoft.appcenter.ingestion.models.json;

import com.microsoft.appcenter.ingestion.models.Model;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class JSONUtils {
    public static Integer readInteger(JSONObject object, String key) throws JSONException {
        if (object.has(key)) {
            return Integer.valueOf(object.getInt(key));
        }
        return null;
    }

    public static Long readLong(JSONObject object, String key) throws JSONException {
        if (object.has(key)) {
            return Long.valueOf(object.getLong(key));
        }
        return null;
    }

    public static Boolean readBoolean(JSONObject object, String key) throws JSONException {
        if (object.has(key)) {
            return Boolean.valueOf(object.getBoolean(key));
        }
        return null;
    }

    public static Map<String, String> readMap(JSONObject object, String key) throws JSONException {
        JSONObject optJSONObject = object.optJSONObject(key);
        if (optJSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap(optJSONObject.length());
        Iterator<String> keys = optJSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, optJSONObject.getString(next));
        }
        return hashMap;
    }

    public static <M extends Model> List<M> readArray(JSONObject object, String key, ModelFactory<M> factory) throws JSONException {
        JSONArray optJSONArray = object.optJSONArray(key);
        if (optJSONArray == null) {
            return null;
        }
        List<M> createList = factory.createList(optJSONArray.length());
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject jSONObject = optJSONArray.getJSONObject(i);
            M create = factory.create();
            create.read(jSONObject);
            createList.add(create);
        }
        return createList;
    }

    public static List<String> readStringArray(JSONObject object, String key) throws JSONException {
        JSONArray optJSONArray = object.optJSONArray(key);
        if (optJSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(optJSONArray.length());
        for (int i = 0; i < optJSONArray.length(); i++) {
            arrayList.add(optJSONArray.getString(i));
        }
        return arrayList;
    }

    public static void write(JSONStringer writer, String key, Object value) throws JSONException {
        if (value != null) {
            writer.key(key).value(value);
        }
    }

    public static void writeMap(JSONStringer writer, String key, Map<String, String> value) throws JSONException {
        if (value != null) {
            writer.key(key).object();
            for (Map.Entry<String, String> entry : value.entrySet()) {
                writer.key(entry.getKey()).value(entry.getValue());
            }
            writer.endObject();
        }
    }

    public static void writeArray(JSONStringer writer, String key, List<? extends Model> value) throws JSONException {
        if (value != null) {
            writer.key(key).array();
            for (Model model : value) {
                writer.object();
                model.write(writer);
                writer.endObject();
            }
            writer.endArray();
        }
    }

    public static void writeStringArray(JSONStringer writer, String key, List<String> values) throws JSONException {
        if (values != null) {
            writer.key(key).array();
            for (String str : values) {
                writer.value(str);
            }
            writer.endArray();
        }
    }
}
