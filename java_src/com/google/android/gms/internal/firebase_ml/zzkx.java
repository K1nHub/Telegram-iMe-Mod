package com.google.android.gms.internal.firebase_ml;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class zzkx {
    private final int limit;
    private final zzkg zzabd;
    private final boolean zzabe;
    private final zzlb zzabf;

    private zzkx(zzlb zzlbVar) {
        this(zzlbVar, false, zzkk.zzaav, Integer.MAX_VALUE);
    }

    private zzkx(zzlb zzlbVar, boolean z, zzkg zzkgVar, int i) {
        this.zzabf = zzlbVar;
        this.zzabe = false;
        this.zzabd = zzkgVar;
        this.limit = Integer.MAX_VALUE;
    }

    public static zzkx zza(zzkg zzkgVar) {
        zzkv.checkNotNull(zzkgVar);
        return new zzkx(new zzkw(zzkgVar));
    }

    public final List<String> zza(CharSequence charSequence) {
        zzkv.checkNotNull(charSequence);
        Iterator<String> zza = this.zzabf.zza(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (zza.hasNext()) {
            arrayList.add(zza.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
