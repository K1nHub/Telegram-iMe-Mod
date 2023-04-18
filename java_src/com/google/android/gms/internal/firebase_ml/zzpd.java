package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.GmsLogger;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.common.modeldownload.FirebaseRemoteModel;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
/* loaded from: classes.dex */
public final class zzpd {
    private static final GmsLogger zzass = new GmsLogger("RemoteModelFileManager", "");
    private final FirebaseApp firebaseApp;
    private final zzob zzato;
    private final String zzauc;
    private final zzom zzaud;
    private final FirebaseRemoteModel zzavo;
    private final zzor zzavv;
    private final zzpm zzavw;
    private final zzoo zzavx;

    public zzpd(FirebaseApp firebaseApp, FirebaseRemoteModel firebaseRemoteModel, zzot zzotVar, zzor zzorVar) {
        String uniqueModelNameForPersist;
        this.firebaseApp = firebaseApp;
        this.zzavo = firebaseRemoteModel;
        if (zzorVar == zzor.TRANSLATE) {
            uniqueModelNameForPersist = firebaseRemoteModel.getModelNameForBackend();
        } else {
            uniqueModelNameForPersist = firebaseRemoteModel.getUniqueModelNameForPersist();
        }
        this.zzauc = uniqueModelNameForPersist;
        this.zzavv = zzorVar;
        this.zzavw = new zzpm(zzotVar);
        this.zzato = zzob.zzc(firebaseApp);
        this.zzaud = new zzom(firebaseApp);
        int i = zzpg.zzauj[zzorVar.ordinal()];
        if (i == 1) {
            this.zzavx = new zzod(firebaseApp, uniqueModelNameForPersist);
        } else if (i == 2) {
            this.zzavx = new zzpi(firebaseApp, uniqueModelNameForPersist);
        } else if (i == 3 || i == 4) {
            this.zzavx = new zzpf(firebaseApp, uniqueModelNameForPersist);
        } else {
            throw new IllegalArgumentException("Unexpected model type");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b7, code lost:
        r9 = com.google.android.gms.internal.firebase_ml.zzpd.zzass;
        r10 = java.lang.String.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c5, code lost:
        if (r10.length() == 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c7, code lost:
        r10 = "Hash does not match with expected: ".concat(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cc, code lost:
        r10 = new java.lang.String("Hash does not match with expected: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d1, code lost:
        r9.m785d("RemoteModelFileManager", r10);
        r11.zza(com.google.android.gms.internal.firebase_ml.zzmc.MODEL_HASH_MISMATCH, true, r8.zzavv, com.google.android.gms.internal.firebase_ml.zzlu.zzw.zza.SUCCEEDED);
        r9 = new com.google.firebase.p020ml.common.FirebaseMLException("Hash does not match with expected", 102);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.io.File zza(android.os.ParcelFileDescriptor r9, java.lang.String r10, com.google.android.gms.internal.firebase_ml.zzpa r11) throws com.google.firebase.p020ml.common.FirebaseMLException {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzpd.zza(android.os.ParcelFileDescriptor, java.lang.String, com.google.android.gms.internal.firebase_ml.zzpa):java.io.File");
    }

    public final synchronized boolean zzd(File file) throws FirebaseMLException {
        File[] listFiles;
        File zzc = this.zzaud.zzc(this.zzauc, this.zzavv);
        if (zzc.exists()) {
            boolean z = true;
            for (File file2 : zzc.listFiles()) {
                if (!file2.equals(file) && !this.zzaud.zzc(file2)) {
                    z = false;
                }
            }
            return z;
        }
        return false;
    }

    public final synchronized void zze(File file) {
        File zzb = this.zzaud.zzb(this.zzauc, this.zzavv, false);
        if (zzb.exists()) {
            for (File file2 : zzb.listFiles()) {
                if (file2.equals(file)) {
                    this.zzaud.zzc(file);
                    return;
                }
            }
        }
    }

    public final synchronized File zzf(File file) throws FirebaseMLException {
        File file2 = new File(String.valueOf(this.zzaud.zzc(this.zzauc, this.zzavv).getAbsolutePath()).concat("/0"));
        return file2.exists() ? file : file.renameTo(file2) ? file2 : file;
    }

    public final synchronized String zzmm() throws FirebaseMLException {
        File zzc = this.zzaud.zzc(this.zzauc, this.zzavv);
        int zzb = zzom.zzb(zzc);
        if (zzb < 0) {
            return null;
        }
        String absolutePath = zzc.getAbsolutePath();
        StringBuilder sb = new StringBuilder(String.valueOf(absolutePath).length() + 12);
        sb.append(absolutePath);
        sb.append("/");
        sb.append(zzb);
        return sb.toString();
    }

    private static /* synthetic */ void zza(Throwable th, FileOutputStream fileOutputStream) {
        if (th == null) {
            fileOutputStream.close();
            return;
        }
        try {
            fileOutputStream.close();
        } catch (Throwable th2) {
            zzlm.zza(th, th2);
        }
    }

    private static /* synthetic */ void zza(Throwable th, FileInputStream fileInputStream) {
        if (th == null) {
            fileInputStream.close();
            return;
        }
        try {
            fileInputStream.close();
        } catch (Throwable th2) {
            zzlm.zza(th, th2);
        }
    }
}
