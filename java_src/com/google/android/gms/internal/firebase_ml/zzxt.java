package com.google.android.gms.internal.firebase_ml;

import java.util.Iterator;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* loaded from: classes.dex */
final class zzxt implements Iterator<String>, p033j$.util.Iterator {
    private final /* synthetic */ zzxr zzbwy;
    private Iterator<String> zzbxu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxt(zzxr zzxrVar) {
        zzvp zzvpVar;
        this.zzbwy = zzxrVar;
        zzvpVar = zzxrVar.zzbwz;
        this.zzbxu = zzvpVar.iterator();
    }

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        return this.zzbxu.hasNext();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzbxu.next();
    }
}
