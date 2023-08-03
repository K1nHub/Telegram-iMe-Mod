package com.google.android.gms.internal.firebase_ml;

import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.common.modeldownload.FirebaseLocalModel;
import com.google.firebase.p020ml.common.modeldownload.FirebaseRemoteModel;
import com.google.firebase.p020ml.custom.FirebaseModelDataType;
import com.google.firebase.p020ml.custom.FirebaseModelInputOutputOptions;
import com.google.firebase.p020ml.custom.FirebaseModelInputs;
import com.google.firebase.p020ml.custom.FirebaseModelOutputs;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.tensorflow.lite.Interpreter;
import org.tensorflow.lite.TensorFlowLite;
/* loaded from: classes.dex */
public final class zzpr implements zzno<FirebaseModelOutputs, zzpn>, zznx {
    private final FirebaseLocalModel zzaui;
    private final FirebaseRemoteModel zzavo;
    private final zznv zzavr;
    private final boolean zzaxk;
    private final zzon zzaxs;
    private final AtomicLong zzaxt = new AtomicLong(0);
    private final AtomicBoolean zzaxu = new AtomicBoolean(false);
    private zzpz zzaxv = null;
    public static final String zzaxq = TensorFlowLite.version();
    private static final GmsLogger zzass = new GmsLogger("ModelInterpreterTask", "");
    private static final AtomicBoolean zzaxr = new AtomicBoolean(true);

