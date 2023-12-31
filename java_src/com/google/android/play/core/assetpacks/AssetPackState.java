package com.google.android.play.core.assetpacks;

import android.os.Bundle;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public abstract class AssetPackState {
    public static AssetPackState zzb(String str, int i, int i2, long j, long j2, double d, int i3, String str2, String str3) {
        return new zzbn(str, i, i2, j, j2, (int) Math.rint(100.0d * d), i3, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AssetPackState zzc(Bundle bundle, String str, zzco zzcoVar, zzeb zzebVar, zzbe zzbeVar) {
        int zza = zzbeVar.zza(bundle.getInt(com.google.android.play.core.assetpacks.model.zzb.zza("status", str)), str);
        int i = bundle.getInt(com.google.android.play.core.assetpacks.model.zzb.zza("error_code", str));
        long j = bundle.getLong(com.google.android.play.core.assetpacks.model.zzb.zza("bytes_downloaded", str));
        long j2 = bundle.getLong(com.google.android.play.core.assetpacks.model.zzb.zza("total_bytes_to_download", str));
        double zza2 = zzcoVar.zza(str);
        long j3 = bundle.getLong(com.google.android.play.core.assetpacks.model.zzb.zza("pack_version", str));
        long j4 = bundle.getLong(com.google.android.play.core.assetpacks.model.zzb.zza("pack_base_version", str));
        int i2 = 1;
        int i3 = 4;
        if (zza != 4) {
            i3 = zza;
        } else if (j4 != 0 && j4 != j3) {
            i2 = 2;
        }
        return zzb(str, i3, i, j, j2, zza2, i2, bundle.getString(com.google.android.play.core.assetpacks.model.zzb.zza("pack_version_tag", str), String.valueOf(bundle.getInt("app_version_code"))), zzebVar.zza(str));
    }

    public abstract long bytesDownloaded();

    public abstract int errorCode();

    public abstract String name();

    public abstract int status();

    public abstract long totalBytesToDownload();

    public abstract int transferProgressPercentage();

    public abstract int zza();

    public abstract String zzd();

    public abstract String zze();
}
