package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelApi;
import com.google.android.gms.wearable.ChannelClient;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzbc implements ChannelApi.ChannelListener {
    private final ChannelClient.ChannelCallback zza;

    public zzbc(ChannelClient.ChannelCallback channelCallback) {
        this.zza = channelCallback;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzbc.class != obj.getClass()) {
            return false;
        }
        return this.zza.equals(((zzbc) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onChannelClosed(Channel channel, int i, int i2) {
        this.zza.onChannelClosed(zzbd.zzb(channel), i, i2);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onChannelOpened(Channel channel) {
        this.zza.onChannelOpened(zzbd.zzb(channel));
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onInputClosed(Channel channel, int i, int i2) {
        this.zza.onInputClosed(zzbd.zzb(channel), i, i2);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onOutputClosed(Channel channel, int i, int i2) {
        this.zza.onOutputClosed(zzbd.zzb(channel), i, i2);
    }
}
