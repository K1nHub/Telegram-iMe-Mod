package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractMap;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhi extends AbstractMap<String, Object> {
    final Object object;
    final zzhh zztq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhi(Object obj, boolean z) {
        this.object = obj;
        zzhh zza = zzhh.zza(obj.getClass(), z);
        this.zztq = zza;
        zzkv.checkArgument(!zza.isEnum());
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        zzhp zzal;
        if ((obj instanceof String) && (zzal = this.zztq.zzal((String) obj)) != null) {
            return zzal.zzh(this.object);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Set entrySet() {
        return new zzhn(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Object put(Object obj, Object obj2) {
        String str = (String) obj;
        zzhp zzal = this.zztq.zzal(str);
        String valueOf = String.valueOf(str);
        zzkv.checkNotNull(zzal, valueOf.length() != 0 ? "no field of key ".concat(valueOf) : new String("no field of key "));
        Object zzh = zzal.zzh(this.object);
        zzal.zzb(this.object, zzkv.checkNotNull(obj2));
        return zzh;
    }
}
