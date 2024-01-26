package com.google.android.gms.internal.firebase_ml;

import java.util.Locale;
import java.util.Map;
/* loaded from: classes.dex */
final class zzhl implements Map.Entry<String, Object> {
    private final /* synthetic */ zzhi zzzc;
    private Object zzzd;
    private final zzhp zzze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhl(zzhi zzhiVar, zzhp zzhpVar, Object obj) {
        this.zzzc = zzhiVar;
        this.zzze = zzhpVar;
        this.zzzd = zzkv.checkNotNull(obj);
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.zzzd;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object obj2 = this.zzzd;
        this.zzzd = zzkv.checkNotNull(obj);
        this.zzze.zzb(this.zzzc.object, obj);
        return obj2;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return ((String) getKey()).hashCode() ^ getValue().hashCode();
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            return ((String) getKey()).equals(entry.getKey()) && getValue().equals(entry.getValue());
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ String getKey() {
        String name = this.zzze.getName();
        return this.zzzc.zztq.zzgu() ? name.toLowerCase(Locale.US) : name;
    }
}
