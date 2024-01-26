package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: com.google.android.gms:play-services-mlkit-subject-segmentation@@16.0.0-beta1 */
/* loaded from: classes3.dex */
abstract class zzbt implements Iterator, p033j$.util.Iterator {
    final Iterator zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbt(Iterator it) {
        Objects.requireNonNull(it);
        this.zza = it;
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
    public final Object next() {
        return zza(this.zza.next());
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        this.zza.remove();
    }

    abstract Object zza(Object obj);
}
