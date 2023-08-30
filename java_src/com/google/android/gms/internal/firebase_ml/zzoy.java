package com.google.android.gms.internal.firebase_ml;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.firebase.FirebaseApp;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.common.modeldownload.FirebaseRemoteModel;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzoy {
    private static final GmsLogger zzass = new GmsLogger("ModelInfoRetriever", "");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzpe zza(FirebaseApp firebaseApp, FirebaseRemoteModel firebaseRemoteModel, zzpa zzpaVar) throws FirebaseMLException {
        JSONObject jSONObject;
        HttpsURLConnection zza = zzph.zza(zza(firebaseApp, firebaseRemoteModel.getModelNameForBackend(), zzpaVar), zzpaVar);
        if (zza == null) {
            return null;
        }
        String headerField = zza.getHeaderField(RtspHeaders.CONTENT_LOCATION);
        String headerField2 = zza.getHeaderField("ETag");
        GmsLogger gmsLogger = zzass;
        String valueOf = String.valueOf(headerField);
        gmsLogger.m807d("ModelInfoRetriever", valueOf.length() != 0 ? "Received download URL: ".concat(valueOf) : new String("Received download URL: "));
        if (headerField == null) {
            return null;
        }
        if (headerField2 == null) {
            zzpaVar.zza(zzmc.MODEL_INFO_DOWNLOAD_NO_HASH, false, zzor.UNKNOWN, zzlu.zzw.zza.MODEL_INFO_RETRIEVAL_FAILED);
            throw new FirebaseMLException("No hash value for the custom model", 13);
        }
        firebaseRemoteModel.setModelHash(headerField2);
        try {
            String str = new String(IOUtils.readInputStreamFully(zza.getInputStream()));
            if (TextUtils.isEmpty(str)) {
                str = "{}";
            }
            JSONObject jSONObject2 = new JSONObject(str);
            zzor zzorVar = jSONObject2.has("inferenceInfo") ? zzor.AUTOML : zzor.CUSTOM;
            if (zzorVar.equals(zzor.AUTOML) && (jSONObject = jSONObject2.getJSONObject("inferenceInfo")) != null) {
                JSONArray jSONArray = jSONObject.getJSONArray("labels");
                if (jSONArray == null || jSONArray.length() == 0) {
                    throw new FirebaseMLException("Cannot parse AutoML model's labels from model downloading backend.", 13);
                }
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.getString(i));
                }
                zzod.zza(firebaseApp, firebaseRemoteModel.getUniqueModelNameForPersist(), arrayList);
            }
            return new zzpe(firebaseRemoteModel.getUniqueModelNameForPersist(), Uri.parse(headerField), headerField2, zzorVar);
        } catch (IOException | JSONException e) {
            throw new FirebaseMLException("Failed to parse the model backend response message", 13, e);
        }
    }

    private static String zza(FirebaseApp firebaseApp, String str, zzpa zzpaVar) throws FirebaseMLException {
        String str2;
        String gcmSenderId = firebaseApp.getOptions().getGcmSenderId();
        if (gcmSenderId == null) {
            throw new FirebaseMLException("GCM sender id cannot be null in FirebaseOptions. Please configure FirebaseApp properly.", 9);
        }
        FirebaseInstanceId firebaseInstanceId = FirebaseInstanceId.getInstance(firebaseApp);
        if (firebaseInstanceId == null) {
            zzass.m799w("ModelInfoRetriever", "Cannot get a valid instance of FirebaseInstanceId. Cannot retrieve model info.");
            return null;
        }
        String id = firebaseInstanceId.getId();
        if (id == null) {
            zzass.m799w("ModelInfoRetriever", "Firebase instance id is null. Cannot retrieve model info.");
            return null;
        }
        try {
            String token = firebaseInstanceId.getToken(gcmSenderId, "*");
            if (token == null) {
                zzass.m799w("ModelInfoRetriever", "Firebase instance token is null. Cannot retrieve model info.");
                return null;
            }
            return String.format("https://mlkit.googleapis.com/v1beta1/projects/%s/models/%s/versions/active?key=%s&app_instance_id=%s&app_instance_token=%s", firebaseApp.getOptions().getProjectId(), str, firebaseApp.getOptions().getApiKey(), id, token);
        } catch (IOException e) {
            zzmc zzmcVar = zzmc.MODEL_INFO_DOWNLOAD_CONNECTION_FAILED;
            if (e instanceof UnknownHostException) {
                zzmcVar = zzmc.NO_NETWORK_CONNECTION;
                str2 = "Failed to retrieve model info due to no internet connection.";
            } else {
                str2 = "Failed to get model URL";
            }
            zzpaVar.zza(zzmcVar, false, zzor.UNKNOWN, zzlu.zzw.zza.MODEL_INFO_RETRIEVAL_FAILED);
            throw new FirebaseMLException(str2, 13, e);
        }
    }
}
