package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzuu;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzwv implements zzwc {
    private final int flags;
    private final String info;
    private final Object[] zzbvg;
    private final zzwe zzbvj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwv(zzwe zzweVar, String str, Object[] objArr) {
        this.zzbvj = zzweVar;
        this.info = str;
        this.zzbvg = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.flags = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.flags = i | (charAt2 << i2);
                return;
            }
            i |= (charAt2 & 8191) << i2;
            i2 += 13;
            i3 = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzsx() {
        return this.info;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] zzsy() {
        return this.zzbvg;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwc
    public final zzwe zzsn() {
        return this.zzbvj;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwc
    public final int zzsl() {
        return (this.flags & 1) == 1 ? zzuu.zze.zzbte : zzuu.zze.zzbtf;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwc
    public final boolean zzsm() {
        return (this.flags & 2) == 2;
    }
}
