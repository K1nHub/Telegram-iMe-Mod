package com.google.android.gms.internal.icing;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
public final class zzao extends zzcx<zzap, zzao> implements zzef {
    private zzao() {
        super(zzap.zzb());
    }

    public final zzao zza(String str) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzap.zzc((zzap) this.zza, str);
        return this;
    }

    public final zzao zzb(String str) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzap.zzd((zzap) this.zza, str);
        return this;
    }

    public final zzao zzc(int i) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzap.zze((zzap) this.zza, i);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzao(zzam zzamVar) {
        super(zzap.zzb());
    }
}
