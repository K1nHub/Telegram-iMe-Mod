package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzmm implements Iterator<String>, p035j$.util.Iterator {
    final Iterator<String> zza;
    final /* synthetic */ zzmn zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmm(zzmn zzmnVar) {
        zzko zzkoVar;
        this.zzb = zzmnVar;
        zzkoVar = zzmnVar.zza;
        this.zza = zzkoVar.iterator();
    }

    @Override // p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.zza.next();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
