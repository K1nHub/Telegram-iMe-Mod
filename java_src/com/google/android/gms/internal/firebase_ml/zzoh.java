package com.google.android.gms.internal.firebase_ml;

import android.net.Uri;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.common.modeldownload.FirebaseRemoteModel;
import javax.net.ssl.HttpsURLConnection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzoh {
    private static final GmsLogger zzass = new GmsLogger("BaseModelInfoRetriever", "");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzpe zza(FirebaseRemoteModel firebaseRemoteModel, zzpa zzpaVar) throws FirebaseMLException {
        HttpsURLConnection zza = zzph.zza(String.format("https://mlkit.googleapis.com/_i/v1/1p/m?n=%s", firebaseRemoteModel.getModelNameForBackend()), zzpaVar);
        if (zza == null) {
            return null;
        }
        String headerField = zza.getHeaderField(RtspHeaders.CONTENT_LOCATION);
        String headerField2 = zza.getHeaderField("ETag");
        GmsLogger gmsLogger = zzass;
        String valueOf = String.valueOf(headerField);
        gmsLogger.m1100d("BaseModelInfoRetriever", valueOf.length() != 0 ? "Received download URL: ".concat(valueOf) : new String("Received download URL: "));
        if (headerField == null) {
            return null;
        }
        if (headerField2 == null) {
            zzpaVar.zza(zzmc.MODEL_INFO_DOWNLOAD_NO_HASH, false, zzor.BASE, zzlu.zzw.zza.MODEL_INFO_RETRIEVAL_FAILED);
            throw new FirebaseMLException("No hash value for the base model", 13);
        } else if (!firebaseRemoteModel.baseModelHashMatches(headerField2)) {
            throw new FirebaseMLException("Downloaded model hash doesn't match the expected. ", 13);
        } else {
            firebaseRemoteModel.setModelHash(headerField2);
            return new zzpe(firebaseRemoteModel.getUniqueModelNameForPersist(), Uri.parse(headerField), headerField2, zzor.BASE);
        }
    }
}
