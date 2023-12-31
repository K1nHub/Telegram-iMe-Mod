package com.google.android.gms.wearable.internal;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import androidx.core.util.Preconditions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.MessageClient;
import com.google.android.gms.wearable.MessageOptions;
import com.google.android.gms.wearable.PutDataRequest;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzfw extends MessageClient {
    public static final /* synthetic */ int zzb = 0;
    @VisibleForTesting
    final zzfl zza;

    public zzfw(Activity activity, GoogleApi.Settings settings) {
        super(activity, settings);
        this.zza = new zzfl();
    }

    private final Task zza(final MessageClient.OnMessageReceivedListener onMessageReceivedListener, final IntentFilter[] intentFilterArr) {
        final ListenerHolder createListenerHolder = ListenerHolders.createListenerHolder(onMessageReceivedListener, getLooper(), "MessageListener");
        return doRegisterEventListener(RegistrationMethods.builder().withHolder(createListenerHolder).register(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzfq
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzs(new zzhj((TaskCompletionSource) obj2), MessageClient.OnMessageReceivedListener.this, createListenerHolder, intentFilterArr);
            }
        }).unregister(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzfr
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzA(new zzhi((TaskCompletionSource) obj2), MessageClient.OnMessageReceivedListener.this);
            }
        }).setMethodKey(24016).build());
    }

    private final Task zzb(final MessageClient.RpcService rpcService, final IntentFilter[] intentFilterArr) {
        final ListenerHolder createListenerHolder = ListenerHolders.createListenerHolder(rpcService, getLooper(), "RequestListener");
        return doRegisterEventListener(RegistrationMethods.builder().withHolder(createListenerHolder).register(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzfn
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzt(new zzhj((TaskCompletionSource) obj2), MessageClient.RpcService.this, createListenerHolder, intentFilterArr);
            }
        }).unregister(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzfo
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzB(new zzhi((TaskCompletionSource) obj2), MessageClient.RpcService.this);
            }
        }).setMethodKey(24017).build());
    }

    @Override // com.google.android.gms.wearable.MessageClient
    public final Task<Void> addListener(MessageClient.OnMessageReceivedListener onMessageReceivedListener) {
        return zza(onMessageReceivedListener, new IntentFilter[]{zzhl.zza("com.google.android.gms.wearable.MESSAGE_RECEIVED")});
    }

    @Override // com.google.android.gms.wearable.MessageClient
    public final Task<Void> addRpcService(MessageClient.RpcService rpcService, String str) {
        Preconditions.checkNotNull(str, "pathPrefix must not be null");
        return zzb(rpcService, new IntentFilter[]{zzhl.zzb(MessageClient.ACTION_REQUEST_RECEIVED, new Uri.Builder().scheme(PutDataRequest.WEAR_URI_SCHEME).authority("*").path(str).build(), 1)});
    }

    @Override // com.google.android.gms.wearable.MessageClient
    public final Task<Boolean> removeListener(MessageClient.OnMessageReceivedListener onMessageReceivedListener) {
        return doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(ListenerHolders.createListenerHolder(onMessageReceivedListener, getLooper(), "MessageListener").getListenerKey(), "Key must not be null"), 24007);
    }

    @Override // com.google.android.gms.wearable.MessageClient
    public final Task<Boolean> removeRpcService(MessageClient.RpcService rpcService) {
        return doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(ListenerHolders.createListenerHolder(rpcService, getLooper(), "RequestListener").getListenerKey(), "Key must not be null"), 24008);
    }

    @Override // com.google.android.gms.wearable.MessageClient
    public final Task<Integer> sendMessage(String str, String str2, byte[] bArr) {
        zzfl zzflVar = this.zza;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzfg(zzflVar, asGoogleApiClient, str, str2, bArr)), new PendingResultUtil.ResultConverter() { // from class: com.google.android.gms.wearable.internal.zzfp
            @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
            public final Object convert(Result result) {
                return Integer.valueOf(((MessageApi.SendMessageResult) result).getRequestId());
            }
        });
    }

    @Override // com.google.android.gms.wearable.MessageClient
    public final Task<byte[]> sendRequest(final String str, final String str2, final byte[] bArr) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzfm
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzfw zzfwVar = zzfw.this;
                ((zzfb) ((zzim) obj).getService()).zzB(new zzih(new zzfu(zzfwVar, (TaskCompletionSource) obj2)), str, str2, bArr);
            }
        }).setMethodKey(24006).build());
    }

    public zzfw(Context context, GoogleApi.Settings settings) {
        super(context, settings);
        this.zza = new zzfl();
    }

    @Override // com.google.android.gms.wearable.MessageClient
    public final Task<Void> addListener(MessageClient.OnMessageReceivedListener onMessageReceivedListener, Uri uri, int i) {
        boolean z;
        Preconditions.checkNotNull(uri, "uri must not be null");
        if (i == 0) {
            z = true;
        } else if (i == 1) {
            i = 1;
            z = true;
        } else {
            z = false;
        }
        com.google.android.gms.common.internal.Preconditions.checkArgument(z, "invalid filter type");
        return zza(onMessageReceivedListener, new IntentFilter[]{zzhl.zzb("com.google.android.gms.wearable.MESSAGE_RECEIVED", uri, i)});
    }

    @Override // com.google.android.gms.wearable.MessageClient
    public final Task<Integer> sendMessage(final String str, final String str2, final byte[] bArr, final MessageOptions messageOptions) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzfs
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzfw zzfwVar = zzfw.this;
                ((zzfb) ((zzim) obj).getService()).zzA(new zzig(new zzft(zzfwVar, (TaskCompletionSource) obj2)), str, str2, bArr, messageOptions);
            }
        }).setMethodKey(24020).setFeatures(com.google.android.gms.wearable.zze.zzn).build());
    }

    @Override // com.google.android.gms.wearable.MessageClient
    public final Task<Void> addRpcService(MessageClient.RpcService rpcService, String str, String str2) {
        Preconditions.checkNotNull(str, "pathPrefix must not be null");
        return zzb(rpcService, new IntentFilter[]{zzhl.zzb(MessageClient.ACTION_REQUEST_RECEIVED, new Uri.Builder().scheme(PutDataRequest.WEAR_URI_SCHEME).authority(str2).path(str).build(), 1)});
    }
}
