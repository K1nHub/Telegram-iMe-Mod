package com.google.android.gms.internal.firebase_ml;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.api.AuthProxy;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.internal.firebase_ml.zzem;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class zzqf implements zzno<zzit, zzqe> {
    private String zzbak;
    private final boolean zzbal;
    private final GoogleApiClient zzbam;
    private final zzir zzban;
    private final String zzsl;
    private static final zzft zzbai = new zzgf();
    private static final zzgj zzbaj = zzgs.zzgp();
    private static final GmsLogger zzass = new GmsLogger("ImageAnnotatorTask", "");
    private static final Map<FirebaseApp, zzqf> zzatg = new HashMap();

    public static synchronized zzqf zza(FirebaseApp firebaseApp, boolean z, GoogleApiClient googleApiClient) {
        zzqf zzqfVar;
        synchronized (zzqf.class) {
            Map<FirebaseApp, zzqf> map = zzatg;
            zzqfVar = map.get(firebaseApp);
            if (zzqfVar == null) {
                zzqfVar = new zzqf(firebaseApp, z, googleApiClient);
                map.put(firebaseApp, zzqfVar);
            }
        }
        return zzqfVar;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final zznx zzll() {
        return null;
    }

    private zzqf(FirebaseApp firebaseApp, boolean z, GoogleApiClient googleApiClient) {
        this.zzbal = z;
        if (z) {
            this.zzbam = googleApiClient;
            this.zzban = new zzqi(this);
        } else {
            this.zzbam = null;
            this.zzban = new zzqh(this, zzd(firebaseApp), firebaseApp);
        }
        this.zzsl = String.format("FirebaseML_%s", firebaseApp.getName());
    }

    private static String zzd(FirebaseApp firebaseApp) {
        Bundle bundle;
        String apiKey = firebaseApp.getOptions().getApiKey();
        Context applicationContext = firebaseApp.getApplicationContext();
        try {
            ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                return apiKey;
            }
            String string = bundle.getString("com.firebase.ml.cloud.ApiKeyForDebug");
            return !TextUtils.isEmpty(string) ? string : apiKey;
        } catch (PackageManager.NameNotFoundException e) {
            GmsLogger gmsLogger = zzass;
            String valueOf = String.valueOf(applicationContext.getPackageName());
            gmsLogger.m1097e("ImageAnnotatorTask", valueOf.length() != 0 ? "No such package: ".concat(valueOf) : new String("No such package: "), e);
            return apiKey;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzb(Context context, String str) {
        try {
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, str);
            if (packageCertificateHashBytes == null) {
                GmsLogger gmsLogger = zzass;
                String valueOf = String.valueOf(str);
                gmsLogger.m1098e("ImageAnnotatorTask", valueOf.length() != 0 ? "Could not get fingerprint hash: ".concat(valueOf) : new String("Could not get fingerprint hash: "));
                return null;
            }
            return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
        } catch (PackageManager.NameNotFoundException e) {
            GmsLogger gmsLogger2 = zzass;
            String valueOf2 = String.valueOf(str);
            gmsLogger2.m1097e("ImageAnnotatorTask", valueOf2.length() != 0 ? "No such package: ".concat(valueOf2) : new String("No such package: "), e);
            return null;
        }
    }

    private final String getSpatulaHeader() throws FirebaseMLException {
        if (!this.zzbam.isConnected()) {
            this.zzbam.blockingConnect(3L, TimeUnit.SECONDS);
        }
        try {
            return AuthProxy.ProxyApi.getSpatulaHeader(this.zzbam).await(3L, TimeUnit.SECONDS).getSpatulaHeader();
        } catch (SecurityException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final zzit zza(zzqe zzqeVar) throws FirebaseMLException {
        zziw zzc = new zziw().zzc(Collections.singletonList(new zziu().zzb(zzqeVar.features).zza(new zzjf().zze(zzqeVar.zzbag)).zza(zzqeVar.imageContext)));
        int i = 14;
        try {
            zzio zzhd = ((zzin) new zzin(zzbai, zzbaj, new zzqj(this)).zzi(this.zzsl)).zza(this.zzban).zzhd();
            if (this.zzbal) {
                String spatulaHeader = getSpatulaHeader();
                this.zzbak = spatulaHeader;
                if (TextUtils.isEmpty(spatulaHeader)) {
                    zzass.m1098e("ImageAnnotatorTask", "Failed to contact Google Play services for certificate fingerprint matching. Please ensure you have latest Google Play services installed");
                    throw new FirebaseMLException("Failed to contact Google Play services for certificate fingerprint matching. Please ensure you have latest Google Play services installed", 14);
                }
            }
            List<zzit> zzhh = new zziq(zzhd).zza(zzc).zzei().zzhh();
            if (zzhh != null && zzhh.size() > 0) {
                return zzhh.get(0);
            }
            throw new FirebaseMLException("Empty response from cloud vision api.", 13);
        } catch (zzeo e) {
            GmsLogger gmsLogger = zzass;
            String valueOf = String.valueOf(e.zzeb());
            StringBuilder sb = new StringBuilder(valueOf.length() + 44);
            sb.append("batchAnnotateImages call failed with error: ");
            sb.append(valueOf);
            gmsLogger.m1098e("ImageAnnotatorTask", sb.toString());
            if (this.zzbal) {
                Log.d("ImageAnnotatorTask", "If you are developing / testing on a simulator, either register your development app on Firebase console or turn off enforceCertFingerprintMatch()");
            }
            String message = e.getMessage();
            if (e.getStatusCode() != 400) {
                if (e.zzeb() != null && e.zzeb().zzdy() != null) {
                    i = 13;
                    for (zzem.zza zzaVar : e.zzeb().zzdy()) {
                        String reason = zzaVar.getReason();
                        if (reason != null) {
                            if (reason.equals("rateLimitExceeded") || reason.equals("dailyLimitExceeded") || reason.equals("userRateLimitExceeded")) {
                                i = 8;
                                continue;
                            } else {
                                if (!reason.equals("accessNotConfigured")) {
                                    if (reason.equals("forbidden") || reason.equals("inactiveBillingState")) {
                                        message = String.format("If you haven't set up billing, please go to Firebase console to set up billing: %s. If you are specifying a debug Api Key override and turned on Api Key restrictions, make sure the restrictions are set up correctly", "https://firebase.corp.google.com/u/0/project/_/overview?purchaseBillingPlan=true");
                                    }
                                }
                                i = 7;
                                continue;
                            }
                        }
                        if (i != 13) {
                            break;
                        }
                    }
                } else {
                    i = 13;
                }
            }
            throw new FirebaseMLException(message, i);
        } catch (IOException e2) {
            zzass.m1097e("ImageAnnotatorTask", "batchAnnotateImages call failed with exception: ", e2);
            throw new FirebaseMLException("Cloud Vision batchAnnotateImages call failure", 13, e2);
        }
    }
}
