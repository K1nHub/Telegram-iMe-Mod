package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.WearableStatusCodes;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzhf {
    public static Status zza(int i) {
        return new Status(i, WearableStatusCodes.getStatusCodeString(i));
    }
}