    public zzpr(FirebaseApp firebaseApp, FirebaseLocalModel firebaseLocalModel, FirebaseRemoteModel firebaseRemoteModel, boolean z) {
        this.zzaui = firebaseLocalModel;
        this.zzavo = firebaseRemoteModel;
        this.zzaxk = z;
        this.zzavr = zznv.zza(firebaseApp, 2);
        zzpk zza = firebaseRemoteModel != null ? zzpk.zza(firebaseApp, firebaseRemoteModel, new zzpo(), new zzpq(firebaseApp.getApplicationContext()), zzor.CUSTOM) : null;
        zzoj zzojVar = firebaseLocalModel != null ? new zzoj(firebaseApp.getApplicationContext(), firebaseLocalModel) : null;
        GmsLogger gmsLogger = zzass;
        String valueOf = String.valueOf(firebaseRemoteModel);
        String valueOf2 = String.valueOf(firebaseLocalModel);
        StringBuilder sb = new StringBuilder(valueOf.length() + 35 + valueOf2.length());
        sb.append("Remote model is: ");
        sb.append(valueOf);
        sb.append(". Local model is: ");
        sb.append(valueOf2);
        gmsLogger.m807d("ModelInterpreterTask", sb.toString());
        this.zzaxs = new zzon(zza, zzojVar, new zzop(this) { // from class: com.google.android.gms.internal.firebase_ml.zzpu
            private final zzpr zzaxx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzaxx = this;
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzop
            public final void zze(List list) {
                this.zzaxx.zzg(list);
            }
        });
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final zznx zzll() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final synchronized FirebaseModelOutputs zza(zzpn zzpnVar) throws FirebaseMLException {
        Map<Integer, Object> zzmt;
        zzmc zzmcVar;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        FirebaseModelInputs firebaseModelInputs = zzpnVar.zzaxm;
        FirebaseModelInputOutputOptions firebaseModelInputOutputOptions = zzpnVar.zzaxn;
        boolean z = this.zzaxu.get();
        zzmt = firebaseModelInputOutputOptions.zzmt();
        if (this.zzaxv != null) {
            SparseArray<zzpp> zzmr = firebaseModelInputOutputOptions.zzmr();
            try {
                int size = zzmr.size();
                Object[] zzmu = firebaseModelInputs.zzmu();
                if (size != zzmu.length) {
                    throw new FirebaseMLException(String.format(Locale.US, "Expected %d inputs but got %d", Integer.valueOf(size), Integer.valueOf(zzmu.length)), 3);
                }
                for (int i = 0; i < size; i++) {
                    int keyAt = zzmr.keyAt(i);
                    Object obj = zzmu[keyAt];
                    zzpp zzppVar = zzmr.get(keyAt);
                    Preconditions.checkNotNull(obj, "Data can not be null");
                    Preconditions.checkNotNull(zzppVar, "DataSpec can not be null");
                    if (obj instanceof ByteBuffer) {
                        ByteBuffer byteBuffer = (ByteBuffer) obj;
                        if (byteBuffer.limit() != zzppVar.zzmz()) {
                            throw new FirebaseMLException(String.format(Locale.US, "Input %d should have %d bytes, but found %d bytes.", Integer.valueOf(keyAt), Integer.valueOf(zzppVar.zzmz()), Integer.valueOf(byteBuffer.limit())), 3);
                        }
                    } else if (obj.getClass().isArray()) {
                        int zzm = FirebaseModelDataType.zzm(obj);
                        if (zzm != zzppVar.getType()) {
                            throw new FirebaseMLException(String.format(Locale.US, "Input %d should be %d type, but found %d type.", Integer.valueOf(keyAt), Integer.valueOf(zzppVar.getType()), Integer.valueOf(zzm)), 3);
                        }
                        List<Integer> zzn = zzps.zzn(obj);
                        if (zzn.size() != zzppVar.zzmy().length) {
                            throw new FirebaseMLException(String.format(Locale.US, "Dimension of input %d is %d, but %d is expected.", Integer.valueOf(keyAt), Integer.valueOf(zzn.size()), Integer.valueOf(zzppVar.zzmy().length)), 3);
                        }
                        for (int i2 = 0; i2 < zzn.size(); i2++) {
                            if (zzn.get(i2).intValue() != zzppVar.zzmy()[i2]) {
                                throw new FirebaseMLException(String.format(Locale.US, "The size of %d-th dimension of input %d is %d, but %d is expected.", Integer.valueOf(keyAt), Integer.valueOf(i2), zzn.get(i2), Integer.valueOf(zzppVar.zzmy()[i2])), 3);
                            }
                        }
                        continue;
                    } else {
                        throw new FirebaseMLException(String.format(Locale.US, "Input %d must be either an array or a ByteBuffer.", Integer.valueOf(keyAt)), 3);
                    }
                }
                int size2 = zzmr.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    int keyAt2 = zzmr.keyAt(i3);
                    this.zzaxv.resizeInput(keyAt2, zzmr.get(keyAt2).zzmy());
                }
                try {
                    this.zzaxv.runForMultipleInputsOutputs(firebaseModelInputs.zzmu(), zzmt);
                    zza(zzmc.NO_ERROR, elapsedRealtime, zzpnVar, z);
                    zzaxr.set(false);
                } catch (Exception e) {
                    if (e.getMessage().contains("Input error:")) {
                        zzmcVar = zzmc.INCOMPATIBLE_INPUT;
                    } else if (e.getMessage().contains("Output error:")) {
                        zzmcVar = zzmc.INCOMPATIBLE_OUTPUT;
                    } else if (e.getMessage().contains("Internal error:")) {
                        zzmcVar = zzmc.TFLITE_INTERNAL_ERROR;
                    } else if (e.getMessage().contains("DataType error:")) {
                        zzmcVar = zzmc.DATA_TYPE_ERROR;
                    } else {
                        zzmcVar = zzmc.TFLITE_UNKNOWN_ERROR;
                    }
                    zza(zzmcVar, elapsedRealtime, zzpnVar, z);
                    throw e;
                }
            } catch (FirebaseMLException e2) {
                zza(zzmc.INCOMPATIBLE_INPUT, elapsedRealtime, zzpnVar, z);
                throw e2;
            }
        } else {
            zza(zzmc.UNKNOWN_ERROR, elapsedRealtime, zzpnVar, z);
            throw new FirebaseMLException("Model has not be loaded yet. Please run load() first", 9);
        }
        return new FirebaseModelOutputs(zzmt);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final synchronized void zzln() throws FirebaseMLException {
        zza(zzpt.zzaxw);
        this.zzaxu.set(this.zzaxs.zzlw());
    }

    private final synchronized void zza(final zzpx zzpxVar) throws FirebaseMLException {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        this.zzaxs.zza(new zzoq(this, zzpxVar, elapsedRealtime) { // from class: com.google.android.gms.internal.firebase_ml.zzpw
            private final zzpr zzaxx;
            private final zzpx zzayc;
            private final long zzayd;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzaxx = this;
                this.zzayc = zzpxVar;
                this.zzayd = elapsedRealtime;
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzoq
            public final void zza(MappedByteBuffer mappedByteBuffer) {
                this.zzaxx.zza(this.zzayc, this.zzayd, mappedByteBuffer);
            }
        });
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final synchronized void release() {
        zzpz zzpzVar = this.zzaxv;
        if (zzpzVar != null) {
            zzpzVar.close();
            this.zzaxv = null;
        }
        zzaxr.set(true);
    }

    public final synchronized int getInputIndex(String str) throws FirebaseMLException {
        zzpz zzpzVar;
        zzpzVar = this.zzaxv;
        if (zzpzVar == null) {
            throw new FirebaseMLException("Trying to get input index while model has not been initialized yet, or has been released.", 14);
        }
        return zzpzVar.getInputIndex(str);
    }

    public final synchronized int getOutputIndex(String str) throws FirebaseMLException {
        zzpz zzpzVar;
        zzpzVar = this.zzaxv;
        if (zzpzVar == null) {
            throw new FirebaseMLException("Trying to get output index while model has not been initialized yet, or has been released.", 14);
        }
        return zzpzVar.getOutputIndex(str);
    }

    private final void zza(final zzmc zzmcVar, final long j, final zzpn zzpnVar, final boolean z) {
        this.zzavr.zza(new zzny(this, j, zzpnVar, zzmcVar, z) { // from class: com.google.android.gms.internal.firebase_ml.zzpv
            private final zzpr zzaxx;
            private final long zzaxy;
            private final zzpn zzaxz;
            private final zzmc zzaya;
            private final boolean zzayb;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzaxx = this;
                this.zzaxy = j;
                this.zzaxz = zzpnVar;
                this.zzaya = zzmcVar;
                this.zzayb = z;
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzny
            public final zzlu.zzs.zza zzlo() {
                return this.zzaxx.zza(this.zzaxy, this.zzaxz, this.zzaya, this.zzayb);
            }
        }, zzmd.CUSTOM_MODEL_RUN);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzlu.zzs.zza zzf(List list) {
        if (list.isEmpty()) {
            list.add(zzmc.NO_ERROR);
        }
        zzlu.zzq.zza zzj = zzlu.zzq.zzjg().zzi(this.zzaxt.get()).zzk(list).zzj(this.zzaxk);
        FirebaseRemoteModel firebaseRemoteModel = this.zzavo;
        if (firebaseRemoteModel != null) {
            zzj.zzi(zzox.zza(firebaseRemoteModel, zzor.CUSTOM));
        }
        FirebaseLocalModel firebaseLocalModel = this.zzaui;
        if (firebaseLocalModel != null) {
            zzj.zzj(firebaseLocalModel.zza(zzor.CUSTOM));
        }
        return zzlu.zzs.zzjl().zza(zzlu.zzam.zzle().zzbi(zzaxq)).zza(zzj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzlu.zzs.zza zza(long j, zzpn zzpnVar, zzmc zzmcVar, boolean z) {
        zzlu.zzy zza;
        long elapsedRealtime = SystemClock.elapsedRealtime() - j;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (zzpnVar != null) {
            SparseArray<zzpp> zzmr = zzpnVar.zzaxn.zzmr();
            for (int i = 0; i < zzmr.size(); i++) {
                arrayList.add(zzmr.valueAt(i).zzna());
            }
            SparseArray<zzpp> zzms = zzpnVar.zzaxn.zzms();
            for (int i2 = 0; i2 < zzms.size(); i2++) {
                arrayList2.add(zzms.valueAt(i2).zzna());
            }
        }
        zzlu.zzp.zza zzc = zzlu.zzp.zzjc().zzc(zzlu.zzu.zzjp().zzk(elapsedRealtime).zzd(zzmcVar).zzp(zzaxr.get()).zzq(true).zzr(true).zzs(this.zzaxk));
        if (z) {
            zza = zzox.zza(this.zzavo, zzor.CUSTOM);
        } else {
            zza = this.zzaui.zza(zzor.CUSTOM);
        }
        return zzlu.zzs.zzjl().zza(zzlu.zzam.zzle().zzbi(zzaxq)).zza(zzc.zzh(zza).zze(arrayList).zzf(arrayList2).zzh(this.zzaxt.get()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzpx zzpxVar, long j, MappedByteBuffer mappedByteBuffer) throws FirebaseMLException {
        synchronized (this) {
            this.zzaxv = zzpxVar.zzc(mappedByteBuffer);
            this.zzaxt.set(SystemClock.elapsedRealtime() - j);
            this.zzaxv.setUseNNAPI(this.zzaxk);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ zzpz zzb(MappedByteBuffer mappedByteBuffer) {
        return new zzpz(new Interpreter(mappedByteBuffer, new Interpreter.Options()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzg(final List list) {
        this.zzavr.zza(new zzny(this, list) { // from class: com.google.android.gms.internal.firebase_ml.zzpy
            private final zzpr zzaxx;
            private final List zzaye;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzaxx = this;
                this.zzaye = list;
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzny
            public final zzlu.zzs.zza zzlo() {
                return this.zzaxx.zzf(this.zzaye);
            }
        }, zzmd.CUSTOM_MODEL_LOAD);
    }
}
