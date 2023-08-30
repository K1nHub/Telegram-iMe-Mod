package com.google.android.gms.internal.firebase_ml;

import java.util.Collection;
import java.util.HashSet;
/* loaded from: classes.dex */
public final class zzgk {
    final zzgj zzvw;
    Collection<String> zzwa = new HashSet();

    public zzgk(zzgj zzgjVar) {
        this.zzvw = (zzgj) zzkv.checkNotNull(zzgjVar);
    }

    public final zzgl zzfw() {
        return new zzgl(this);
    }

    public final zzgk zza(Collection<String> collection) {
        this.zzwa = collection;
        return this;
    }
}
