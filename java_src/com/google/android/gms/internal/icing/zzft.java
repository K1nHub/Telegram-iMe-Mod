package com.google.android.gms.internal.icing;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
public enum zzft {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzcf.zzb),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzj;

    zzft(Object obj) {
        this.zzj = obj;
    }
}
