package com.google.android.gms.internal.firebase_ml;

import java.util.Iterator;
/* loaded from: classes.dex */
final class zzid implements Iterable<T> {
    final /* synthetic */ Object zzzy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzid(Object obj) {
        this.zzzy = obj;
    }

    @Override // java.lang.Iterable
    public final Iterator<T> iterator() {
        return new zzig(this);
    }
}
