package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzlu;
/* loaded from: classes.dex */
public enum zzor {
    UNKNOWN,
    BASE,
    AUTOML,
    CUSTOM,
    TRANSLATE;

    public final zzlu.zzx.zzb zzly() {
        int i = zzou.zzauj[ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return zzlu.zzx.zzb.AUTOML_IMAGE_LABELING;
                }
                return zzlu.zzx.zzb.TYPE_UNKNOWN;
            }
            return zzlu.zzx.zzb.CUSTOM;
        }
        return zzlu.zzx.zzb.BASE_TRANSLATE;
    }
}
