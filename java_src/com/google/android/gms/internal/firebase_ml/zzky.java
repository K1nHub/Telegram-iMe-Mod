package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
abstract class zzky extends zzkb<String> {
    private int limit;
    private int offset = 0;
    private final zzkg zzabd;
    private final boolean zzabe;
    final CharSequence zzabg;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzky(zzkx zzkxVar, CharSequence charSequence) {
        zzkg zzkgVar;
        int i;
        zzkgVar = zzkxVar.zzabd;
        this.zzabd = zzkgVar;
        this.zzabe = false;
        i = zzkxVar.limit;
        this.limit = i;
        this.zzabg = charSequence;
    }

    abstract int zzag(int i);

    abstract int zzah(int i);

    @Override // com.google.android.gms.internal.firebase_ml.zzkb
    protected final /* synthetic */ String zzhv() {
        int zzag;
        int i = this.offset;
        while (true) {
            int i2 = this.offset;
            if (i2 != -1) {
                zzag = zzag(i2);
                if (zzag == -1) {
                    zzag = this.zzabg.length();
                    this.offset = -1;
                } else {
                    this.offset = zzah(zzag);
                }
                int i3 = this.offset;
                if (i3 == i) {
                    int i4 = i3 + 1;
                    this.offset = i4;
                    if (i4 > this.zzabg.length()) {
                        this.offset = -1;
                    }
                } else {
                    while (i < zzag && this.zzabd.zzb(this.zzabg.charAt(i))) {
                        i++;
                    }
                    while (zzag > i && this.zzabd.zzb(this.zzabg.charAt(zzag - 1))) {
                        zzag--;
                    }
                    if (!this.zzabe || i != zzag) {
                        break;
                    }
                    i = this.offset;
                }
            } else {
                zzhw();
                return null;
            }
        }
        int i5 = this.limit;
        if (i5 == 1) {
            zzag = this.zzabg.length();
            this.offset = -1;
            while (zzag > i && this.zzabd.zzb(this.zzabg.charAt(zzag - 1))) {
                zzag--;
            }
        } else {
            this.limit = i5 - 1;
        }
        return this.zzabg.subSequence(i, zzag).toString();
    }
}
