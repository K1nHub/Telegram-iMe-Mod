package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.gms.vision.Frame;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.vision.common.FirebaseVisionImage;
import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes.dex */
public class zzql<TDetectionResult> implements Closeable {
    private final zznr zzaxd;
    private final zzno<TDetectionResult, zzqp> zzbbi;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzql(FirebaseApp firebaseApp, zzno<TDetectionResult, zzqp> zznoVar) {
        Preconditions.checkNotNull(firebaseApp, "FirebaseApp must not be null");
        Preconditions.checkNotNull(firebaseApp.getPersistenceKey(), "Firebase app name must not be null");
        this.zzbbi = zznoVar;
        zznr zza = zznr.zza(firebaseApp);
        this.zzaxd = zza;
        zza.zza(zznoVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Task<TDetectionResult> zza(FirebaseVisionImage firebaseVisionImage, boolean z, boolean z2) {
        Preconditions.checkNotNull(firebaseVisionImage, "FirebaseVisionImage can not be null");
        Frame zzb = firebaseVisionImage.zzb(z, z2);
        if (zzb.getMetadata().getWidth() >= 32 && zzb.getMetadata().getHeight() >= 32) {
            return this.zzaxd.zza((zzno<T, zzno<TDetectionResult, zzqp>>) this.zzbbi, (zzno<TDetectionResult, zzqp>) new zzqp(firebaseVisionImage, zzb));
        }
        return Tasks.forException(new FirebaseMLException("Image width and height should be at least 32!", 3));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.zzaxd.zzb(this.zzbbi);
    }
}
