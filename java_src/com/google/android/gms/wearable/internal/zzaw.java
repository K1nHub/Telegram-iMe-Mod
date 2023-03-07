package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.wearable.Channel;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class zzaw implements PendingResultUtil.ResultConverter {
    public static final /* synthetic */ zzaw zza = new zzaw();

    private /* synthetic */ zzaw() {
    }

    @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
    public final Object convert(Result result) {
        return ((Channel.GetInputStreamResult) result).getInputStream();
    }
}
