package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
class MetaDataStore {
    private final File filesDir;

    static {
        Charset.forName("UTF-8");
    }

    public MetaDataStore(File file) {
        this.filesDir = file;
    }

    public Map<String, String> readKeyData(String str) {
        return readKeyData(str, false);
    }

    Map<String, String> readKeyData(String str, boolean z) {
        FileInputStream fileInputStream;
        File internalKeysFileForSession = z ? getInternalKeysFileForSession(str) : getKeysFileForSession(str);
        if (!internalKeysFileForSession.exists()) {
            return Collections.emptyMap();
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(internalKeysFileForSession);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            Map<String, String> jsonToKeysData = jsonToKeysData(CommonUtils.streamToString(fileInputStream));
            CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
            return jsonToKeysData;
        } catch (Exception e2) {
            e = e2;
            fileInputStream2 = fileInputStream;
            Logger.getLogger().m725e("Error deserializing user metadata.", e);
            CommonUtils.closeOrLog(fileInputStream2, "Failed to close user metadata file.");
            return Collections.emptyMap();
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            CommonUtils.closeOrLog(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public File getUserDataFileForSession(String str) {
        File file = this.filesDir;
        return new File(file, str + "user.meta");
    }

    public File getKeysFileForSession(String str) {
        File file = this.filesDir;
        return new File(file, str + "keys.meta");
    }

    public File getInternalKeysFileForSession(String str) {
        File file = this.filesDir;
        return new File(file, str + "internal-keys.meta");
    }

    private static Map<String, String> jsonToKeysData(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, valueOrNull(jSONObject, next));
        }
        return hashMap;
    }

    private static String valueOrNull(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }
}
