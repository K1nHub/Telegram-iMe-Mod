package com.google.android.gms.internal.wearable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzv extends zzbv implements zzdd {
    private static final zzv zzb;
    private int zze;
    private zzu zzg;
    private byte zzh = 2;
    private int zzf = 1;

    static {
        zzv zzvVar = new zzv();
        zzb = zzvVar;
        zzbv.zzZ(zzv.class, zzvVar);
    }

    private zzv() {
    }

    public static zzp zza() {
        return (zzp) zzb.zzN();
    }

    public static zzv zzd() {
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zze(zzv zzvVar, zzu zzuVar) {
        zzuVar.getClass();
        zzvVar.zzg = zzuVar;
        zzvVar.zze |= 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzg(zzv zzvVar, int i) {
        zzvVar.zzf = i;
        zzvVar.zze |= 1;
    }

    public final zzu zzb() {
        zzu zzuVar = this.zzg;
        return zzuVar == null ? zzu.zzj() : zzuVar;
    }

    public final int zzf() {
        int zza = zzs.zza(this.zzf);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.wearable.zzbv
    public final Object zzG(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzb;
                        }
                        this.zzh = obj == null ? (byte) 0 : (byte) 1;
                        return null;
                    }
                    return new zzp(null);
                }
                return new zzv();
            }
            return zzbv.zzY(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001ᔌ\u0000\u0002ᐉ\u0001", new Object[]{"zze", "zzf", zzr.zza, "zzg"});
        }
        return Byte.valueOf(this.zzh);
    }
}
