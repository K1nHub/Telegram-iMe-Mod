package com.google.android.gms.internal.firebase_ml;

import android.app.DownloadManager;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.common.modeldownload.FirebaseModelDownloadConditions;
import com.google.firebase.p020ml.common.modeldownload.FirebaseRemoteModel;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzoz {
    private static final GmsLogger zzass = new GmsLogger("ModelDownloadManager", "");
    private static final Map<String, zzoz> zzavk = new HashMap();
    private final FirebaseApp firebaseApp;
    private final zzob zzato;
    private final Map<Long, zzpb> zzavl = new HashMap();
    private final Map<Long, TaskCompletionSource<Void>> zzavm = new HashMap();
    private final DownloadManager zzavn;
    private final FirebaseRemoteModel zzavo;
    private final zzpa zzavp;
    private final zzok zzavq;

    public static synchronized zzoz zza(FirebaseApp firebaseApp, FirebaseRemoteModel firebaseRemoteModel, zzok zzokVar, zzpa zzpaVar) {
        zzoz zzozVar;
        synchronized (zzoz.class) {
            String uniqueModelNameForPersist = firebaseRemoteModel.getUniqueModelNameForPersist();
            Map<String, zzoz> map = zzavk;
            if (!map.containsKey(uniqueModelNameForPersist)) {
                map.put(uniqueModelNameForPersist, new zzoz(firebaseApp, firebaseRemoteModel, zzokVar, zzpaVar));
            }
            zzozVar = map.get(uniqueModelNameForPersist);
        }
        return zzozVar;
    }

    private zzoz(FirebaseApp firebaseApp, FirebaseRemoteModel firebaseRemoteModel, zzok zzokVar, zzpa zzpaVar) {
        this.firebaseApp = firebaseApp;
        this.zzavo = firebaseRemoteModel;
        DownloadManager downloadManager = (DownloadManager) firebaseApp.getApplicationContext().getSystemService("download");
        this.zzavn = downloadManager;
        if (downloadManager == null) {
            zzass.m789d("ModelDownloadManager", "Download manager service is not available in the service.");
        }
        this.zzavq = zzokVar;
        this.zzavp = zzpaVar;
        this.zzato = zzob.zzc(firebaseApp);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized Long zzmb() throws FirebaseMLException {
        zzpe zzmh = zzmh();
        if (zzmh == null) {
            GmsLogger gmsLogger = zzass;
            String valueOf = String.valueOf(this.zzavo.getUniqueModelNameForPersist());
            gmsLogger.m789d("ModelDownloadManager", valueOf.length() != 0 ? "No model updates for model: ".concat(valueOf) : new String("No model updates for model: "));
            return null;
        }
        return zzb(zzmh);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized Long zzmc() {
        return this.zzato.zza(this.zzavo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized String zzmd() {
        return this.zzato.zzb(this.zzavo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzme() throws FirebaseMLException {
        Long zzmc = zzmc();
        if (this.zzavn != null && zzmc != null) {
            GmsLogger gmsLogger = zzass;
            String valueOf = String.valueOf(zzmc);
            StringBuilder sb = new StringBuilder(valueOf.length() + 44);
            sb.append("Cancel or remove existing downloading task: ");
            sb.append(valueOf);
            gmsLogger.m789d("ModelDownloadManager", sb.toString());
            if (this.zzavn.remove(zzmc.longValue()) > 0 || zzmf() == null) {
                this.zzavq.zza(this.zzavo.getUniqueModelNameForPersist(), zzmk());
                this.zzato.zzh(this.zzavo);
            }
        }
    }

    private final synchronized Long zza(DownloadManager.Request request, zzpe zzpeVar) {
        DownloadManager downloadManager = this.zzavn;
        if (downloadManager == null) {
            return null;
        }
        long enqueue = downloadManager.enqueue(request);
        GmsLogger gmsLogger = zzass;
        StringBuilder sb = new StringBuilder(53);
        sb.append("Schedule a new downloading task: ");
        sb.append(enqueue);
        gmsLogger.m789d("ModelDownloadManager", sb.toString());
        this.zzato.zza(enqueue, zzpeVar);
        this.zzavp.zza(zzmc.NO_ERROR, false, zzpeVar.zzmo(), zzlu.zzw.zza.SCHEDULED);
        return Long.valueOf(enqueue);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
        if (r0.intValue() != 16) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.lang.Integer zzmf() {
        /*
            r9 = this;
            monitor-enter(r9)
            java.lang.Long r0 = r9.zzmc()     // Catch: java.lang.Throwable -> L6a
            android.app.DownloadManager r1 = r9.zzavn     // Catch: java.lang.Throwable -> L6a
            r2 = 0
            if (r1 == 0) goto L68
            if (r0 != 0) goto Ld
            goto L68
        Ld:
            android.app.DownloadManager$Query r3 = new android.app.DownloadManager$Query     // Catch: java.lang.Throwable -> L6a
            r3.<init>()     // Catch: java.lang.Throwable -> L6a
            r4 = 1
            long[] r5 = new long[r4]     // Catch: java.lang.Throwable -> L6a
            r6 = 0
            long r7 = r0.longValue()     // Catch: java.lang.Throwable -> L6a
            r5[r6] = r7     // Catch: java.lang.Throwable -> L6a
            android.app.DownloadManager$Query r0 = r3.setFilterById(r5)     // Catch: java.lang.Throwable -> L6a
            android.database.Cursor r0 = r1.query(r0)     // Catch: java.lang.Throwable -> L6a
            if (r0 == 0) goto L3b
            boolean r1 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L6a
            if (r1 == 0) goto L3b
            java.lang.String r1 = "status"
            int r1 = r0.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L6a
            int r0 = r0.getInt(r1)     // Catch: java.lang.Throwable -> L6a
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L6a
            goto L3c
        L3b:
            r0 = r2
        L3c:
            if (r0 != 0) goto L40
            monitor-exit(r9)
            return r2
        L40:
            int r1 = r0.intValue()     // Catch: java.lang.Throwable -> L6a
            r3 = 2
            if (r1 == r3) goto L65
            int r1 = r0.intValue()     // Catch: java.lang.Throwable -> L6a
            r3 = 4
            if (r1 == r3) goto L65
            int r1 = r0.intValue()     // Catch: java.lang.Throwable -> L6a
            if (r1 == r4) goto L65
            int r1 = r0.intValue()     // Catch: java.lang.Throwable -> L6a
            r3 = 8
            if (r1 == r3) goto L65
            int r1 = r0.intValue()     // Catch: java.lang.Throwable -> L6a
            r3 = 16
            if (r1 == r3) goto L65
            goto L66
        L65:
            r2 = r0
        L66:
            monitor-exit(r9)
            return r2
        L68:
            monitor-exit(r9)
            return r2
        L6a:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzoz.zzmf():java.lang.Integer");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized ParcelFileDescriptor zzmg() {
        Long zzmc = zzmc();
        DownloadManager downloadManager = this.zzavn;
        ParcelFileDescriptor parcelFileDescriptor = null;
        if (downloadManager == null || zzmc == null) {
            return null;
        }
        try {
            parcelFileDescriptor = downloadManager.openDownloadedFile(zzmc.longValue());
        } catch (FileNotFoundException unused) {
            zzass.m787e("ModelDownloadManager", "Downloaded file is not found");
        }
        return parcelFileDescriptor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zze(String str, zzor zzorVar) throws FirebaseMLException {
        this.zzato.zza(this.zzavo, str, zzorVar);
        zzme();
    }

    private final synchronized zzpe zzmh() throws FirebaseMLException {
        String str;
        String str2;
        boolean zzmj = zzmj();
        boolean z = false;
        if (zzmj) {
            this.zzavp.zza(zzmc.NO_ERROR, false, this.zzato.zzd(this.zzavo), zzlu.zzw.zza.LIVE);
        }
        zzpe zzb = zzph.zzb(this.firebaseApp, this.zzavo, this.zzavp);
        if (zzb == null) {
            return null;
        }
        FirebaseApp firebaseApp = this.firebaseApp;
        FirebaseRemoteModel firebaseRemoteModel = this.zzavo;
        str = zzb.zzawa;
        zzob zzc = zzob.zzc(firebaseApp);
        if (str.equals(zzc.zze(firebaseRemoteModel)) && zznm.zza(firebaseApp.getApplicationContext()).equals(zzc.zzlt())) {
            zzass.m787e("ModelDownloadManager", "The model is incompatible with TFLite and the app is not upgraded, do not download");
        } else {
            z = true;
        }
        if (!zzmj) {
            this.zzato.zzi(this.zzavo);
        }
        FirebaseApp firebaseApp2 = this.firebaseApp;
        FirebaseRemoteModel firebaseRemoteModel2 = this.zzavo;
        str2 = zzb.zzawa;
        boolean z2 = !str2.equals(zzob.zzc(firebaseApp2).zzc(firebaseRemoteModel2));
        if (!z || (zzmj && !z2)) {
            if (zzmj && (z2 ^ z)) {
                return null;
            }
            String modelName = this.zzavo.getModelName();
            StringBuilder sb = new StringBuilder(String.valueOf(modelName).length() + 46);
            sb.append("The model ");
            sb.append(modelName);
            sb.append(" is incompatible with TFLite runtime");
            throw new FirebaseMLException(sb.toString(), 100);
        }
        return zzb;
    }

    private final synchronized Long zzb(zzpe zzpeVar) throws FirebaseMLException {
        Uri uri;
        String str;
        String zzb = this.zzato.zzb(this.zzavo);
        Integer zzmf = zzmf();
        if (zzb != null) {
            str = zzpeVar.zzawa;
            if (zzb.equals(str) && zzmf != null) {
                if (!zzb(zzmf())) {
                    this.zzavp.zza(zzmc.NO_ERROR, false, zzmk(), zzlu.zzw.zza.DOWNLOADING);
                }
                zzass.m789d("ModelDownloadManager", "New model is already in downloading, do nothing.");
                return null;
            }
        }
        GmsLogger gmsLogger = zzass;
        gmsLogger.m789d("ModelDownloadManager", "Need to download a new model.");
        zzme();
        uri = zzpeVar.zzavz;
        DownloadManager.Request request = new DownloadManager.Request(uri);
        request.setDestinationUri(null);
        FirebaseModelDownloadConditions initialDownloadConditions = this.zzavo.getInitialDownloadConditions();
        if (this.zzavq.zza(zzpeVar)) {
            if (!this.zzavo.isModelUpdatesEnabled()) {
                gmsLogger.m789d("ModelDownloadManager", "Model update is disabled and have a previous downloaded model, skip downloading");
                return null;
            }
            gmsLogger.m789d("ModelDownloadManager", "Model update is enabled and have a previous downloaded model, use download condition");
            this.zzavp.zza(zzmc.NO_ERROR, false, zzpeVar.zzmo(), zzlu.zzw.zza.UPDATE_AVAILABLE);
            initialDownloadConditions = this.zzavo.getUpdatesDownloadConditions();
        }
        gmsLogger.m789d("ModelDownloadManager", "Use initial download conditions.");
        if (Build.VERSION.SDK_INT >= 24) {
            request.setRequiresCharging(initialDownloadConditions.isChargingRequired());
            request.setRequiresDeviceIdle(initialDownloadConditions.isDeviceIdleRequired());
        }
        if (initialDownloadConditions.isWifiRequired()) {
            request.setAllowedNetworkTypes(2);
        }
        return zza(request, zzpeVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
        if (r6 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004e, code lost:
        if (zzmd() == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
        r10.zzavp.zza(com.google.android.gms.internal.firebase_ml.zzmc.NO_ERROR, false, zzmk(), com.google.android.gms.internal.firebase_ml.zzlu.zzw.zza.DOWNLOADING);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
        return zzp(r6.longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0086, code lost:
        r1 = zzb(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008a, code lost:
        if (r1 == null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0094, code lost:
        return zzp(r1.longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0095, code lost:
        com.google.android.gms.internal.firebase_ml.zzoz.zzass.m785i("ModelDownloadManager", "Didn't schedule download for the updated model");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.tasks.Task<java.lang.Void> zzmi() {
        /*
            r10 = this;
            com.google.android.gms.internal.firebase_ml.zzpa r0 = r10.zzavp
            com.google.android.gms.internal.firebase_ml.zzmc r1 = com.google.android.gms.internal.firebase_ml.zzmc.NO_ERROR
            com.google.android.gms.internal.firebase_ml.zzor r2 = com.google.android.gms.internal.firebase_ml.zzor.UNKNOWN
            com.google.android.gms.internal.firebase_ml.zzlu$zzw$zza r3 = com.google.android.gms.internal.firebase_ml.zzlu.zzw.zza.EXPLICITLY_REQUESTED
            r4 = 0
            r0.zza(r1, r4, r2, r3)
            r0 = 0
            com.google.android.gms.internal.firebase_ml.zzpe r1 = r10.zzmh()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> L13
            r2 = r0
            goto L16
        L13:
            r1 = move-exception
            r2 = r1
            r1 = r0
        L16:
            r3 = 13
            java.lang.Integer r5 = r10.zzmf()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            java.lang.Long r6 = r10.zzmc()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            boolean r7 = r10.zzmj()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            if (r7 != 0) goto L84
            boolean r7 = zzb(r5)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            if (r7 == 0) goto L2d
            goto L84
        L2d:
            r7 = 1
            if (r5 == 0) goto L45
            int r8 = r5.intValue()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            r9 = 4
            if (r8 == r9) goto L46
            int r8 = r5.intValue()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            r9 = 2
            if (r8 == r9) goto L46
            int r5 = r5.intValue()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            if (r5 != r7) goto L45
            goto L46
        L45:
            r7 = r4
        L46:
            if (r7 == 0) goto L66
            if (r6 == 0) goto L66
            java.lang.String r5 = r10.zzmd()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            if (r5 == 0) goto L66
            com.google.android.gms.internal.firebase_ml.zzpa r0 = r10.zzavp     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            com.google.android.gms.internal.firebase_ml.zzmc r1 = com.google.android.gms.internal.firebase_ml.zzmc.NO_ERROR     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            com.google.android.gms.internal.firebase_ml.zzor r2 = r10.zzmk()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            com.google.android.gms.internal.firebase_ml.zzlu$zzw$zza r5 = com.google.android.gms.internal.firebase_ml.zzlu.zzw.zza.DOWNLOADING     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            r0.zza(r1, r4, r2, r5)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            long r0 = r6.longValue()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            com.google.android.gms.tasks.Task r0 = r10.zzp(r0)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            return r0
        L66:
            if (r1 != 0) goto L69
            goto L6d
        L69:
            java.lang.Long r0 = r10.zzb(r1)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
        L6d:
            if (r0 != 0) goto L7b
            com.google.firebase.ml.common.FirebaseMLException r0 = new com.google.firebase.ml.common.FirebaseMLException     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            java.lang.String r1 = "Failed to schedule the download task"
            r0.<init>(r1, r3, r2)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            com.google.android.gms.tasks.Task r0 = com.google.android.gms.tasks.Tasks.forException(r0)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            return r0
        L7b:
            long r0 = r0.longValue()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            com.google.android.gms.tasks.Task r0 = r10.zzp(r0)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            return r0
        L84:
            if (r1 == 0) goto L9e
            java.lang.Long r1 = r10.zzb(r1)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            if (r1 == 0) goto L95
            long r0 = r1.longValue()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            com.google.android.gms.tasks.Task r0 = r10.zzp(r0)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            return r0
        L95:
            com.google.android.gms.common.internal.GmsLogger r1 = com.google.android.gms.internal.firebase_ml.zzoz.zzass     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            java.lang.String r2 = "ModelDownloadManager"
            java.lang.String r4 = "Didn't schedule download for the updated model"
            r1.m785i(r2, r4)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
        L9e:
            if (r5 == 0) goto Lb4
            int r1 = r5.intValue()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            r2 = 16
            if (r1 != r2) goto Lb4
            com.google.firebase.ml.common.FirebaseMLException r0 = r10.zzb(r6)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            r10.zzme()     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            com.google.android.gms.tasks.Task r0 = com.google.android.gms.tasks.Tasks.forException(r0)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            return r0
        Lb4:
            com.google.android.gms.tasks.Task r0 = com.google.android.gms.tasks.Tasks.forResult(r0)     // Catch: com.google.firebase.p020ml.common.FirebaseMLException -> Lb9
            return r0
        Lb9:
            r0 = move-exception
            com.google.firebase.ml.common.FirebaseMLException r1 = new com.google.firebase.ml.common.FirebaseMLException
            java.lang.String r2 = "Failed to ensure the model is downloaded."
            r1.<init>(r2, r3, r0)
            com.google.android.gms.tasks.Task r0 = com.google.android.gms.tasks.Tasks.forException(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzoz.zzmi():com.google.android.gms.tasks.Task");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zza(Long l) {
        int columnIndex;
        DownloadManager downloadManager = this.zzavn;
        Cursor query = (downloadManager == null || l == null) ? null : downloadManager.query(new DownloadManager.Query().setFilterById(l.longValue()));
        if (query == null || !query.moveToFirst() || (columnIndex = query.getColumnIndex("reason")) == -1) {
            return 0;
        }
        return query.getInt(columnIndex);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzmj() throws FirebaseMLException {
        return this.zzavq.zzb(this.zzavo.getUniqueModelNameForPersist(), this.zzato.zzd(this.zzavo));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzor zzmk() {
        String zzb = this.zzato.zzb(this.zzavo);
        if (zzb == null) {
            return zzor.UNKNOWN;
        }
        return this.zzato.zzbs(zzb);
    }

    private final synchronized zzpb zzn(long j) {
        if (!this.zzavl.containsKey(Long.valueOf(j))) {
            this.zzavl.put(Long.valueOf(j), new zzpb(this, j, zzo(j)));
        }
        return this.zzavl.get(Long.valueOf(j));
    }

    private final synchronized TaskCompletionSource<Void> zzo(long j) {
        if (!this.zzavm.containsKey(Long.valueOf(j))) {
            this.zzavm.put(Long.valueOf(j), new TaskCompletionSource<>());
        }
        return this.zzavm.get(Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FirebaseMLException zzb(Long l) {
        String str;
        DownloadManager downloadManager = this.zzavn;
        Cursor query = (downloadManager == null || l == null) ? null : downloadManager.query(new DownloadManager.Query().setFilterById(l.longValue()));
        int i = 13;
        if (query == null || !query.moveToFirst()) {
            str = "Model downloading failed";
        } else {
            int i2 = query.getInt(query.getColumnIndex("reason"));
            if (i2 == 1006) {
                i = 101;
                str = "Model downloading failed due to insufficient space on the device.";
            } else {
                StringBuilder sb = new StringBuilder(84);
                sb.append("Model downloading failed due to error code: ");
                sb.append(i2);
                sb.append(" from Android DownloadManager");
                str = sb.toString();
            }
        }
        return new FirebaseMLException(str, i);
    }

    private static boolean zzb(Integer num) {
        if (num != null) {
            return num.intValue() == 8 || num.intValue() == 16;
        }
        return false;
    }

    private final Task<Void> zzp(long j) {
        this.firebaseApp.getApplicationContext().registerReceiver(zzn(j), new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), null, zznn.zzlk().getHandler());
        return zzo(j).getTask();
    }
}
