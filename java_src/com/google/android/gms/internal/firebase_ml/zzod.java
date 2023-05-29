package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.GmsLogger;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class zzod implements zzoo {
    private static final GmsLogger zzass = new GmsLogger("AutoMLModelFileManager", "");
    private final FirebaseApp firebaseApp;
    private final String zzauc;
    private zzom zzaud;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzod(FirebaseApp firebaseApp, String str) {
        this.firebaseApp = firebaseApp;
        this.zzauc = str;
        this.zzaud = new zzom(firebaseApp);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzoo
    public final File zza(File file) throws FirebaseMLException {
        File zzc = this.zzaud.zzc(this.zzauc, zzor.AUTOML);
        File file2 = new File(new File(zzc, String.valueOf(zzom.zzb(zzc) + 1)), "model.tflite");
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        File zza = zza(this.firebaseApp, this.zzauc);
        File file3 = new File(parentFile, "labels.txt");
        if (file.renameTo(file2) && zza.renameTo(file3)) {
            zzass.m789d("AutoMLModelFileManager", "Rename to serving model successfully");
            file2.setExecutable(false);
            file2.setWritable(false);
            file3.setExecutable(false);
            file3.setWritable(false);
            File file4 = new File(parentFile, "manifest.json");
            final String format = String.format("{\n\t\"modelType\": \"%s\",\n\t\"modelFile\": \"%s\",\n\t\"labelsFile\": \"%s\"\n}", "IMAGE_LABELING", "model.tflite", "labels.txt");
            try {
                zza(file4, new zzoi(format) { // from class: com.google.android.gms.internal.firebase_ml.zzog
                    private final String zzaue;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzaue = format;
                    }

                    @Override // com.google.android.gms.internal.firebase_ml.zzoi
                    public final void zza(BufferedWriter bufferedWriter) {
                        bufferedWriter.write(this.zzaue);
                    }
                });
                return file2.getParentFile();
            } catch (IOException e) {
                String valueOf = String.valueOf(this.zzauc);
                throw new FirebaseMLException(valueOf.length() != 0 ? "Failed to write manifest json for the AutoML model: ".concat(valueOf) : new String("Failed to write manifest json for the AutoML model: "), 13, e);
            }
        }
        GmsLogger gmsLogger = zzass;
        gmsLogger.m789d("AutoMLModelFileManager", "Rename to serving model failed, remove the temp file.");
        if (!file.delete()) {
            String valueOf2 = String.valueOf(file.getAbsolutePath());
            gmsLogger.m789d("AutoMLModelFileManager", valueOf2.length() != 0 ? "Failed to delete the temp model file: ".concat(valueOf2) : new String("Failed to delete the temp model file: "));
        }
        if (zza.delete()) {
            return null;
        }
        String valueOf3 = String.valueOf(zza.getAbsolutePath());
        gmsLogger.m789d("AutoMLModelFileManager", valueOf3.length() != 0 ? "Failed to delete the temp labels file: ".concat(valueOf3) : new String("Failed to delete the temp labels file: "));
        return null;
    }

    public static void zza(FirebaseApp firebaseApp, String str, final List<String> list) throws FirebaseMLException {
        try {
            zza(zza(firebaseApp, str), new zzoi(list) { // from class: com.google.android.gms.internal.firebase_ml.zzof
                private final List zzauf;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzauf = list;
                }

                @Override // com.google.android.gms.internal.firebase_ml.zzoi
                public final void zza(BufferedWriter bufferedWriter) {
                    zzod.zza(this.zzauf, bufferedWriter);
                }
            });
        } catch (IOException e) {
            String valueOf = String.valueOf(str);
            throw new FirebaseMLException(valueOf.length() != 0 ? "Failed to write labels file for the AutoML model: ".concat(valueOf) : new String("Failed to write labels file for the AutoML model: "), 13, e);
        }
    }

    public static File zza(FirebaseApp firebaseApp, String str) throws FirebaseMLException {
        File zzd = new zzom(firebaseApp).zzd(str, zzor.AUTOML);
        if (zzd.exists() && zzd.isFile() && !zzd.delete()) {
            String valueOf = String.valueOf(zzd.getAbsolutePath());
            throw new FirebaseMLException(valueOf.length() != 0 ? "Failed to delete the temp labels file: ".concat(valueOf) : new String("Failed to delete the temp labels file: "), 13);
        }
        if (!zzd.exists()) {
            GmsLogger gmsLogger = zzass;
            String valueOf2 = String.valueOf(zzd.getAbsolutePath());
            gmsLogger.m789d("AutoMLModelFileManager", valueOf2.length() != 0 ? "Temp labels folder does not exist, creating one: ".concat(valueOf2) : new String("Temp labels folder does not exist, creating one: "));
            if (!zzd.mkdirs()) {
                throw new FirebaseMLException("Failed to create a directory to hold the AutoML model's labels file.", 13);
            }
        }
        return new File(zzd, "labels.txt");
    }

    private static void zza(File file, zzoi zzoiVar) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), Charset.forName("UTF-8")));
        try {
            zzoiVar.zza(bufferedWriter);
            bufferedWriter.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    bufferedWriter.close();
                } catch (Throwable th3) {
                    zzlm.zza(th, th3);
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(List list, BufferedWriter bufferedWriter) throws IOException {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            bufferedWriter.write((String) it.next());
            bufferedWriter.newLine();
        }
    }
}
