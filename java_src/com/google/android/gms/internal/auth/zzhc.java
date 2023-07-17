package com.google.android.gms.internal.auth;

import java.util.Iterator;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.4 */
/* loaded from: classes.dex */
final class zzhc implements Iterator, p033j$.util.Iterator {
    final Iterator zza;
    final /* synthetic */ zzhd zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhc(zzhd zzhdVar) {
        zzfe zzfeVar;
        this.zzb = zzhdVar;
        zzfeVar = zzhdVar.zza;
        this.zza = zzfeVar.iterator();
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
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.zza.next();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
