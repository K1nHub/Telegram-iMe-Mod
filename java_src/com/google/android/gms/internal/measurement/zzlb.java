package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzlb {
    public static final int zza(int i, Object obj, Object obj2) {
        zzla zzlaVar = (zzla) obj;
        zzkz zzkzVar = (zzkz) obj2;
        if (zzlaVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzlaVar.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw null;
        }
        return 0;
    }

    public static final Object zzb(Object obj, Object obj2) {
        zzla zzlaVar = (zzla) obj;
        zzla zzlaVar2 = (zzla) obj2;
        if (!zzlaVar2.isEmpty()) {
            if (!zzlaVar.zze()) {
                zzlaVar = zzlaVar.zzb();
            }
            zzlaVar.zzd(zzlaVar2);
        }
        return zzlaVar;
    }
}
