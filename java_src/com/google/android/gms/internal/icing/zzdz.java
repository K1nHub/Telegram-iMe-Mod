package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
final class zzdz {
    public static final int zza(int i, Object obj, Object obj2) {
        zzdy zzdyVar = (zzdy) obj;
        zzdx zzdxVar = (zzdx) obj2;
        if (zzdyVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzdyVar.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw null;
        }
        return 0;
    }
}
