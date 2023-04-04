package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* loaded from: classes.dex */
final class zzfc implements Iterator<String>, p035j$.util.Iterator {
    private final /* synthetic */ zzfa zzpe;
    private Iterator<String> zzpf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfc(zzfa zzfaVar) {
        zzcx zzcxVar;
        this.zzpe = zzfaVar;
        zzcxVar = zzfaVar.zzpb;
        this.zzpf = zzcxVar.iterator();
    }

    @Override // p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final boolean hasNext() {
        return this.zzpf.hasNext();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzpf.next();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
