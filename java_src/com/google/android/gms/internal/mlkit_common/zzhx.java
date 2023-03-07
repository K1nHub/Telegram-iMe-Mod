package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
final class zzhx extends zzid {
    private final /* synthetic */ zzhs zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzhx(zzhs zzhsVar) {
        super(zzhsVar, null);
        this.zza = zzhsVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzid, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzhu(this.zza, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzhx(zzhs zzhsVar, zzhv zzhvVar) {
        this(zzhsVar);
    }
}
