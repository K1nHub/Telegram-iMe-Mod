package com.google.android.gms.internal.mlkit_common;

import com.google.mlkit.common.sdkinternal.ModelType;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
final /* synthetic */ class zzec {
    static final /* synthetic */ int[] zza;

    static {
        int[] iArr = new int[ModelType.values().length];
        zza = iArr;
        try {
            iArr[ModelType.TRANSLATE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zza[ModelType.AUTOML.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zza[ModelType.BASE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
