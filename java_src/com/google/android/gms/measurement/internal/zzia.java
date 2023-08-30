package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.exoplayer2.C0479C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzob;
import com.google.android.gms.internal.measurement.zzoe;
import com.google.android.gms.internal.measurement.zzok;
import com.google.android.gms.internal.measurement.zzpx;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzia extends zzf {
    @VisibleForTesting
    protected zzhz zza;
    final zzr zzb;
    @VisibleForTesting
    protected boolean zzc;
    private zzgv zzd;
    private final Set<zzgw> zze;
    private boolean zzf;
    private final AtomicReference<String> zzg;
    private final Object zzh;
    private zzag zzi;
    private int zzj;
    private final AtomicLong zzk;
    private long zzl;
    private int zzm;
    private final zzky zzn;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzia(zzfv zzfvVar) {
        super(zzfvVar);
        this.zze = new CopyOnWriteArraySet();
        this.zzh = new Object();
        this.zzc = true;
        this.zzn = new zzho(this);
        this.zzg = new AtomicReference<>();
        this.zzi = new zzag(null, null);
        this.zzj = 100;
        this.zzl = -1L;
        this.zzm = 100;
        this.zzk = new AtomicLong(0L);
        this.zzb = new zzr(zzfvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzab */
    public final void zzB(Bundle bundle, long j) {
        zzoe.zzc();
        if (!this.zzs.zzf().zzs(null, zzdy.zzat) || TextUtils.isEmpty(this.zzs.zzh().zzn())) {
            zzR(bundle, 0, j);
        } else {
            this.zzs.zzay().zzl().zza("Using developer consent only; google app id found");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzac(Boolean bool, boolean z) {
        zzg();
        zza();
        this.zzs.zzay().zzc().zzb("Setting app measurement enabled (FE)", bool);
        this.zzs.zzm().zzh(bool);
        if (z) {
            zzfa zzm = this.zzs.zzm();
            zzfv zzfvVar = zzm.zzs;
            zzm.zzg();
            SharedPreferences.Editor edit = zzm.zza().edit();
            if (bool != null) {
                edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit.remove("measurement_enabled_from_api");
            }
            edit.apply();
        }
        if (this.zzs.zzK() || !(bool == null || bool.booleanValue())) {
            zzad();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzad() {
        zzg();
        String zza = this.zzs.zzm().zzh.zza();
        if (zza != null) {
            if ("unset".equals(zza)) {
                zzZ("app", "_npa", null, this.zzs.zzav().currentTimeMillis());
            } else {
                zzZ("app", "_npa", Long.valueOf(true != "true".equals(zza) ? 0L : 1L), this.zzs.zzav().currentTimeMillis());
            }
        }
        if (!this.zzs.zzJ() || !this.zzc) {
            this.zzs.zzay().zzc().zza("Updating Scion state (FE)");
            this.zzs.zzt().zzI();
            return;
        }
        this.zzs.zzay().zzc().zza("Recording app launch after enabling measurement for the first time (FE)");
        zzy();
        zzok.zzc();
        if (this.zzs.zzf().zzs(null, zzdy.zzaj)) {
            this.zzs.zzu().zza.zza();
        }
        this.zzs.zzaz().zzp(new zzhd(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzv(zzia zziaVar, zzag zzagVar, int i, long j, boolean z, boolean z2) {
        zziaVar.zzg();
        zziaVar.zza();
        if (j > zziaVar.zzl || !zzag.zzl(zziaVar.zzm, i)) {
            zzfa zzm = zziaVar.zzs.zzm();
            zzfv zzfvVar = zzm.zzs;
            zzm.zzg();
            if (zzm.zzl(i)) {
                SharedPreferences.Editor edit = zzm.zza().edit();
                edit.putString("consent_settings", zzagVar.zzi());
                edit.putInt("consent_source", i);
                edit.apply();
                zziaVar.zzl = j;
                zziaVar.zzm = i;
                zziaVar.zzs.zzt().zzF(z);
                if (z2) {
                    zziaVar.zzs.zzt().zzu(new AtomicReference<>());
                    return;
                }
                return;
            }
            zziaVar.zzs.zzay().zzi().zzb("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
            return;
        }
        zziaVar.zzs.zzay().zzi().zzb("Dropped out-of-date consent setting, proposed settings", zzagVar);
    }

    public final void zzA() {
        if (!(this.zzs.zzau().getApplicationContext() instanceof Application) || this.zza == null) {
            return;
        }
        ((Application) this.zzs.zzau().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzC(Bundle bundle) {
        if (bundle == null) {
            this.zzs.zzm().zzr.zzb(new Bundle());
            return;
        }
        Bundle zza = this.zzs.zzm().zzr.zza();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj == null || (obj instanceof String) || (obj instanceof Long) || (obj instanceof Double)) {
                if (zzkz.zzag(str)) {
                    this.zzs.zzay().zzl().zzb("Invalid default event parameter name. Name", str);
                } else if (obj == null) {
                    zza.remove(str);
                } else {
                    zzkz zzv = this.zzs.zzv();
                    this.zzs.zzf();
                    if (zzv.zzZ("param", str, 100, obj)) {
                        this.zzs.zzv().zzN(zza, str, obj);
                    }
                }
            } else {
                if (this.zzs.zzv().zzae(obj)) {
                    this.zzs.zzv().zzM(this.zzn, null, 27, null, null, 0);
                }
                this.zzs.zzay().zzl().zzc("Invalid default event parameter type. Name, value", str, obj);
            }
        }
        this.zzs.zzv();
        int zzc = this.zzs.zzf().zzc();
        if (zza.size() > zzc) {
            int i = 0;
            for (String str2 : new TreeSet(zza.keySet())) {
                i++;
                if (i > zzc) {
                    zza.remove(str2);
                }
            }
            this.zzs.zzv().zzM(this.zzn, null, 26, null, null, 0);
            this.zzs.zzay().zzl().zza("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.zzs.zzm().zzr.zzb(zza);
        this.zzs.zzt().zzH(zza);
    }

    public final void zzD(String str, String str2, Bundle bundle) {
        zzE(str, str2, bundle, true, true, this.zzs.zzav().currentTimeMillis());
    }

    public final void zzE(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        String str3 = str == null ? "app" : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (zzkz.zzak(str2, "screen_view")) {
            this.zzs.zzs().zzx(bundle2, j);
            return;
        }
        boolean z3 = true;
        if (z2 && this.zzd != null && !zzkz.zzag(str2)) {
            z3 = false;
        }
        zzM(str3, str2, j, bundle2, z2, z3, z, null);
    }

    public final void zzF(String str, String str2, Bundle bundle, String str3) {
        zzfv.zzO();
        zzM(TtmlNode.TEXT_EMPHASIS_AUTO, str2, this.zzs.zzav().currentTimeMillis(), bundle, false, true, true, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzG(String str, String str2, Bundle bundle) {
        zzg();
        zzH(str, str2, this.zzs.zzav().currentTimeMillis(), bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzH(String str, String str2, long j, Bundle bundle) {
        zzg();
        zzI(str, str2, j, bundle, true, this.zzd == null || zzkz.zzag(str2), true, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzI(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        String str4;
        long j2;
        String str5;
        String str6;
        Bundle[] bundleArr;
        Class<?> cls;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(bundle);
        zzg();
        zza();
        if (this.zzs.zzJ()) {
            List<String> zzo = this.zzs.zzh().zzo();
            if (zzo == null || zzo.contains(str2)) {
                if (!this.zzf) {
                    this.zzf = true;
                    try {
                        if (this.zzs.zzN()) {
                            cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService");
                        } else {
                            cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.zzs.zzau().getClassLoader());
                        }
                        try {
                            cls.getDeclaredMethod("initialize", Context.class).invoke(null, this.zzs.zzau());
                        } catch (Exception e) {
                            this.zzs.zzay().zzk().zzb("Failed to invoke Tag Manager's initialize() method", e);
                        }
                    } catch (ClassNotFoundException unused) {
                        this.zzs.zzay().zzi().zza("Tag Manager is not found and thus will not be used");
                    }
                }
                if ("_cmp".equals(str2) && bundle.containsKey("gclid")) {
                    this.zzs.zzaw();
                    zzZ(TtmlNode.TEXT_EMPHASIS_AUTO, "_lgclid", bundle.getString("gclid"), this.zzs.zzav().currentTimeMillis());
                }
                this.zzs.zzaw();
                if (z && zzkz.zzal(str2)) {
                    this.zzs.zzv().zzK(bundle, this.zzs.zzm().zzr.zza());
                }
                if (!z3) {
                    this.zzs.zzaw();
                    if (!"_iap".equals(str2)) {
                        zzkz zzv = this.zzs.zzv();
                        int i = 2;
                        if (zzv.zzab("event", str2)) {
                            if (zzv.zzY("event", zzgs.zza, zzgs.zzb, str2)) {
                                zzv.zzs.zzf();
                                if (zzv.zzX("event", 40, str2)) {
                                    i = 0;
                                }
                            } else {
                                i = 13;
                            }
                        }
                        if (i != 0) {
                            this.zzs.zzay().zze().zzb("Invalid public event name. Event will not be logged (FE)", this.zzs.zzj().zzd(str2));
                            zzkz zzv2 = this.zzs.zzv();
                            this.zzs.zzf();
                            this.zzs.zzv().zzM(this.zzn, null, i, "_ev", zzv2.zzC(str2, 40, true), str2 != null ? str2.length() : 0);
                            return;
                        }
                    }
                }
                zzpx.zzc();
                if (!this.zzs.zzf().zzs(null, zzdy.zzaB)) {
                    this.zzs.zzaw();
                    zzih zzj = this.zzs.zzs().zzj(false);
                    if (zzj != null && !bundle.containsKey("_sc")) {
                        zzj.zzd = true;
                    }
                    zzkz.zzJ(zzj, bundle, z && !z3);
                } else {
                    this.zzs.zzaw();
                    zzih zzj2 = this.zzs.zzs().zzj(false);
                    if (zzj2 != null && !bundle.containsKey("_sc")) {
                        zzj2.zzd = true;
                    }
                    zzkz.zzJ(zzj2, bundle, z && !z3);
                }
                boolean equals = "am".equals(str);
                boolean zzag = zzkz.zzag(str2);
                if (!z || this.zzd == null || zzag) {
                    z4 = equals;
                } else if (!equals) {
                    this.zzs.zzay().zzc().zzc("Passing event to registered event handler (FE)", this.zzs.zzj().zzd(str2), this.zzs.zzj().zzb(bundle));
                    Preconditions.checkNotNull(this.zzd);
                    this.zzd.interceptEvent(str, str2, bundle, j);
                    return;
                } else {
                    z4 = true;
                }
                if (this.zzs.zzM()) {
                    int zzh = this.zzs.zzv().zzh(str2);
                    if (zzh != 0) {
                        this.zzs.zzay().zze().zzb("Invalid event name. Event will not be logged (FE)", this.zzs.zzj().zzd(str2));
                        zzkz zzv3 = this.zzs.zzv();
                        this.zzs.zzf();
                        this.zzs.zzv().zzM(this.zzn, str3, zzh, "_ev", zzv3.zzC(str2, 40, true), str2 != null ? str2.length() : 0);
                        return;
                    }
                    Bundle zzy = this.zzs.zzv().zzy(str3, str2, bundle, CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"}), z3);
                    Preconditions.checkNotNull(zzy);
                    this.zzs.zzaw();
                    if (this.zzs.zzs().zzj(false) != null && "_ae".equals(str2)) {
                        zzkb zzkbVar = this.zzs.zzu().zzb;
                        long elapsedRealtime = zzkbVar.zzc.zzs.zzav().elapsedRealtime();
                        long j3 = elapsedRealtime - zzkbVar.zzb;
                        zzkbVar.zzb = elapsedRealtime;
                        if (j3 > 0) {
                            this.zzs.zzv().zzH(zzy, j3);
                        }
                    }
                    zzob.zzc();
                    if (this.zzs.zzf().zzs(null, zzdy.zzai)) {
                        if (TtmlNode.TEXT_EMPHASIS_AUTO.equals(str) || !"_ssr".equals(str2)) {
                            if ("_ae".equals(str2)) {
                                String zza = this.zzs.zzv().zzs.zzm().zzo.zza();
                                if (!TextUtils.isEmpty(zza)) {
                                    zzy.putString("_ffr", zza);
                                }
                            }
                        } else {
                            zzkz zzv4 = this.zzs.zzv();
                            String string = zzy.getString("_ffr");
                            if (Strings.isEmptyOrWhitespace(string)) {
                                string = null;
                            } else if (string != null) {
                                string = string.trim();
                            }
                            if (!zzkz.zzak(string, zzv4.zzs.zzm().zzo.zza())) {
                                zzv4.zzs.zzm().zzo.zzb(string);
                            } else {
                                zzv4.zzs.zzay().zzc().zza("Not logging duplicate session_start_with_rollout event");
                                return;
                            }
                        }
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(zzy);
                    if (this.zzs.zzm().zzj.zza() > 0 && this.zzs.zzm().zzk(j) && this.zzs.zzm().zzl.zzb()) {
                        this.zzs.zzay().zzj().zza("Current session is expired, remove the session number, ID, and engagement time");
                        str4 = "_ae";
                        j2 = 0;
                        zzZ(TtmlNode.TEXT_EMPHASIS_AUTO, "_sid", null, this.zzs.zzav().currentTimeMillis());
                        zzZ(TtmlNode.TEXT_EMPHASIS_AUTO, "_sno", null, this.zzs.zzav().currentTimeMillis());
                        zzZ(TtmlNode.TEXT_EMPHASIS_AUTO, "_se", null, this.zzs.zzav().currentTimeMillis());
                    } else {
                        str4 = "_ae";
                        j2 = 0;
                    }
                    if (zzy.getLong("extend_session", j2) == 1) {
                        this.zzs.zzay().zzj().zza("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                        this.zzs.zzu().zza.zzb(j, true);
                    }
                    ArrayList arrayList2 = new ArrayList(zzy.keySet());
                    Collections.sort(arrayList2);
                    int size = arrayList2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        String str7 = (String) arrayList2.get(i2);
                        if (str7 != null) {
                            this.zzs.zzv();
                            Object obj = zzy.get(str7);
                            if (obj instanceof Bundle) {
                                bundleArr = new Bundle[]{(Bundle) obj};
                            } else if (obj instanceof Parcelable[]) {
                                Parcelable[] parcelableArr = (Parcelable[]) obj;
                                bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                            } else if (obj instanceof ArrayList) {
                                ArrayList arrayList3 = (ArrayList) obj;
                                bundleArr = (Bundle[]) arrayList3.toArray(new Bundle[arrayList3.size()]);
                            } else {
                                bundleArr = null;
                            }
                            if (bundleArr != null) {
                                zzy.putParcelableArray(str7, bundleArr);
                            }
                        }
                    }
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        Bundle bundle2 = (Bundle) arrayList.get(i3);
                        if (i3 != 0) {
                            str6 = "_ep";
                            str5 = str;
                        } else {
                            str5 = str;
                            str6 = str2;
                        }
                        bundle2.putString("_o", str5);
                        if (z2) {
                            bundle2 = this.zzs.zzv().zzt(bundle2);
                        }
                        Bundle bundle3 = bundle2;
                        this.zzs.zzt().zzA(new zzat(str6, new zzar(bundle3), str, j), str3);
                        if (!z4) {
                            for (zzgw zzgwVar : this.zze) {
                                zzgwVar.onEvent(str, str2, new Bundle(bundle3), j);
                            }
                        }
                    }
                    this.zzs.zzaw();
                    if (this.zzs.zzs().zzj(false) == null || !str4.equals(str2)) {
                        return;
                    }
                    this.zzs.zzu().zzb.zzd(true, true, this.zzs.zzav().elapsedRealtime());
                    return;
                }
                return;
            }
            this.zzs.zzay().zzc().zzc("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        this.zzs.zzay().zzc().zza("Event not sent since app measurement is disabled");
    }

    public final void zzJ(zzgw zzgwVar) {
        zza();
        Preconditions.checkNotNull(zzgwVar);
        if (this.zze.add(zzgwVar)) {
            return;
        }
        this.zzs.zzay().zzk().zza("OnEventListener already registered");
    }

    public final void zzK(long j) {
        this.zzg.set(null);
        this.zzs.zzaz().zzp(new zzhi(this, j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzL(long j, boolean z) {
        zzg();
        zza();
        this.zzs.zzay().zzc().zza("Resetting analytics data (FE)");
        zzkd zzu = this.zzs.zzu();
        zzu.zzg();
        zzu.zzb.zza();
        boolean zzJ = this.zzs.zzJ();
        zzfa zzm = this.zzs.zzm();
        zzm.zzc.zzb(j);
        if (!TextUtils.isEmpty(zzm.zzs.zzm().zzo.zza())) {
            zzm.zzo.zzb(null);
        }
        zzok.zzc();
        zzaf zzf = zzm.zzs.zzf();
        zzdx<Boolean> zzdxVar = zzdy.zzaj;
        if (zzf.zzs(null, zzdxVar)) {
            zzm.zzj.zzb(0L);
        }
        if (!zzm.zzs.zzf().zzv()) {
            zzm.zzi(!zzJ);
        }
        zzm.zzp.zzb(null);
        zzm.zzq.zzb(0L);
        zzm.zzr.zzb(null);
        if (z) {
            this.zzs.zzt().zzC();
        }
        zzok.zzc();
        if (this.zzs.zzf().zzs(null, zzdxVar)) {
            this.zzs.zzu().zza.zza();
        }
        this.zzc = !zzJ;
    }

    protected final void zzM(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelable);
                        }
                        i++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i < list.size()) {
                        Object obj2 = list.get(i);
                        if (obj2 instanceof Bundle) {
                            list.set(i, new Bundle((Bundle) obj2));
                        }
                        i++;
                    }
                }
            }
        }
        this.zzs.zzaz().zzp(new zzhf(this, str, str2, j, bundle2, z, z2, z3, str3));
    }

    final void zzN(String str, String str2, long j, Object obj) {
        this.zzs.zzaz().zzp(new zzhg(this, str, str2, obj, j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzO(String str) {
        this.zzg.set(str);
    }

    public final void zzP(Bundle bundle) {
        zzQ(bundle, this.zzs.zzav().currentTimeMillis());
    }

    public final void zzQ(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.zzs.zzay().zzk().zza("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.checkNotNull(bundle2);
        zzgr.zza(bundle2, "app_id", String.class, null);
        zzgr.zza(bundle2, "origin", String.class, null);
        zzgr.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null);
        zzgr.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.VALUE, Object.class, null);
        zzgr.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzgr.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzgr.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzgr.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzgr.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzgr.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzgr.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzgr.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzgr.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        Preconditions.checkNotEmpty(bundle2.getString("origin"));
        Preconditions.checkNotNull(bundle2.get(AppMeasurementSdk.ConditionalUserProperty.VALUE));
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j);
        String string = bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.NAME);
        Object obj = bundle2.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (this.zzs.zzv().zzl(string) == 0) {
            if (this.zzs.zzv().zzd(string, obj) == 0) {
                Object zzB = this.zzs.zzv().zzB(string, obj);
                if (zzB == null) {
                    this.zzs.zzay().zzd().zzc("Unable to normalize conditional user property value", this.zzs.zzj().zzf(string), obj);
                    return;
                }
                zzgr.zzb(bundle2, zzB);
                long j2 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
                if (!TextUtils.isEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME))) {
                    this.zzs.zzf();
                    if (j2 > 15552000000L || j2 < 1) {
                        this.zzs.zzay().zzd().zzc("Invalid conditional user property timeout", this.zzs.zzj().zzf(string), Long.valueOf(j2));
                        return;
                    }
                }
                long j3 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
                this.zzs.zzf();
                if (j3 > 15552000000L || j3 < 1) {
                    this.zzs.zzay().zzd().zzc("Invalid conditional user property time to live", this.zzs.zzj().zzf(string), Long.valueOf(j3));
                    return;
                } else {
                    this.zzs.zzaz().zzp(new zzhj(this, bundle2));
                    return;
                }
            }
            this.zzs.zzay().zzd().zzc("Invalid conditional user property value", this.zzs.zzj().zzf(string), obj);
            return;
        }
        this.zzs.zzay().zzd().zzb("Invalid conditional user property name", this.zzs.zzj().zzf(string));
    }

    public final void zzR(Bundle bundle, int i, long j) {
        zza();
        String zzh = zzag.zzh(bundle);
        if (zzh != null) {
            this.zzs.zzay().zzl().zzb("Ignoring invalid consent setting", zzh);
            this.zzs.zzay().zzl().zza("Valid consent values are 'granted', 'denied'");
        }
        zzS(zzag.zza(bundle), i, j);
    }

    public final void zzS(zzag zzagVar, int i, long j) {
        boolean z;
        boolean z2;
        zzag zzagVar2;
        boolean z3;
        zza();
        if (i == -10 || zzagVar.zze() != null || zzagVar.zzf() != null) {
            synchronized (this.zzh) {
                z = true;
                z2 = false;
                if (zzag.zzl(i, this.zzj)) {
                    boolean zzm = zzagVar.zzm(this.zzi);
                    if (zzagVar.zzk() && !this.zzi.zzk()) {
                        z2 = true;
                    }
                    zzag zzd = zzagVar.zzd(this.zzi);
                    this.zzi = zzd;
                    this.zzj = i;
                    zzagVar2 = zzd;
                    z3 = z2;
                    z2 = zzm;
                } else {
                    zzagVar2 = zzagVar;
                    z3 = false;
                    z = false;
                }
            }
            if (!z) {
                this.zzs.zzay().zzi().zzb("Ignoring lower-priority consent settings, proposed settings", zzagVar2);
                return;
            }
            long andIncrement = this.zzk.getAndIncrement();
            if (z2) {
                this.zzg.set(null);
                this.zzs.zzaz().zzq(new zzhu(this, zzagVar2, j, i, andIncrement, z3));
                return;
            } else if (i == 30 || i == -10) {
                this.zzs.zzaz().zzq(new zzhv(this, zzagVar2, i, andIncrement, z3));
                return;
            } else {
                this.zzs.zzaz().zzp(new zzhw(this, zzagVar2, i, andIncrement, z3));
                return;
            }
        }
        this.zzs.zzay().zzl().zza("Discarding empty consent settings");
    }

    public final void zzT(final Bundle bundle, final long j) {
        zzoe.zzc();
        if (this.zzs.zzf().zzs(null, zzdy.zzau)) {
            this.zzs.zzaz().zzq(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhb
                @Override // java.lang.Runnable
                public final void run() {
                    zzia.this.zzB(bundle, j);
                }
            });
        } else {
            zzB(bundle, j);
        }
    }

    public final void zzU(zzgv zzgvVar) {
        zzgv zzgvVar2;
        zzg();
        zza();
        if (zzgvVar != null && zzgvVar != (zzgvVar2 = this.zzd)) {
            Preconditions.checkState(zzgvVar2 == null, "EventInterceptor already set.");
        }
        this.zzd = zzgvVar;
    }

    public final void zzV(Boolean bool) {
        zza();
        this.zzs.zzaz().zzp(new zzht(this, bool));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzW(zzag zzagVar) {
        zzg();
        boolean z = (zzagVar.zzk() && zzagVar.zzj()) || this.zzs.zzt().zzM();
        if (z != this.zzs.zzK()) {
            this.zzs.zzG(z);
            zzfa zzm = this.zzs.zzm();
            zzfv zzfvVar = zzm.zzs;
            zzm.zzg();
            Boolean valueOf = zzm.zza().contains("measurement_enabled_from_api") ? Boolean.valueOf(zzm.zza().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z || valueOf == null || valueOf.booleanValue()) {
                zzac(Boolean.valueOf(z), false);
            }
        }
    }

    public final void zzX(String str, String str2, Object obj, boolean z) {
        zzY(TtmlNode.TEXT_EMPHASIS_AUTO, "_ldl", obj, true, this.zzs.zzav().currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzZ(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            r8 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r9)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r10)
            r8.zzg()
            r8.zza()
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r10)
            java.lang.String r1 = "_npa"
            if (r0 == 0) goto L64
            boolean r0 = r11 instanceof java.lang.String
            if (r0 == 0) goto L52
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L52
            r10 = 1
            java.util.Locale r11 = java.util.Locale.ENGLISH
            java.lang.String r11 = r0.toLowerCase(r11)
            java.lang.String r0 = "false"
            boolean r11 = r0.equals(r11)
            r2 = 1
            if (r10 == r11) goto L37
            r10 = 0
            goto L38
        L37:
            r10 = r2
        L38:
            java.lang.Long r11 = java.lang.Long.valueOf(r10)
            com.google.android.gms.measurement.internal.zzfv r10 = r8.zzs
            com.google.android.gms.measurement.internal.zzfa r10 = r10.zzm()
            com.google.android.gms.measurement.internal.zzez r10 = r10.zzh
            long r4 = r11.longValue()
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 != 0) goto L4e
            java.lang.String r0 = "true"
        L4e:
            r10.zzb(r0)
            goto L61
        L52:
            if (r11 != 0) goto L64
            com.google.android.gms.measurement.internal.zzfv r10 = r8.zzs
            com.google.android.gms.measurement.internal.zzfa r10 = r10.zzm()
            com.google.android.gms.measurement.internal.zzez r10 = r10.zzh
            java.lang.String r0 = "unset"
            r10.zzb(r0)
        L61:
            r6 = r11
            r3 = r1
            goto L66
        L64:
            r3 = r10
            r6 = r11
        L66:
            com.google.android.gms.measurement.internal.zzfv r10 = r8.zzs
            boolean r10 = r10.zzJ()
            if (r10 != 0) goto L7e
            com.google.android.gms.measurement.internal.zzfv r9 = r8.zzs
            com.google.android.gms.measurement.internal.zzel r9 = r9.zzay()
            com.google.android.gms.measurement.internal.zzej r9 = r9.zzj()
            java.lang.String r10 = "User property not set since app measurement is disabled"
            r9.zza(r10)
            return
        L7e:
            com.google.android.gms.measurement.internal.zzfv r10 = r8.zzs
            boolean r10 = r10.zzM()
            if (r10 != 0) goto L87
            return
        L87:
            com.google.android.gms.measurement.internal.zzkv r10 = new com.google.android.gms.measurement.internal.zzkv
            r2 = r10
            r4 = r12
            r7 = r9
            r2.<init>(r3, r4, r6, r7)
            com.google.android.gms.measurement.internal.zzfv r9 = r8.zzs
            com.google.android.gms.measurement.internal.zzjo r9 = r9.zzt()
            r9.zzK(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzia.zzZ(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    public final void zzaa(zzgw zzgwVar) {
        zza();
        Preconditions.checkNotNull(zzgwVar);
        if (this.zze.remove(zzgwVar)) {
            return;
        }
        this.zzs.zzay().zzk().zza("OnEventListener had not been registered");
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return false;
    }

    public final int zzh(String str) {
        Preconditions.checkNotEmpty(str);
        this.zzs.zzf();
        return 25;
    }

    public final Boolean zzi() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.zzs.zzaz().zzd(atomicReference, C0479C.DEFAULT_SEEK_FORWARD_INCREMENT_MS, "boolean test flag value", new zzhl(this, atomicReference));
    }

    public final Double zzj() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.zzs.zzaz().zzd(atomicReference, C0479C.DEFAULT_SEEK_FORWARD_INCREMENT_MS, "double test flag value", new zzhs(this, atomicReference));
    }

    public final Integer zzl() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.zzs.zzaz().zzd(atomicReference, C0479C.DEFAULT_SEEK_FORWARD_INCREMENT_MS, "int test flag value", new zzhr(this, atomicReference));
    }

    public final Long zzm() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.zzs.zzaz().zzd(atomicReference, C0479C.DEFAULT_SEEK_FORWARD_INCREMENT_MS, "long test flag value", new zzhq(this, atomicReference));
    }

    public final String zzo() {
        return this.zzg.get();
    }

    public final String zzp() {
        zzih zzi = this.zzs.zzs().zzi();
        if (zzi != null) {
            return zzi.zzb;
        }
        return null;
    }

    public final String zzq() {
        zzih zzi = this.zzs.zzs().zzi();
        if (zzi != null) {
            return zzi.zza;
        }
        return null;
    }

    public final String zzr() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.zzs.zzaz().zzd(atomicReference, C0479C.DEFAULT_SEEK_FORWARD_INCREMENT_MS, "String test flag value", new zzhp(this, atomicReference));
    }

    public final ArrayList<Bundle> zzs(String str, String str2) {
        if (!this.zzs.zzaz().zzs()) {
            this.zzs.zzaw();
            if (zzaa.zza()) {
                this.zzs.zzay().zzd().zza("Cannot get conditional user properties from main thread");
                return new ArrayList<>(0);
            }
            AtomicReference atomicReference = new AtomicReference();
            this.zzs.zzaz().zzd(atomicReference, 5000L, "get conditional user properties", new zzhm(this, atomicReference, null, str, str2));
            List list = (List) atomicReference.get();
            if (list == null) {
                this.zzs.zzay().zzd().zzb("Timed out waiting for get conditional user properties", null);
                return new ArrayList<>();
            }
            return zzkz.zzG(list);
        }
        this.zzs.zzay().zzd().zza("Cannot get conditional user properties from analytics worker thread");
        return new ArrayList<>(0);
    }

    public final List<zzkv> zzt(boolean z) {
        zza();
        this.zzs.zzay().zzj().zza("Getting user properties (FE)");
        if (!this.zzs.zzaz().zzs()) {
            this.zzs.zzaw();
            if (zzaa.zza()) {
                this.zzs.zzay().zzd().zza("Cannot get all user properties from main thread");
                return Collections.emptyList();
            }
            AtomicReference atomicReference = new AtomicReference();
            this.zzs.zzaz().zzd(atomicReference, 5000L, "get user properties", new zzhh(this, atomicReference, z));
            List<zzkv> list = (List) atomicReference.get();
            if (list == null) {
                this.zzs.zzay().zzd().zzb("Timed out waiting for get user properties, includeInternal", Boolean.valueOf(z));
                return Collections.emptyList();
            }
            return list;
        }
        this.zzs.zzay().zzd().zza("Cannot get all user properties from analytics worker thread");
        return Collections.emptyList();
    }

    public final Map<String, Object> zzu(String str, String str2, boolean z) {
        if (!this.zzs.zzaz().zzs()) {
            this.zzs.zzaw();
            if (zzaa.zza()) {
                this.zzs.zzay().zzd().zza("Cannot get user properties from main thread");
                return Collections.emptyMap();
            }
            AtomicReference atomicReference = new AtomicReference();
            this.zzs.zzaz().zzd(atomicReference, 5000L, "get user properties", new zzhn(this, atomicReference, null, str, str2, z));
            List<zzkv> list = (List) atomicReference.get();
            if (list == null) {
                this.zzs.zzay().zzd().zzb("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
                return Collections.emptyMap();
            }
            ArrayMap arrayMap = new ArrayMap(list.size());
            for (zzkv zzkvVar : list) {
                Object zza = zzkvVar.zza();
                if (zza != null) {
                    arrayMap.put(zzkvVar.zzb, zza);
                }
            }
            return arrayMap;
        }
        this.zzs.zzay().zzd().zza("Cannot get user properties from analytics worker thread");
        return Collections.emptyMap();
    }

    public final void zzy() {
        zzg();
        zza();
        if (this.zzs.zzM()) {
            if (this.zzs.zzf().zzs(null, zzdy.zzZ)) {
                zzaf zzf = this.zzs.zzf();
                zzf.zzs.zzaw();
                Boolean zzk = zzf.zzk("google_analytics_deferred_deep_link_enabled");
                if (zzk != null && zzk.booleanValue()) {
                    this.zzs.zzay().zzc().zza("Deferred Deep Link feature enabled.");
                    this.zzs.zzaz().zzp(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzgz
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzia zziaVar = zzia.this;
                            zziaVar.zzg();
                            if (!zziaVar.zzs.zzm().zzm.zzb()) {
                                long zza = zziaVar.zzs.zzm().zzn.zza();
                                zziaVar.zzs.zzm().zzn.zzb(1 + zza);
                                zziaVar.zzs.zzf();
                                if (zza >= 5) {
                                    zziaVar.zzs.zzay().zzk().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                    zziaVar.zzs.zzm().zzm.zza(true);
                                    return;
                                }
                                zziaVar.zzs.zzE();
                                return;
                            }
                            zziaVar.zzs.zzay().zzc().zza("Deferred Deep Link already retrieved. Not fetching again.");
                        }
                    });
                }
            }
            this.zzs.zzt().zzq();
            this.zzc = false;
            zzfa zzm = this.zzs.zzm();
            zzm.zzg();
            String string = zzm.zza().getString("previous_os_version", null);
            zzm.zzs.zzg().zzu();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = zzm.zza().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.zzs.zzg().zzu();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            zzG(TtmlNode.TEXT_EMPHASIS_AUTO, "_ou", bundle);
        }
    }

    public final void zzz(String str, String str2, Bundle bundle) {
        long currentTimeMillis = this.zzs.zzav().currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, currentTimeMillis);
        if (str2 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str2);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        this.zzs.zzaz().zzp(new zzhk(this, bundle2));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzY(java.lang.String r16, java.lang.String r17, java.lang.Object r18, boolean r19, long r20) {
        /*
            r15 = this;
            r6 = r15
            r2 = r17
            r0 = r18
            if (r16 != 0) goto La
            java.lang.String r1 = "app"
            goto Lc
        La:
            r1 = r16
        Lc:
            r3 = 6
            r4 = 0
            r5 = 24
            if (r19 == 0) goto L1e
            com.google.android.gms.measurement.internal.zzfv r3 = r6.zzs
            com.google.android.gms.measurement.internal.zzkz r3 = r3.zzv()
            int r3 = r3.zzl(r2)
        L1c:
            r11 = r3
            goto L46
        L1e:
            com.google.android.gms.measurement.internal.zzfv r7 = r6.zzs
            com.google.android.gms.measurement.internal.zzkz r7 = r7.zzv()
            java.lang.String r8 = "user property"
            boolean r9 = r7.zzab(r8, r2)
            if (r9 != 0) goto L2d
        L2c:
            goto L1c
        L2d:
            java.lang.String[] r9 = com.google.android.gms.measurement.internal.zzgu.zza
            r10 = 0
            boolean r9 = r7.zzY(r8, r9, r10, r2)
            if (r9 != 0) goto L39
            r3 = 15
            goto L1c
        L39:
            com.google.android.gms.measurement.internal.zzfv r9 = r7.zzs
            r9.zzf()
            boolean r7 = r7.zzX(r8, r5, r2)
            if (r7 != 0) goto L45
            goto L2c
        L45:
            r11 = r4
        L46:
            r3 = 1
            if (r11 == 0) goto L6e
            com.google.android.gms.measurement.internal.zzfv r0 = r6.zzs
            com.google.android.gms.measurement.internal.zzkz r0 = r0.zzv()
            com.google.android.gms.measurement.internal.zzfv r1 = r6.zzs
            r1.zzf()
            java.lang.String r13 = r0.zzC(r2, r5, r3)
            if (r2 == 0) goto L5e
            int r4 = r17.length()
        L5e:
            r14 = r4
            com.google.android.gms.measurement.internal.zzfv r0 = r6.zzs
            com.google.android.gms.measurement.internal.zzkz r8 = r0.zzv()
            com.google.android.gms.measurement.internal.zzky r9 = r6.zzn
            r10 = 0
            java.lang.String r12 = "_ev"
            r8.zzM(r9, r10, r11, r12, r13, r14)
            return
        L6e:
            if (r0 == 0) goto Lc0
            com.google.android.gms.measurement.internal.zzfv r7 = r6.zzs
            com.google.android.gms.measurement.internal.zzkz r7 = r7.zzv()
            int r11 = r7.zzd(r2, r0)
            if (r11 == 0) goto Lab
            com.google.android.gms.measurement.internal.zzfv r1 = r6.zzs
            com.google.android.gms.measurement.internal.zzkz r1 = r1.zzv()
            com.google.android.gms.measurement.internal.zzfv r7 = r6.zzs
            r7.zzf()
            java.lang.String r13 = r1.zzC(r2, r5, r3)
            boolean r1 = r0 instanceof java.lang.String
            if (r1 != 0) goto L93
            boolean r1 = r0 instanceof java.lang.CharSequence
            if (r1 == 0) goto L9b
        L93:
            java.lang.String r0 = java.lang.String.valueOf(r18)
            int r4 = r0.length()
        L9b:
            r14 = r4
            com.google.android.gms.measurement.internal.zzfv r0 = r6.zzs
            com.google.android.gms.measurement.internal.zzkz r8 = r0.zzv()
            com.google.android.gms.measurement.internal.zzky r9 = r6.zzn
            r10 = 0
            java.lang.String r12 = "_ev"
            r8.zzM(r9, r10, r11, r12, r13, r14)
            return
        Lab:
            com.google.android.gms.measurement.internal.zzfv r3 = r6.zzs
            com.google.android.gms.measurement.internal.zzkz r3 = r3.zzv()
            java.lang.Object r5 = r3.zzB(r2, r0)
            if (r5 == 0) goto Lbf
            r0 = r15
            r2 = r17
            r3 = r20
            r0.zzN(r1, r2, r3, r5)
        Lbf:
            return
        Lc0:
            r5 = 0
            r0 = r15
            r2 = r17
            r3 = r20
            r0.zzN(r1, r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzia.zzY(java.lang.String, java.lang.String, java.lang.Object, boolean, long):void");
    }
}
