package com.google.android.play.core.assetpacks;

import java.util.Arrays;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
final class zzbq extends zzet {
    private final String zza;
    private final long zzb;
    private final int zzc;
    private final boolean zzd;
    private final boolean zze;
    private final byte[] zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbq(String str, long j, int i, boolean z, boolean z2, byte[] bArr) {
        this.zza = str;
        this.zzb = j;
        this.zzc = i;
        this.zzd = z;
        this.zze = z2;
        this.zzf = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzet) {
            zzet zzetVar = (zzet) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzetVar.zzc()) : zzetVar.zzc() == null) {
                if (this.zzb == zzetVar.zzb() && this.zzc == zzetVar.zza() && this.zzd == zzetVar.zze() && this.zze == zzetVar.zzd()) {
                    if (Arrays.equals(this.zzf, zzetVar instanceof zzbq ? ((zzbq) zzetVar).zzf : zzetVar.zzf())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final String toString() {
        String str = this.zza;
        long j = this.zzb;
        int i = this.zzc;
        boolean z = this.zzd;
        boolean z2 = this.zze;
        String arrays = Arrays.toString(this.zzf);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 126 + String.valueOf(arrays).length());
        sb.append("ZipEntry{name=");
        sb.append(str);
        sb.append(", size=");
        sb.append(j);
        sb.append(", compressionMethod=");
        sb.append(i);
        sb.append(", isPartial=");
        sb.append(z);
        sb.append(", isEndOfArchive=");
        sb.append(z2);
        sb.append(", headerBytes=");
        sb.append(arrays);
        sb.append("}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.zzet
    public final int zza() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.zzet
    public final long zzb() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.zzet
    public final String zzc() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.zzet
    public final boolean zzd() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.zzet
    public final boolean zze() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.zzet
    public final byte[] zzf() {
        return this.zzf;
    }

    public final int hashCode() {
        String str = this.zza;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.zzb;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ this.zzc) * 1000003) ^ (true != this.zzd ? 1237 : 1231)) * 1000003) ^ (true == this.zze ? 1231 : 1237)) * 1000003) ^ Arrays.hashCode(this.zzf);
    }
}
