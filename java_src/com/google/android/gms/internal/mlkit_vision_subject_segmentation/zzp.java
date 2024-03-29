package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: com.google.android.gms:play-services-mlkit-subject-segmentation@@16.0.0-beta1 */
/* loaded from: classes3.dex */
final class zzp implements Iterator, p033j$.util.Iterator {
    Map.Entry zza;
    final /* synthetic */ Iterator zzb;
    final /* synthetic */ zzq zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(zzq zzqVar, Iterator it) {
        this.zzc = zzqVar;
        this.zzb = it;
    }

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.zzb.next();
        this.zza = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        int i;
        zzi.zzd(this.zza != null, "no calls to next() since the last call to remove()");
        Collection collection = (Collection) this.zza.getValue();
        this.zzb.remove();
        zzw zzwVar = this.zzc.zza;
        i = zzwVar.zzb;
        zzwVar.zzb = i - collection.size();
        collection.clear();
        this.zza = null;
    }
}
