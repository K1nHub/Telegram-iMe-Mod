package com.google.android.gms.internal.vision;

import java.util.Iterator;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* loaded from: classes3.dex */
final class zzmb implements Iterator<String>, p035j$.util.Iterator {
    private Iterator<String> zza;
    private final /* synthetic */ zzlz zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmb(zzlz zzlzVar) {
        zzjv zzjvVar;
        this.zzb = zzlzVar;
        zzjvVar = zzlzVar.zza;
        this.zza = zzjvVar.iterator();
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
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zza.next();
    }
}
