package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzuu;
/* loaded from: classes.dex */
final class zzuv implements zzwf {
    private static final zzuv zzbsr = new zzuv();

    private zzuv() {
    }

    public static zzuv zzrl() {
        return zzbsr;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwf
    public final boolean zzh(Class<?> cls) {
        return zzuu.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwf
    public final zzwc zzi(Class<?> cls) {
        if (!zzuu.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzwc) zzuu.zzg(cls.asSubclass(zzuu.class)).zza(zzuu.zze.zzbsy, (Object) null, (Object) null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }
}
