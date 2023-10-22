package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.Logger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class KeysMap {
    private final Map<String, String> keys = new HashMap();
    private final int maxEntries;
    private final int maxEntryLength;

    public KeysMap(int i, int i2) {
        this.maxEntries = i;
        this.maxEntryLength = i2;
    }

    public synchronized Map<String, String> getKeys() {
        return Collections.unmodifiableMap(new HashMap(this.keys));
    }

    public synchronized void setKeys(Map<String, String> map) {
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String sanitizeKey = sanitizeKey(entry.getKey());
            if (this.keys.size() >= this.maxEntries && !this.keys.containsKey(sanitizeKey)) {
                i++;
            }
            String value = entry.getValue();
            this.keys.put(sanitizeKey, value == null ? "" : sanitizeAttribute(value));
        }
        if (i > 0) {
            Logger logger = Logger.getLogger();
            logger.m1030w("Ignored " + i + " entries when adding custom keys. Maximum allowable: " + this.maxEntries);
        }
    }

    private String sanitizeKey(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Custom attribute key must not be null.");
        }
        return sanitizeAttribute(str);
    }

    public String sanitizeAttribute(String str) {
        if (str != null) {
            String trim = str.trim();
            int length = trim.length();
            int i = this.maxEntryLength;
            return length > i ? trim.substring(0, i) : trim;
        }
        return str;
    }
}
