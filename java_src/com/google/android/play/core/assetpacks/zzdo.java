package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.play.core.common.LocalTestingException;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzdo implements zzy {
    private static final com.google.android.play.core.internal.zzag zza = new com.google.android.play.core.internal.zzag("FakeAssetPackService");
    private final String zzc;
    private final zzbb zzd;
    private final Context zzf;
    private final zzed zzg;
    private final com.google.android.play.core.internal.zzco<Executor> zzh;
    private final Handler zzj = new Handler(Looper.getMainLooper());

    static {
        new AtomicInteger(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdo(File file, zzbb zzbbVar, zzco zzcoVar, Context context, zzed zzedVar, com.google.android.play.core.internal.zzco<Executor> zzcoVar2, zzeb zzebVar) {
        this.zzc = file.getAbsolutePath();
        this.zzd = zzbbVar;
        this.zzf = context;
        this.zzg = zzedVar;
        this.zzh = zzcoVar2;
    }

    static long zzk(int i, long j) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return j;
            }
            return 0L;
        }
        return j / 2;
    }

    private final Bundle zzp(int i, String str, int i2) throws LocalTestingException {
        Bundle bundle = new Bundle();
        bundle.putInt("app_version_code", this.zzg.zza());
        bundle.putInt("session_id", i);
        File[] zzs = zzs(str);
        ArrayList<String> arrayList = new ArrayList<>();
        long j = 0;
        for (File file : zzs) {
            j += file.length();
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            arrayList2.add(i2 == 3 ? new Intent().setData(Uri.EMPTY) : null);
            String zza2 = com.google.android.play.core.internal.zzcj.zza(file);
            bundle.putParcelableArrayList(com.google.android.play.core.assetpacks.model.zzb.zzb("chunk_intents", str, zza2), arrayList2);
            bundle.putString(com.google.android.play.core.assetpacks.model.zzb.zzb("uncompressed_hash_sha256", str, zza2), zzr(file));
            bundle.putLong(com.google.android.play.core.assetpacks.model.zzb.zzb("uncompressed_size", str, zza2), file.length());
            arrayList.add(zza2);
        }
        bundle.putStringArrayList(com.google.android.play.core.assetpacks.model.zzb.zza("slice_ids", str), arrayList);
        bundle.putLong(com.google.android.play.core.assetpacks.model.zzb.zza("pack_version", str), this.zzg.zza());
        bundle.putInt(com.google.android.play.core.assetpacks.model.zzb.zza("status", str), i2);
        bundle.putInt(com.google.android.play.core.assetpacks.model.zzb.zza("error_code", str), 0);
        bundle.putLong(com.google.android.play.core.assetpacks.model.zzb.zza("bytes_downloaded", str), zzk(i2, j));
        bundle.putLong(com.google.android.play.core.assetpacks.model.zzb.zza("total_bytes_to_download", str), j);
        bundle.putStringArrayList("pack_names", new ArrayList<>(Arrays.asList(str)));
        bundle.putLong("bytes_downloaded", zzk(i2, j));
        bundle.putLong("total_bytes_to_download", j);
        final Intent putExtra = new Intent("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE").putExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE", bundle);
        this.zzj.post(new Runnable() { // from class: com.google.android.play.core.assetpacks.zzdl
            @Override // java.lang.Runnable
            public final void run() {
                zzdo.this.zzl(putExtra);
            }
        });
        return bundle;
    }

    private static String zzr(File file) throws LocalTestingException {
        try {
            return zzdq.zza(Arrays.asList(file));
        } catch (IOException e) {
            throw new LocalTestingException(String.format("Could not digest file: %s.", file), e);
        } catch (NoSuchAlgorithmException e2) {
            throw new LocalTestingException("SHA256 algorithm not supported.", e2);
        }
    }

    private final File[] zzs(final String str) throws LocalTestingException {
        File file = new File(this.zzc);
        if (!file.isDirectory()) {
            throw new LocalTestingException(String.format("Local testing directory '%s' not found.", file));
        }
        File[] listFiles = file.listFiles(new FilenameFilter() { // from class: com.google.android.play.core.assetpacks.zzdj
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str2) {
                return str2.startsWith(String.valueOf(str).concat("-")) && str2.endsWith(".apk");
            }
        });
        if (listFiles == null) {
            throw new LocalTestingException(String.format("Failed fetching APKs for pack '%s'.", str));
        }
        if (listFiles.length != 0) {
            for (File file2 : listFiles) {
                if (com.google.android.play.core.internal.zzcj.zza(file2).equals(str)) {
                    return listFiles;
                }
            }
            throw new LocalTestingException(String.format("No master slice available for pack '%s'.", str));
        }
        throw new LocalTestingException(String.format("No APKs available for pack '%s'.", str));
    }

    @Override // com.google.android.play.core.assetpacks.zzy
    public final Task<ParcelFileDescriptor> zza(int i, String str, String str2, int i2) {
        File[] zzs;
        int i3;
        zza.zzd("getChunkFileDescriptor(session=%d, %s, %s, %d)", Integer.valueOf(i), str, str2, Integer.valueOf(i2));
        com.google.android.play.core.tasks.zzi zziVar = new com.google.android.play.core.tasks.zzi();
        try {
        } catch (LocalTestingException e) {
            zza.zze("getChunkFileDescriptor failed", e);
            zziVar.zzb(e);
        } catch (FileNotFoundException e2) {
            zza.zze("getChunkFileDescriptor failed", e2);
            zziVar.zzb(new LocalTestingException("Asset Slice file not found.", e2));
        }
        for (File file : zzs(str)) {
            if (com.google.android.play.core.internal.zzcj.zza(file).equals(str2)) {
                zziVar.zzc(ParcelFileDescriptor.open(file, 268435456));
                return zziVar.zza();
            }
        }
        throw new LocalTestingException(String.format("Local testing slice for '%s' not found.", str2));
    }

    @Override // com.google.android.play.core.assetpacks.zzy
    public final Task<List<String>> zzd(Map<String, Long> map) {
        zza.zzd("syncPacks()", new Object[0]);
        return Tasks.zzb(new ArrayList());
    }

    @Override // com.google.android.play.core.assetpacks.zzy
    public final void zze(List<String> list) {
        zza.zzd("cancelDownload(%s)", list);
    }

    @Override // com.google.android.play.core.assetpacks.zzy
    public final void zzf() {
        zza.zzd("keepAlive", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.zzy
    public final void zzg(int i, String str, String str2, int i2) {
        zza.zzd("notifyChunkTransferred", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.zzy
    public final void zzh(final int i, final String str) {
        zza.zzd("notifyModuleCompleted", new Object[0]);
        this.zzh.zza().execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.zzdk
            @Override // java.lang.Runnable
            public final void run() {
                zzdo.this.zzn(i, str);
            }
        });
    }

    @Override // com.google.android.play.core.assetpacks.zzy
    public final void zzi(int i) {
        zza.zzd("notifySessionFailed", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzl(Intent intent) {
        this.zzd.zza(this.zzf, intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzn(int i, String str) {
        try {
            zzp(i, str, 4);
        } catch (LocalTestingException e) {
            zza.zze("notifyModuleCompleted failed", e);
        }
    }
}
