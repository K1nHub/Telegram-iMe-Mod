package com.google.android.gms.internal.firebase_ml;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
final class zzxa extends zzxg {
    private final /* synthetic */ zzwz zzbwm;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzxa(zzwz zzwzVar) {
        super(zzwzVar, null);
        this.zzbwm = zzwzVar;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzxg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzxb(this.zzbwm, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzxa(zzwz zzwzVar, zzwy zzwyVar) {
        this(zzwzVar);
    }
}
