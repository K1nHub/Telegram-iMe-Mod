package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
final class zzim implements Iterator<String>, p033j$.util.Iterator {
    private Iterator<String> zza;
    private final /* synthetic */ zzik zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzim(zzik zzikVar) {
        zzgi zzgiVar;
        this.zzb = zzikVar;
        zzgiVar = zzikVar.zza;
        this.zza = zzgiVar.iterator();
    }

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zza.next();
    }
}
