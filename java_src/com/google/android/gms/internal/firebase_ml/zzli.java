package com.google.android.gms.internal.firebase_ml;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzli<E> extends zzlh<E> {
    static final zzlh<Object> zzacr = new zzli(new Object[0], 0);
    private final transient int size;
    private final transient Object[] zzacs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzli(Object[] objArr, int i) {
        this.zzacs = objArr;
        this.size = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzle
    public final int zzid() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzle
    public final boolean zzig() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzle
    public final Object[] zzic() {
        return this.zzacs;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzle
    final int zzie() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzlh, com.google.android.gms.internal.firebase_ml.zzle
    final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzacs, 0, objArr, 0, this.size);
        return this.size + 0;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzkv.zzc(i, this.size);
        return (E) this.zzacs[i];
    }
}
