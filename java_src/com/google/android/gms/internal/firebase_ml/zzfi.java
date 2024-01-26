package com.google.android.gms.internal.firebase_ml;

import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfi {
    final zzhd zzto;
    final StringBuilder zztp;
    final zzhh zztq;
    final List<Type> zztr;

    public zzfi(zzfj zzfjVar, StringBuilder sb) {
        Class<?> cls = zzfjVar.getClass();
        this.zztr = Arrays.asList(cls);
        this.zztq = zzhh.zza(cls, true);
        this.zztp = sb;
        this.zzto = new zzhd(zzfjVar);
    }
}
