package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.DefaultLoadControl;
/* loaded from: classes.dex */
public final class zzfk {
    private final zzft zzse;
    private zzhy zzsh;
    private String zzst;
    private zzfe zztn;
    private zzfg zzts;
    private zzff zztz;
    private zzfc zzua;
    private zzfq zzud;
    private zzfj zztt = new zzfj();
    private zzfj zztu = new zzfj();
    private int zztv = 10;
    private int zztw = 16384;
    private boolean zztx = true;
    private boolean zzty = true;
    private int zzub = 20000;
    private int zzuc = 20000;
    private boolean zzue = true;
    private boolean zzuf = true;
    @Deprecated
    private boolean zzug = false;
    private zzia zzuh = zzia.zzzw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfk(zzft zzftVar, String str) {
        this.zzse = zzftVar;
        zzac(null);
    }

    public final zzft zzeq() {
        return this.zzse;
    }

    public final String getRequestMethod() {
        return this.zzst;
    }

    public final zzfk zzac(String str) {
        zzkv.checkArgument(str == null || zzfl.zzad(str));
        this.zzst = str;
        return this;
    }

    public final zzfc zzer() {
        return this.zzua;
    }

    public final zzfk zza(zzfc zzfcVar) {
        this.zzua = (zzfc) zzkv.checkNotNull(zzfcVar);
        return this;
    }

    public final zzff zzes() {
        return this.zztz;
    }

    public final zzfk zza(zzff zzffVar) {
        this.zztz = zzffVar;
        return this;
    }

    public final zzfk zza(zzfe zzfeVar) {
        this.zztn = zzfeVar;
        return this;
    }

    public final int zzet() {
        return this.zztw;
    }

    public final boolean zzeu() {
        return this.zztx;
    }

    public final zzfk zzw(int i) {
        zzkv.checkArgument(true);
        this.zzub = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS;
        return this;
    }

    public final zzfk zzx(int i) {
        zzkv.checkArgument(true);
        this.zzuc = 10000;
        return this;
    }

    public final zzfj zzev() {
        return this.zztt;
    }

    public final zzfj zzew() {
        return this.zztu;
    }

    public final zzfk zza(zzfg zzfgVar) {
        this.zzts = zzfgVar;
        return this;
    }

    public final zzfq zzex() {
        return this.zzud;
    }

    public final zzfk zza(zzfq zzfqVar) {
        this.zzud = zzfqVar;
        return this;
    }

    public final zzfk zza(zzhy zzhyVar) {
        this.zzsh = zzhyVar;
        return this;
    }

    public final zzhy zzey() {
        return this.zzsh;
    }

    public final boolean zzez() {
        return this.zzuf;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0271 A[Catch: all -> 0x029c, TRY_LEAVE, TryCatch #2 {all -> 0x029c, blocks: (B:84:0x020c, B:86:0x0212, B:90:0x0226, B:95:0x0230, B:97:0x0242, B:99:0x024c, B:101:0x026e, B:103:0x0271), top: B:135:0x020c }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0299 A[LOOP:0: B:7:0x0019->B:122:0x0299, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x027b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0212 A[Catch: all -> 0x029c, TryCatch #2 {all -> 0x029c, blocks: (B:84:0x020c, B:86:0x0212, B:90:0x0226, B:95:0x0230, B:97:0x0242, B:99:0x024c, B:101:0x026e, B:103:0x0271), top: B:135:0x020c }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0242 A[Catch: all -> 0x029c, TryCatch #2 {all -> 0x029c, blocks: (B:84:0x020c, B:86:0x0212, B:90:0x0226, B:95:0x0230, B:97:0x0242, B:99:0x024c, B:101:0x026e, B:103:0x0271), top: B:135:0x020c }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x024b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.firebase_ml.zzfp zzfa() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 696
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzfk.zzfa():com.google.android.gms.internal.firebase_ml.zzfp");
    }
}
