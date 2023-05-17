package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.common.modeldownload.FirebaseRemoteModel;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Locale;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes.dex */
public final class zzph {
    private static final GmsLogger zzass = new GmsLogger("RmModelInfoRetriever", "");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzpe zzb(FirebaseApp firebaseApp, FirebaseRemoteModel firebaseRemoteModel, zzpa zzpaVar) throws FirebaseMLException {
        zzpe zza;
        if (firebaseRemoteModel.isBaseModel()) {
            zza = zzoh.zza(firebaseRemoteModel, zzpaVar);
        } else {
            zza = zzoy.zza(firebaseApp, firebaseRemoteModel, zzpaVar);
        }
        if (zza != null) {
            zzpaVar.zza(zzmc.NO_ERROR, false, zza.zzmo(), zzlu.zzw.zza.MODEL_INFO_RETRIEVAL_SUCCEEDED);
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HttpsURLConnection zza(String str, zzpa zzpaVar) throws FirebaseMLException {
        String str2;
        zzmc zzmcVar;
        if (str == null) {
            return null;
        }
        try {
            zzpl zzplVar = new zzpl(str);
            zzass.m789d("RmModelInfoRetriever", str.length() != 0 ? "Checking model URL: ".concat(str) : new String("Checking model URL: "));
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) zzplVar.openConnection();
            httpsURLConnection.setConnectTimeout(2000);
            httpsURLConnection.connect();
            int responseCode = httpsURLConnection.getResponseCode();
            if (responseCode == 200 || responseCode == 304) {
                return httpsURLConnection;
            }
            if (responseCode == 408) {
                zzmcVar = zzmc.TIME_OUT_FETCHING_MODEL_METADATA;
            } else {
                zzmcVar = zzmc.MODEL_INFO_DOWNLOAD_UNSUCCESSFUL_HTTP_STATUS;
            }
            zzpaVar.zza(zzmcVar, httpsURLConnection.getResponseCode());
            InputStream errorStream = httpsURLConnection.getErrorStream();
            throw new FirebaseMLException(String.format(Locale.getDefault(), "Failed to connect to Firebase ML console server with HTTP status code: %d and error message: %s", Integer.valueOf(httpsURLConnection.getResponseCode()), errorStream == null ? "" : new String(IOUtils.readInputStreamFully(errorStream))), 13);
        } catch (SocketTimeoutException e) {
            zzpaVar.zzh(zzmc.TIME_OUT_FETCHING_MODEL_METADATA);
            throw new FirebaseMLException("Failed to get model URL due to time out", 13, e);
        } catch (IOException e2) {
            zzmc zzmcVar2 = zzmc.MODEL_INFO_DOWNLOAD_CONNECTION_FAILED;
            if (e2 instanceof UnknownHostException) {
                zzmcVar2 = zzmc.NO_NETWORK_CONNECTION;
                str2 = "Failed to retrieve model info due to no internet connection.";
            } else {
                str2 = "Failed to get model URL";
            }
            zzpaVar.zzh(zzmcVar2);
            throw new FirebaseMLException(str2, 13, e2);
        }
    }
}
