package com.google.android.gms.internal.wearable;

import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzae {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int zza(long[] jArr, long j, int i, int i2) {
        while (i < i2) {
            if (jArr[i] == j) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static List zzb(long... jArr) {
        int length = jArr.length;
        return length == 0 ? Collections.emptyList() : new zzad(jArr, 0, length);
    }
}
