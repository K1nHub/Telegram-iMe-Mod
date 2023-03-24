package com.google.android.gms.internal.firebase_ml;

import android.graphics.Rect;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes.dex */
public final class zzqc {
    public static String zzbm(int i) {
        if (i != 1) {
            if (i != 2) {
                return null;
            }
            return "builtin/latest";
        }
        return "builtin/stable";
    }

    public static String zzbz(String str) {
        return str == null ? "" : str;
    }

    public static float zza(Float f) {
        return f == null ? BitmapDescriptorFactory.HUE_RED : f.floatValue();
    }

    private static int zzc(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static Rect zza(zzix zzixVar, float f) {
        if (zzixVar == null || zzixVar.zzhi() == null || zzixVar.zzhi().size() != 4) {
            return null;
        }
        int i = 0;
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MAX_VALUE;
        int i4 = 0;
        for (zzjy zzjyVar : zzixVar.zzhi()) {
            i2 = Math.min(zzc(zzjyVar.zzht()), i2);
            i3 = Math.min(zzc(zzjyVar.zzhu()), i3);
            i = Math.max(zzc(zzjyVar.zzht()), i);
            i4 = Math.max(zzc(zzjyVar.zzhu()), i4);
        }
        return new Rect(Math.round(i2 * f), Math.round(i3 * f), Math.round(i * f), Math.round(i4 * f));
    }
}
