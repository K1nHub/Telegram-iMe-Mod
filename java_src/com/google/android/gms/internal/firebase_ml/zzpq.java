package com.google.android.gms.internal.firebase_ml;

import android.content.Context;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.common.modeldownload.FirebaseLocalModel;
import java.nio.MappedByteBuffer;
/* loaded from: classes.dex */
public final class zzpq implements zzpj {
    private final Context zzaxp;

    public zzpq(Context context) {
        this.zzaxp = context;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzpj
    public final MappedByteBuffer zzbv(String str) throws FirebaseMLException {
        return new zzoj(this.zzaxp, new FirebaseLocalModel.Builder(ImagesContract.LOCAL).setFilePath(str).build()).load();
    }
}
