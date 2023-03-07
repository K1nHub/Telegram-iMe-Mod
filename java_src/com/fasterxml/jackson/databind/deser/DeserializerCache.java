package com.fasterxml.jackson.databind.deser;

import java.io.Serializable;
import java.util.HashMap;
import p034j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public final class DeserializerCache implements Serializable {
    public DeserializerCache() {
        new ConcurrentHashMap(64, 0.75f, 4);
        new HashMap(8);
    }
}
