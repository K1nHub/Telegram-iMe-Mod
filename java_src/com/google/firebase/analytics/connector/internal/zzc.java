package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzgr;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzig;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-measurement-api@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzc {
    private static final Set<String> zza = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));
    private static final List<String> zzb = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");
    private static final List<String> zzc = Arrays.asList(TtmlNode.TEXT_EMPHASIS_AUTO, "app", "am");
    private static final List<String> zzd = Arrays.asList("_r", "_dbg");
    private static final List<String> zze = Arrays.asList((String[]) ArrayUtils.concat(zzgu.zza, zzgu.zzb));
    private static final List<String> zzf = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static Bundle zza(AnalyticsConnector.ConditionalUserProperty conditionalUserProperty) {
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.origin;
        if (str != null) {
            bundle.putString("origin", str);
        }
        String str2 = conditionalUserProperty.name;
        if (str2 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str2);
        }
        Object obj = conditionalUserProperty.value;
        if (obj != null) {
            zzgr.zzb(bundle, obj);
        }
        String str3 = conditionalUserProperty.triggerEventName;
        if (str3 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, str3);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, conditionalUserProperty.triggerTimeout);
        String str4 = conditionalUserProperty.timedOutEventName;
        if (str4 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, str4);
        }
        Bundle bundle2 = conditionalUserProperty.timedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, bundle2);
        }
        String str5 = conditionalUserProperty.triggeredEventName;
        if (str5 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, str5);
        }
        Bundle bundle3 = conditionalUserProperty.triggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, bundle3);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, conditionalUserProperty.timeToLive);
        String str6 = conditionalUserProperty.expiredEventName;
        if (str6 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str6);
        }
        Bundle bundle4 = conditionalUserProperty.expiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle4);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, conditionalUserProperty.creationTimestamp);
        bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, conditionalUserProperty.active);
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, conditionalUserProperty.triggeredTimestamp);
        return bundle;
    }

    public static AnalyticsConnector.ConditionalUserProperty zzb(Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        AnalyticsConnector.ConditionalUserProperty conditionalUserProperty = new AnalyticsConnector.ConditionalUserProperty();
        conditionalUserProperty.origin = (String) Preconditions.checkNotNull((String) zzgr.zza(bundle, "origin", String.class, null));
        conditionalUserProperty.name = (String) Preconditions.checkNotNull((String) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null));
        conditionalUserProperty.value = zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.VALUE, Object.class, null);
        conditionalUserProperty.triggerEventName = (String) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        conditionalUserProperty.triggerTimeout = ((Long) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
        conditionalUserProperty.timedOutEventName = (String) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        conditionalUserProperty.timedOutEventParams = (Bundle) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        conditionalUserProperty.triggeredEventName = (String) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        conditionalUserProperty.triggeredEventParams = (Bundle) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        conditionalUserProperty.timeToLive = ((Long) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
        conditionalUserProperty.expiredEventName = (String) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        conditionalUserProperty.expiredEventParams = (Bundle) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        conditionalUserProperty.active = ((Boolean) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.class, Boolean.FALSE)).booleanValue();
        conditionalUserProperty.creationTimestamp = ((Long) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.class, 0L)).longValue();
        conditionalUserProperty.triggeredTimestamp = ((Long) zzgr.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.class, 0L)).longValue();
        return conditionalUserProperty;
    }

    public static String zzc(String str) {
        String zza2 = zzgs.zza(str);
        return zza2 != null ? zza2 : str;
    }

    public static void zze(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    public static boolean zzh(String str, String str2, Bundle bundle) {
        char c;
        if ("_cmp".equals(str2)) {
            if (zzl(str) && bundle != null) {
                for (String str3 : zzd) {
                    if (bundle.containsKey(str3)) {
                        return false;
                    }
                }
                int hashCode = str.hashCode();
                if (hashCode == 101200) {
                    if (str.equals(AppMeasurement.FCM_ORIGIN)) {
                        c = 0;
                    }
                    c = 65535;
                } else if (hashCode != 101230) {
                    if (hashCode == 3142703 && str.equals(AppMeasurement.FIAM_ORIGIN)) {
                        c = 2;
                    }
                    c = 65535;
                } else {
                    if (str.equals("fdl")) {
                        c = 1;
                    }
                    c = 65535;
                }
                if (c == 0) {
                    bundle.putString("_cis", "fcm_integration");
                    return true;
                } else if (c == 1) {
                    bundle.putString("_cis", "fdl_integration");
                    return true;
                } else if (c != 2) {
                    return false;
                } else {
                    bundle.putString("_cis", "fiam_integration");
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public static boolean zzi(AnalyticsConnector.ConditionalUserProperty conditionalUserProperty) {
        String str;
        if (conditionalUserProperty == null || (str = conditionalUserProperty.origin) == null || str.isEmpty()) {
            return false;
        }
        Object obj = conditionalUserProperty.value;
        if ((obj == null || zzig.zza(obj) != null) && zzl(str) && zzm(str, conditionalUserProperty.name)) {
            String str2 = conditionalUserProperty.expiredEventName;
            if (str2 == null || (zzj(str2, conditionalUserProperty.expiredEventParams) && zzh(str, conditionalUserProperty.expiredEventName, conditionalUserProperty.expiredEventParams))) {
                String str3 = conditionalUserProperty.triggeredEventName;
                if (str3 == null || (zzj(str3, conditionalUserProperty.triggeredEventParams) && zzh(str, conditionalUserProperty.triggeredEventName, conditionalUserProperty.triggeredEventParams))) {
                    String str4 = conditionalUserProperty.timedOutEventName;
                    if (str4 != null) {
                        return zzj(str4, conditionalUserProperty.timedOutEventParams) && zzh(str, conditionalUserProperty.timedOutEventName, conditionalUserProperty.timedOutEventParams);
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public static boolean zzj(String str, Bundle bundle) {
        if (zzb.contains(str)) {
            return false;
        }
        if (bundle != null) {
            for (String str2 : zzd) {
                if (bundle.containsKey(str2)) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    public static boolean zzk(String str) {
        return !zza.contains(str);
    }

    public static boolean zzl(String str) {
        return !zzc.contains(str);
    }

    public static boolean zzm(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals("frc");
        } else if ("_ln".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals(AppMeasurement.FIAM_ORIGIN);
        } else if (zze.contains(str2)) {
            return false;
        } else {
            for (String str3 : zzf) {
                if (str2.matches(str3)) {
                    return false;
                }
            }
            return true;
        }
    }
}
