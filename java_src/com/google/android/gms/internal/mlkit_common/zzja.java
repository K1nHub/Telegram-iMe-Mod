package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public enum zzja {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzep.zza),
    ENUM(null),
    MESSAGE(null);
    
    private final Object zzj;

    zzja(Object obj) {
        this.zzj = obj;
    }
}
