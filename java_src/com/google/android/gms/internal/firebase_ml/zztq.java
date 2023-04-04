package com.google.android.gms.internal.firebase_ml;

import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zztq extends zzts {
    private final int limit;
    private int position = 0;
    private final /* synthetic */ zztn zzbov;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztq(zztn zztnVar) {
        this.zzbov = zztnVar;
        this.limit = zztnVar.size();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final boolean hasNext() {
        return this.position < this.limit;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztw
    public final byte nextByte() {
        int i = this.position;
        if (i >= this.limit) {
            throw new NoSuchElementException();
        }
        this.position = i + 1;
        return this.zzbov.zzcn(i);
    }
}
