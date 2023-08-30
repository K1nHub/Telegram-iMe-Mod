package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zzlg<E> extends zzlf<E> {
    private final zzlh<E> zzacp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlg(zzlh<E> zzlhVar, int i) {
        super(zzlhVar.size(), i);
        this.zzacp = zzlhVar;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzlf
    protected final E get(int i) {
        return this.zzacp.get(i);
    }
}
