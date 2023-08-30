package com.google.android.gms.internal.firebase_ml;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzki extends zzkf {
    private final char zzaau;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzki(char c) {
        this.zzaau = c;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzkg
    public final boolean zzb(char c) {
        return c == this.zzaau;
    }

    public final String toString() {
        String zzc;
        zzc = zzkg.zzc(this.zzaau);
        StringBuilder sb = new StringBuilder(String.valueOf(zzc).length() + 18);
        sb.append("CharMatcher.is('");
        sb.append(zzc);
        sb.append("')");
        return sb.toString();
    }
}
