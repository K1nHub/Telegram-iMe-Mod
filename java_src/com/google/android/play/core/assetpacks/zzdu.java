package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzdu {
    private static final com.google.android.play.core.internal.zzag zza = new com.google.android.play.core.internal.zzag("MergeSliceTaskHandler");
    private final zzbh zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdu(zzbh zzbhVar) {
        this.zzb = zzbhVar;
    }

    private static void zzb(File file, File file2) {
        File[] listFiles;
        if (file.isDirectory()) {
            file2.mkdirs();
            for (File file3 : file.listFiles()) {
                zzb(file3, new File(file2, file3.getName()));
            }
            if (file.delete()) {
                return;
            }
            String valueOf = String.valueOf(file);
            StringBuilder sb = new StringBuilder(valueOf.length() + 28);
            sb.append("Unable to delete directory: ");
            sb.append(valueOf);
            throw new zzck(sb.toString());
        } else if (file2.exists()) {
            String valueOf2 = String.valueOf(file2);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 51);
            sb2.append("File clashing with existing file from other slice: ");
            sb2.append(valueOf2);
            throw new zzck(sb2.toString());
        } else if (!file.renameTo(file2)) {
            String valueOf3 = String.valueOf(file);
            StringBuilder sb3 = new StringBuilder(valueOf3.length() + 21);
            sb3.append("Unable to move file: ");
            sb3.append(valueOf3);
            throw new zzck(sb3.toString());
        }
    }

    public final void zza(zzdt zzdtVar) {
        File zzq = this.zzb.zzq(zzdtVar.zzl, zzdtVar.zza, zzdtVar.zzb, zzdtVar.zzc);
        if (!zzq.exists()) {
            throw new zzck(String.format("Cannot find verified files for slice %s.", zzdtVar.zzc), zzdtVar.zzk);
        }
        File zzj = this.zzb.zzj(zzdtVar.zzl, zzdtVar.zza, zzdtVar.zzb);
        if (!zzj.exists()) {
            zzj.mkdirs();
        }
        zzb(zzq, zzj);
        try {
            this.zzb.zzA(zzdtVar.zzl, zzdtVar.zza, zzdtVar.zzb, this.zzb.zzb(zzdtVar.zzl, zzdtVar.zza, zzdtVar.zzb) + 1);
        } catch (IOException e) {
            zza.zzb("Writing merge checkpoint failed with %s.", e.getMessage());
            throw new zzck("Writing merge checkpoint failed.", e, zzdtVar.zzk);
        }
    }
}
