package com.google.android.gms.internal.firebase_ml;

import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.vision.cloud.FirebaseVisionCloudDetectorOptions;
import com.google.firebase.p020ml.vision.common.FirebaseVisionImage;
import java.io.Closeable;
import java.io.IOException;
import java.util.Collections;
/* loaded from: classes.dex */
public abstract class zzqd<ResultType> implements Closeable {
    protected final FirebaseApp firebaseApp;
    private final zzjh imageContext;
    private final zznr zzaxd;
    private final zzqg zzbae;
    private final zzjg zzbaf;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzqd(FirebaseApp firebaseApp, String str, FirebaseVisionCloudDetectorOptions firebaseVisionCloudDetectorOptions) {
        this(firebaseApp, new zzjg().zza(Integer.valueOf(firebaseVisionCloudDetectorOptions.getMaxResults())).zzav(str).zzau(zzqc.zzbm(firebaseVisionCloudDetectorOptions.getModelType())), (zzjh) null, firebaseVisionCloudDetectorOptions.isEnforceCertFingerprintMatch());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract ResultType zza(zzit zzitVar, float f);

    protected abstract int zznj();

    protected abstract int zznk();

    /* JADX INFO: Access modifiers changed from: protected */
    public zzqd(FirebaseApp firebaseApp, String str, zzjh zzjhVar, boolean z) {
        this(firebaseApp, new zzjg().zzav(str).zzau(zzqc.zzbm(1)), (zzjh) Preconditions.checkNotNull(zzjhVar, "ImageContext must not be null"), z);
    }

    private zzqd(FirebaseApp firebaseApp, zzjg zzjgVar, zzjh zzjhVar, boolean z) {
        Preconditions.checkNotNull(firebaseApp, "FirebaseApp must not be null");
        Preconditions.checkNotNull(firebaseApp.getPersistenceKey(), "Firebase app name must not be null");
        this.zzbaf = (zzjg) Preconditions.checkNotNull(zzjgVar);
        this.zzaxd = zznr.zza(firebaseApp);
        this.zzbae = new zzqg(this, firebaseApp, z);
        this.firebaseApp = firebaseApp;
        this.imageContext = zzjhVar;
    }

    public final Task<ResultType> zza(FirebaseVisionImage firebaseVisionImage) {
        Preconditions.checkNotNull(firebaseVisionImage, "Input image can not be null");
        Pair<byte[], Float> zzf = firebaseVisionImage.zzf(zznj(), zznk());
        if (zzf.first == null) {
            return Tasks.forException(new FirebaseMLException("Can not convert the image format", 3));
        }
        return this.zzaxd.zza((zzno<T, zzqg>) this.zzbae, (zzqg) new zzqe((byte[]) zzf.first, ((Float) zzf.second).floatValue(), Collections.singletonList(this.zzbaf), this.imageContext));
    }
}
