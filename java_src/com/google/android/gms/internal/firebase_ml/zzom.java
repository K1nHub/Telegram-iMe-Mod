package com.google.android.gms.internal.firebase_ml;

import android.os.Build;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import java.io.File;
/* loaded from: classes.dex */
public final class zzom {
    private static final GmsLogger zzass = new GmsLogger("ModelFileHelper", "");
    private static String zzauk = "com.google.firebase.ml.%s.models";
    private static final String zzaul = String.format("com.google.firebase.ml.%s.models", "custom");
    private static final String zzaum = String.format(zzauk, "automl");
    private static final String zzaun = String.format(zzauk, TtmlNode.RUBY_BASE);
    private static final String zzauo = String.format(zzauk, "translate");
    private final FirebaseApp firebaseApp;

    public zzom(FirebaseApp firebaseApp) {
        this.firebaseApp = firebaseApp;
    }

    public final void zza(String str, zzor zzorVar) throws FirebaseMLException {
        if (zzorVar != zzor.AUTOML) {
            return;
        }
        File zza = zzod.zza(this.firebaseApp, str);
        if (zzc(zza.getParentFile())) {
            return;
        }
        GmsLogger gmsLogger = zzass;
        String valueOf = String.valueOf(zza.getParentFile().getAbsolutePath());
        gmsLogger.m805e("ModelFileHelper", valueOf.length() != 0 ? "Failed to delete the temp labels file directory: ".concat(valueOf) : new String("Failed to delete the temp labels file directory: "));
    }

    public final boolean zzb(String str, zzor zzorVar) throws FirebaseMLException {
        String sb;
        if (zzorVar == zzor.UNKNOWN) {
            return false;
        }
        File zza = zza(str, zzorVar, false);
        int zzb = zzb(zza);
        if (zzb == -1) {
            sb = null;
        } else {
            String absolutePath = zza.getAbsolutePath();
            StringBuilder sb2 = new StringBuilder(String.valueOf(absolutePath).length() + 12);
            sb2.append(absolutePath);
            sb2.append("/");
            sb2.append(zzb);
            sb = sb2.toString();
        }
        return sb != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File zzc(String str, zzor zzorVar) throws FirebaseMLException {
        return zza(str, zzorVar, false);
    }

    private final File zza(String str, zzor zzorVar, boolean z) throws FirebaseMLException {
        File zzb = zzb(str, zzorVar, z);
        if (!zzb.exists()) {
            GmsLogger gmsLogger = zzass;
            String valueOf = String.valueOf(zzb.getAbsolutePath());
            gmsLogger.m807d("ModelFileHelper", valueOf.length() != 0 ? "model folder does not exist, creating one: ".concat(valueOf) : new String("model folder does not exist, creating one: "));
            zzb.mkdirs();
        } else if (!zzb.isDirectory()) {
            String valueOf2 = String.valueOf(zzb);
            StringBuilder sb = new StringBuilder(valueOf2.length() + 71);
            sb.append("Can not create model folder, since an existing file has the same name: ");
            sb.append(valueOf2);
            throw new FirebaseMLException(sb.toString(), 6);
        }
        return zzb;
    }

    public final File zzb(String str, zzor zzorVar, boolean z) {
        String str2;
        File dir;
        int i = zzol.zzauj[zzorVar.ordinal()];
        if (i == 1) {
            str2 = zzaul;
        } else if (i == 2) {
            str2 = zzaun;
        } else if (i == 3) {
            str2 = zzaum;
        } else if (i == 4) {
            str2 = zzauo;
        } else {
            String name = zzorVar.name();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 69);
            sb.append("Unknown model type ");
            sb.append(name);
            sb.append(". Cannot find a dir to store the downloaded model.");
            throw new IllegalArgumentException(sb.toString());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            dir = new File(this.firebaseApp.getApplicationContext().getNoBackupFilesDir(), str2);
        } else {
            dir = this.firebaseApp.getApplicationContext().getDir(str2, 0);
        }
        if (z) {
            dir = new File(dir, "temp");
        }
        return new File(new File(dir, this.firebaseApp.getPersistenceKey()), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File zzd(String str, zzor zzorVar) throws FirebaseMLException {
        return zza(str, zzorVar, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(File file) {
        File[] listFiles = file.listFiles();
        int i = -1;
        if (listFiles.length == 0) {
            return -1;
        }
        for (File file2 : listFiles) {
            try {
                i = Math.max(i, Integer.parseInt(file2.getName()));
            } catch (NumberFormatException unused) {
                GmsLogger gmsLogger = zzass;
                String valueOf = String.valueOf(file2.getName());
                gmsLogger.m807d("ModelFileHelper", valueOf.length() != 0 ? "Contains non-integer file name ".concat(valueOf) : new String("Contains non-integer file name "));
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzc(File file) {
        boolean z;
        if (file == null) {
            return false;
        }
        if (file.isDirectory()) {
            z = true;
            for (File file2 : file.listFiles()) {
                z = z && zzc(file2);
            }
        } else {
            z = true;
        }
        return z && file.delete();
    }
}
