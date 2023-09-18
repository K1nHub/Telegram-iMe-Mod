package com.google.firebase.crashlytics.internal.common;

import java.util.Map;
/* loaded from: classes4.dex */
public class UserMetadata {
    private final KeysMap customKeys = new KeysMap(64, 1024);
    private final KeysMap internalKeys = new KeysMap(64, 8192);

    public Map<String, String> getCustomKeys() {
        return this.customKeys.getKeys();
    }

    public void setCustomKeys(Map<String, String> map) {
        this.customKeys.setKeys(map);
    }

    public Map<String, String> getInternalKeys() {
        return this.internalKeys.getKeys();
    }
}
