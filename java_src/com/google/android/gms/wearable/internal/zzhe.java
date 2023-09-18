package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelApi;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes4.dex */
final class zzhe implements ChannelApi.ChannelListener {
    private final String zza;
    private final ChannelApi.ChannelListener zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhe(String str, ChannelApi.ChannelListener channelListener) {
        this.zza = (String) Preconditions.checkNotNull(str);
        this.zzb = (ChannelApi.ChannelListener) Preconditions.checkNotNull(channelListener);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzhe) {
            zzhe zzheVar = (zzhe) obj;
            return this.zzb.equals(zzheVar.zzb) && this.zza.equals(zzheVar.zza);
        }
        return false;
    }

    public final int hashCode() {
        return (this.zza.hashCode() * 31) + this.zzb.hashCode();
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onChannelClosed(Channel channel, int i, int i2) {
        this.zzb.onChannelClosed(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onChannelOpened(Channel channel) {
        this.zzb.onChannelOpened(channel);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onInputClosed(Channel channel, int i, int i2) {
        this.zzb.onInputClosed(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public final void onOutputClosed(Channel channel, int i, int i2) {
        this.zzb.onOutputClosed(channel, i, i2);
    }
}
