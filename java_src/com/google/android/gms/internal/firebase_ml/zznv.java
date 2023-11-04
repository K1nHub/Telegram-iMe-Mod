package com.google.android.gms.internal.firebase_ml;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import androidx.core.p010os.ConfigurationCompat;
import androidx.core.p010os.LocaleListCompat;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.firebase.FirebaseApp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class zznv {
    private static final GmsLogger zzass = new GmsLogger("MlStatsLogger", "");
    private static final Map<String, zznv> zzatg = new HashMap();
    private static List<String> zzath;
    private final FirebaseApp firebaseApp;
    private final String zzati;
    private final String zzatj;
    private final String zzatk;
    private final String zzatl;
    private final String zzatm;
    private final ClearcutLogger zzatn;
    private final zzob zzato;
    private final Map<zzmd, Long> zzatp = new HashMap();
    private final int zzatq;

    private zznv(FirebaseApp firebaseApp, int i) {
        this.firebaseApp = firebaseApp;
        this.zzatq = i;
        String projectId = firebaseApp.getOptions().getProjectId();
        this.zzatk = projectId == null ? "" : projectId;
        String gcmSenderId = firebaseApp.getOptions().getGcmSenderId();
        this.zzatl = gcmSenderId == null ? "" : gcmSenderId;
        String apiKey = firebaseApp.getOptions().getApiKey();
        this.zzatm = apiKey != null ? apiKey : "";
        Context applicationContext = firebaseApp.getApplicationContext();
        this.zzatn = ClearcutLogger.anonymousLogger(applicationContext, "FIREBASE_ML_SDK");
        this.zzati = applicationContext.getPackageName();
        this.zzatj = zznm.zza(applicationContext);
        this.zzato = zzob.zzc(firebaseApp);
    }

    public static synchronized zznv zza(FirebaseApp firebaseApp, int i) {
        zznv zznvVar;
        synchronized (zznv.class) {
            Preconditions.checkNotNull(firebaseApp);
            String str = "";
            if (i == 1) {
                str = "_vision";
            } else if (i == 2) {
                str = "_model";
            } else if (i == 3) {
                str = "_natural_language";
            } else if (i == 4) {
                str = "_model_download";
            } else if (i == 5) {
                str = "_automl";
            }
            String valueOf = String.valueOf(firebaseApp.getPersistenceKey());
            String concat = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
            Map<String, zznv> map = zzatg;
            zznvVar = map.get(concat);
            if (zznvVar == null) {
                zznvVar = new zznv(firebaseApp, i);
                map.put(concat, zznvVar);
            }
        }
        return zznvVar;
    }

    public final synchronized void zza(zzlu.zzs.zza zzaVar, zzmd zzmdVar) {
        if (!zzeu()) {
            zzass.m1100d("MlStatsLogger", "Logging is disabled.");
            return;
        }
        String zzld = zzaVar.zzjk().zzld();
        zzaVar.zza(zzmdVar).zza(zzlu.zzam.zzle().zzbe(this.zzati).zzbf(this.zzatj).zzbg(this.zzatk).zzbj(this.zzatl).zzbk(this.zzatm).zzbi(("NA".equals(zzld) || "".equals(zzld)) ? "NA" : "NA").zzr(zzlm()).zzbh(zznl.zzli().getVersion("firebase-ml-common")));
        zzlu.zzs zzsVar = (zzlu.zzs) ((zzuu) zzaVar.zzrq());
        GmsLogger gmsLogger = zzass;
        String valueOf = String.valueOf(zzsVar);
        StringBuilder sb = new StringBuilder(valueOf.length() + 30);
        sb.append("Logging FirebaseMlSdkLogEvent ");
        sb.append(valueOf);
        gmsLogger.m1100d("MlStatsLogger", sb.toString());
        this.zzatn.newEvent(zzsVar.toByteArray()).log();
    }

    public final synchronized void zza(zzny zznyVar, zzmd zzmdVar) {
        if (zzeu()) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.zzatp.get(zzmdVar) == null || elapsedRealtime - this.zzatp.get(zzmdVar).longValue() > TimeUnit.SECONDS.toMillis(30L)) {
                this.zzatp.put(zzmdVar, Long.valueOf(elapsedRealtime));
                zza(zznyVar.zzlo(), zzmdVar);
            }
        }
    }

    private static synchronized List<String> zzlm() {
        synchronized (zznv.class) {
            List<String> list = zzath;
            if (list != null) {
                return list;
            }
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            zzath = new ArrayList(locales.size());
            for (int i = 0; i < locales.size(); i++) {
                zzath.add(zznm.zza(locales.get(i)));
            }
            return zzath;
        }
    }

    private final boolean zzeu() {
        int i = this.zzatq;
        if (i != 1) {
            if (i != 2) {
                return i == 3 || i == 4 || i == 5;
            }
            return this.zzato.zzls();
        }
        return this.zzato.zzlr();
    }
}
