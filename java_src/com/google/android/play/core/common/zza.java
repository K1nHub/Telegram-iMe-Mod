package com.google.android.play.core.common;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zza {
    private final Map<String, Object> zza = new HashMap();
    private final AtomicBoolean zzb = new AtomicBoolean(false);

    private final synchronized void zzb() {
        this.zza.put("assetOnlyUpdates", Boolean.FALSE);
    }

    public final synchronized boolean zza(String str) {
        if (!this.zzb.get()) {
            zzb();
        }
        Object obj = this.zza.get("assetOnlyUpdates");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }
}
