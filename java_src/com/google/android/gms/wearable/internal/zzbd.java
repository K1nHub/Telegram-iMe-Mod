package com.google.android.gms.wearable.internal;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelClient;
import java.io.InputStream;
import java.io.OutputStream;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzbd extends ChannelClient {
    public static final /* synthetic */ int zza = 0;
    private final zzau zzb;

    public zzbd(Activity activity, GoogleApi.Settings settings) {
        super(activity, settings);
        this.zzb = new zzau();
    }

    public static /* bridge */ /* synthetic */ zzbq zzb(Channel channel) {
        return zzd(channel);
    }

    private static zzbq zzc(ChannelClient.Channel channel) {
        Preconditions.checkNotNull(channel, "channel must not be null");
        return (zzbq) channel;
    }

    public static zzbq zzd(Channel channel) {
        Preconditions.checkNotNull(channel, "channel must not be null");
        return (zzbq) channel;
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<Void> close(ChannelClient.Channel channel) {
        zzbq zzc = zzc(channel);
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toVoidTask(asGoogleApiClient.enqueue(new zzbh(zzc, asGoogleApiClient)));
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<InputStream> getInputStream(ChannelClient.Channel channel) {
        zzbq zzc = zzc(channel);
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzbj(zzc, asGoogleApiClient)), zzaw.zza);
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<OutputStream> getOutputStream(ChannelClient.Channel channel) {
        zzbq zzc = zzc(channel);
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzbk(zzc, asGoogleApiClient)), zzbb.zza);
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<ChannelClient.Channel> openChannel(String str, String str2) {
        zzau zzauVar = this.zzb;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        Preconditions.checkNotNull(asGoogleApiClient, "client is null");
        Preconditions.checkNotNull(str, "nodeId is null");
        Preconditions.checkNotNull(str2, "path is null");
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzaq(zzauVar, asGoogleApiClient, str, str2)), zzav.zza);
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<Void> receiveFile(ChannelClient.Channel channel, Uri uri, boolean z) {
        zzbq zzc = zzc(channel);
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        Preconditions.checkNotNull(asGoogleApiClient, "client is null");
        Preconditions.checkNotNull(uri, "uri is null");
        return PendingResultUtil.toVoidTask(asGoogleApiClient.enqueue(new zzbl(zzc, asGoogleApiClient, uri, z)));
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<Void> registerChannelCallback(ChannelClient.Channel channel, ChannelClient.ChannelCallback channelCallback) {
        final String zzb = ((zzbq) channel).zzb();
        Preconditions.checkNotNull(channelCallback, "listener is null");
        ListenerHolder createListenerHolder = ListenerHolders.createListenerHolder(channelCallback, getLooper(), "ChannelListener:".concat(String.valueOf(zzb)));
        final IntentFilter[] intentFilterArr = {zzhl.zza("com.google.android.gms.wearable.CHANNEL_EVENT")};
        final zzbc zzbcVar = new zzbc(channelCallback);
        final ListenerHolder createListenerHolder2 = ListenerHolders.createListenerHolder(zzbcVar, getLooper(), "ChannelListener");
        return doRegisterEventListener(RegistrationMethods.builder().withHolder(createListenerHolder).register(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzaz
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzq(new zzhj((TaskCompletionSource) obj2), zzbc.this, createListenerHolder2, zzb, intentFilterArr);
            }
        }).unregister(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzba
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzy(new zzhi((TaskCompletionSource) obj2), zzbc.this, zzb);
            }
        }).setMethodKey(24014).build());
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<Void> sendFile(ChannelClient.Channel channel, Uri uri) {
        return PendingResultUtil.toVoidTask(zzc(channel).sendFile(asGoogleApiClient(), uri, 0L, -1L));
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<Boolean> unregisterChannelCallback(ChannelClient.Channel channel, ChannelClient.ChannelCallback channelCallback) {
        return doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(ListenerHolders.createListenerHolder(channelCallback, getLooper(), "ChannelListener:".concat(String.valueOf(zzc(channel).zzb()))).getListenerKey(), "Key must not be null"), 24004);
    }

    public zzbd(Context context, GoogleApi.Settings settings) {
        super(context, settings);
        this.zzb = new zzau();
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<Void> sendFile(ChannelClient.Channel channel, Uri uri, long j, long j2) {
        return PendingResultUtil.toVoidTask(zzc(channel).sendFile(asGoogleApiClient(), uri, j, j2));
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<Void> close(ChannelClient.Channel channel, int i) {
        zzbq zzc = zzc(channel);
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toVoidTask(asGoogleApiClient.enqueue(new zzbi(zzc, asGoogleApiClient, i)));
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<Boolean> unregisterChannelCallback(ChannelClient.ChannelCallback channelCallback) {
        return doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(ListenerHolders.createListenerHolder(channelCallback, getLooper(), "ChannelListener").getListenerKey(), "Key must not be null"), 24004);
    }

    @Override // com.google.android.gms.wearable.ChannelClient
    public final Task<Void> registerChannelCallback(ChannelClient.ChannelCallback channelCallback) {
        Preconditions.checkNotNull(channelCallback, "listener is null");
        ListenerHolder createListenerHolder = ListenerHolders.createListenerHolder(channelCallback, getLooper(), "ChannelListener");
        final IntentFilter[] intentFilterArr = {zzhl.zza("com.google.android.gms.wearable.CHANNEL_EVENT")};
        final zzbc zzbcVar = new zzbc(channelCallback);
        final ListenerHolder createListenerHolder2 = ListenerHolders.createListenerHolder(zzbcVar, getLooper(), "ChannelListener");
        return doRegisterEventListener(RegistrationMethods.builder().withHolder(createListenerHolder).register(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzax
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzq(new zzhj((TaskCompletionSource) obj2), zzbc.this, createListenerHolder2, null, intentFilterArr);
            }
        }).unregister(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzay
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzy(new zzhi((TaskCompletionSource) obj2), zzbc.this, null);
            }
        }).setMethodKey(24014).build());
    }
}
