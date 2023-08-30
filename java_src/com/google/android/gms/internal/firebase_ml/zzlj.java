package com.google.android.gms.internal.firebase_ml;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [E] */
/* loaded from: classes.dex */
public final class zzlj<E> extends zzlh<E> {
    private final transient int length;
    private final transient int offset;
    private final /* synthetic */ zzlh zzact;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlj(zzlh zzlhVar, int i, int i2) {
        this.zzact = zzlhVar;
        this.offset = i;
        this.length = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzle
    public final boolean zzig() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzle
    public final Object[] zzic() {
        return this.zzact.zzic();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzle
    public final int zzid() {
        return this.zzact.zzid() + this.offset;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzle
    final int zzie() {
        return this.zzact.zzid() + this.offset + this.length;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzkv.zzc(i, this.length);
        return this.zzact.get(i + this.offset);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzlh
    public final zzlh<E> zze(int i, int i2) {
        zzkv.zza(i, i2, this.length);
        zzlh zzlhVar = this.zzact;
        int i3 = this.offset;
        return (zzlh) zzlhVar.subList(i + i3, i2 + i3);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzlh, java.util.List
    public final /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}
