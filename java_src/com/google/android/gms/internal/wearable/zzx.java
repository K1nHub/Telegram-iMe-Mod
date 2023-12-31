package com.google.android.gms.internal.wearable;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzx extends zzbv implements zzdd {
    private static final zzx zzb;
    private byte zzf = 2;
    private zzcc zze = zzbv.zzT();

    static {
        zzx zzxVar = new zzx();
        zzb = zzxVar;
        zzbv.zzZ(zzx.class, zzxVar);
    }

    private zzx() {
    }

    public static zzn zza() {
        return (zzn) zzb.zzN();
    }

    public static zzx zzc(byte[] bArr) throws zzcf {
        return (zzx) zzbv.zzP(zzb, bArr);
    }

    public static zzx zzd(byte[] bArr, zzbj zzbjVar) throws zzcf {
        return (zzx) zzbv.zzQ(zzb, bArr, zzbjVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzf(zzx zzxVar, Iterable iterable) {
        zzcc zzccVar = zzxVar.zze;
        if (!zzccVar.zzc()) {
            zzxVar.zze = zzbv.zzU(zzccVar);
        }
        zzag.zzJ(iterable, zzxVar.zze);
    }

    public final List zze() {
        return this.zze;
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
                        this.zzf = obj == null ? (byte) 0 : (byte) 1;
                        return null;
                    }
                    return new zzn(null);
                }
                return new zzx();
            }
            return zzbv.zzY(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001Л", new Object[]{"zze", zzw.class});
        }
        return Byte.valueOf(this.zzf);
    }
}
