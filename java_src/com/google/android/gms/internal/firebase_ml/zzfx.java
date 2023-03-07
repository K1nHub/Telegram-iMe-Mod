package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
enum zzfx {
    PLUS('+', "", ",", false, true),
    HASH('#', "#", ",", false, true),
    DOT('.', ".", ".", false, false),
    FORWARD_SLASH('/', "/", "/", false, false),
    SEMI_COLON(';', ";", ";", true, false),
    QUERY('?', "?", "&", true, false),
    AMP('&', "&", "&", true, false),
    SIMPLE(null, "", ",", false, false);
    
    private final Character zzvk;
    private final String zzvl;
    private final String zzvm;
    private final boolean zzvn;
    private final boolean zzvo;

    zzfx(Character ch, String str, String str2, boolean z, boolean z2) {
        this.zzvk = ch;
        this.zzvl = (String) zzkv.checkNotNull(str);
        this.zzvm = (String) zzkv.checkNotNull(str2);
        this.zzvn = z;
        this.zzvo = z2;
        if (ch != null) {
            zzfu.zzvb.put(ch, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzfj() {
        return this.zzvl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzfk() {
        return this.zzvm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzfl() {
        return this.zzvn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzfm() {
        return this.zzvk == null ? 0 : 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzah(String str) {
        if (this.zzvo) {
            return zzii.zzaq(str);
        }
        return zzii.zzao(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzfn() {
        return this.zzvo;
    }
}
