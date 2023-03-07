package com.google.android.gms.internal.firebase_ml;

import java.lang.reflect.Field;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzhd {
    private final Map<String, zzhc> zzxz = new zzhb();
    private final Map<Field, zzhc> zzya = new zzhb();
    private final Object zzyb;

    public zzhd(Object obj) {
        this.zzyb = obj;
    }

    public final void zzgt() {
        for (Map.Entry<String, zzhc> entry : this.zzxz.entrySet()) {
            ((Map) this.zzyb).put(entry.getKey(), entry.getValue().zzgs());
        }
        for (Map.Entry<Field, zzhc> entry2 : this.zzya.entrySet()) {
            zzhp.zza(entry2.getKey(), this.zzyb, entry2.getValue().zzgs());
        }
    }

    public final void zza(Field field, Class<?> cls, Object obj) {
        zzhc zzhcVar = this.zzya.get(field);
        if (zzhcVar == null) {
            zzhcVar = new zzhc(cls);
            this.zzya.put(field, zzhcVar);
        }
        zzkv.checkArgument(cls == zzhcVar.zzxx);
        zzhcVar.zzxy.add(obj);
    }
}
