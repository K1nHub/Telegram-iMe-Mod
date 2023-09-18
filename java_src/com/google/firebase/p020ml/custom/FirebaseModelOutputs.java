package com.google.firebase.p020ml.custom;

import java.util.Map;
/* renamed from: com.google.firebase.ml.custom.FirebaseModelOutputs */
/* loaded from: classes4.dex */
public final class FirebaseModelOutputs {
    private Map<Integer, Object> zzaxl;

    public FirebaseModelOutputs(Map<Integer, Object> map) {
        this.zzaxl = map;
    }

    public final <T> T getOutput(int i) {
        Map<Integer, Object> map = this.zzaxl;
        if (map == null || !map.containsKey(Integer.valueOf(i))) {
            String valueOf = String.valueOf(Integer.toString(i));
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No output with index: ".concat(valueOf) : new String("No output with index: "));
        }
        return (T) this.zzaxl.get(Integer.valueOf(i));
    }
}
