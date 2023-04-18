package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.GmsLogger;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzpf implements zzoo {
    private final FirebaseApp firebaseApp;
    private final String zzauc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzpf(FirebaseApp firebaseApp, String str) {
        this.firebaseApp = firebaseApp;
        this.zzauc = str;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzoo
    public final File zza(File file) throws FirebaseMLException {
        GmsLogger gmsLogger;
        GmsLogger gmsLogger2;
        GmsLogger gmsLogger3;
        File zzc = new zzom(this.firebaseApp).zzc(this.zzauc, zzor.CUSTOM);
        File file2 = new File(zzc, String.valueOf(zzom.zzb(zzc) + 1));
        if (file.renameTo(file2)) {
            gmsLogger3 = zzpd.zzass;
            gmsLogger3.m785d("RemoteModelFileManager", "Rename to serving model successfully");
            file2.setExecutable(false);
            file2.setWritable(false);
            return file2;
        }
        gmsLogger = zzpd.zzass;
        gmsLogger.m785d("RemoteModelFileManager", "Rename to serving model failed, remove the temp file.");
        if (file.delete()) {
            return null;
        }
        gmsLogger2 = zzpd.zzass;
        String valueOf = String.valueOf(file.getAbsolutePath());
        gmsLogger2.m785d("RemoteModelFileManager", valueOf.length() != 0 ? "Failed to delete the temp file: ".concat(valueOf) : new String("Failed to delete the temp file: "));
        return null;
    }
}
