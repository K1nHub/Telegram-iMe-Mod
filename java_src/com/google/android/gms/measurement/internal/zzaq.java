package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
final class zzaq implements Iterator<String>, p033j$.util.Iterator {
    final Iterator<String> zza;
    final /* synthetic */ zzar zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaq(zzar zzarVar) {
        Bundle bundle;
        this.zzb = zzarVar;
        bundle = zzarVar.zza;
        this.zza = bundle.keySet().iterator();
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
        throw new UnsupportedOperationException("Remove not supported");
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    /* renamed from: zza */
    public final String next() {
        return this.zza.next();
    }
}
