package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.wearable.ChannelApi;
import com.google.android.gms.wearable.ChannelClient;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class zzav implements PendingResultUtil.ResultConverter {
    public static final /* synthetic */ zzav zza = new zzav();

    private /* synthetic */ zzav() {
    }

    @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
    public final Object convert(Result result) {
        ChannelClient.Channel zzd;
        zzd = zzbd.zzd(((ChannelApi.OpenChannelResult) result).getChannel());
        return zzd;
    }
}
