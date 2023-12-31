package com.google.android.gms.internal.mlkit_common;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public final class zzfd extends zzfb {
    private final byte[] zza;
    private final boolean zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    private zzfd(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzg = Integer.MAX_VALUE;
        this.zza = bArr;
        this.zzc = i2 + i;
        this.zze = i;
        this.zzf = i;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzfb
    public final int zza(int i) throws zzgb {
        if (i < 0) {
            throw new zzgb("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int zza = i + zza();
        int i2 = this.zzg;
        if (zza > i2) {
            throw new zzgb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzg = zza;
        int i3 = this.zzc + this.zzd;
        this.zzc = i3;
        int i4 = i3 - this.zzf;
        if (i4 > zza) {
            int i5 = i4 - zza;
            this.zzd = i5;
            this.zzc = i3 - i5;
        } else {
            this.zzd = 0;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzfb
    public final int zza() {
        return this.zze - this.zzf;
    }
}
