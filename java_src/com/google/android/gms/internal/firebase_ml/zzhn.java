package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhn extends AbstractSet<Map.Entry<String, Object>> {
    private final /* synthetic */ zzhi zzzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhn(zzhi zzhiVar) {
        this.zzzc = zzhiVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        int i = 0;
        for (String str : this.zzzc.zztq.zzyi) {
            if (this.zzzc.zztq.zzal(str).zzh(this.zzzc.object) != null) {
                i++;
            }
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        for (String str : this.zzzc.zztq.zzyi) {
            this.zzzc.zztq.zzal(str).zzb(this.zzzc.object, null);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        for (String str : this.zzzc.zztq.zzyi) {
            if (this.zzzc.zztq.zzal(str).zzh(this.zzzc.object) != null) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new zzhk(this.zzzc);
    }
}
