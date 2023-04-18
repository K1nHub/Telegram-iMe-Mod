package com.google.android.gms.internal.icing;

import java.util.Iterator;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
final class zzfh implements Iterator<String>, p034j$.util.Iterator {
    final Iterator<String> zza;
    final /* synthetic */ zzfi zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfh(zzfi zzfiVar) {
        zzdo zzdoVar;
        this.zzb = zzfiVar;
        zzdoVar = zzfiVar.zza;
        this.zza = zzdoVar.iterator();
    }

    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.zza.next();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
