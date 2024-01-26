package com.google.mlkit.vision.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: com.google.mlkit:vision-common@@17.3.0 */
@KeepForSdk
/* loaded from: classes3.dex */
public class CommonConvertUtils {
    @KeepForSdk
    public static int convertToMVRotation(int i) {
        if (i != 0) {
            if (i != 90) {
                if (i != 180) {
                    if (i == 270) {
                        return 3;
                    }
                    throw new IllegalArgumentException("Invalid rotation: " + i);
                }
                return 2;
            }
            return 1;
        }
        return 0;
    }
}
