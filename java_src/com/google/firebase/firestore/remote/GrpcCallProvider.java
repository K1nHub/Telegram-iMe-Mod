package com.google.firebase.firestore.remote;

import android.content.Context;
import com.google.android.exoplayer2.C0479C;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.firestore.core.DatabaseInfo;
import com.google.firebase.firestore.util.AsyncQueue;
import com.google.firebase.firestore.util.Executors;
import com.google.firebase.firestore.util.Logger;
import com.google.firebase.firestore.util.Supplier;
import com.google.firestore.p021v1.FirestoreGrpc;
import io.grpc.CallCredentials;
import io.grpc.CallOptions;
import io.grpc.ClientCall;
import io.grpc.ConnectivityState;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import io.grpc.MethodDescriptor;
import io.grpc.android.AndroidChannelBuilder;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class GrpcCallProvider {
    private static Supplier<ManagedChannelBuilder<?>> overrideChannelBuilderSupplier;
    private final AsyncQueue asyncQueue;
    private CallOptions callOptions;
    private Task<ManagedChannel> channelTask;
    private AsyncQueue.DelayedTask connectivityAttemptTimer;
    private final Context context;
    private final DatabaseInfo databaseInfo;
    private final CallCredentials firestoreHeaders;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GrpcCallProvider(AsyncQueue asyncQueue, Context context, DatabaseInfo databaseInfo, CallCredentials callCredentials) {
        this.asyncQueue = asyncQueue;
        this.context = context;
        this.databaseInfo = databaseInfo;
        this.firestoreHeaders = callCredentials;
        initChannelTask();
    }

    private ManagedChannel initChannel(Context context, DatabaseInfo databaseInfo) {
        ManagedChannelBuilder<?> managedChannelBuilder;
        try {
            ProviderInstaller.installIfNeeded(context);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IllegalStateException e) {
            Logger.warn("GrpcCallProvider", "Failed to update ssl context: %s", e);
        }
        Supplier<ManagedChannelBuilder<?>> supplier = overrideChannelBuilderSupplier;
        if (supplier != null) {
            managedChannelBuilder = supplier.get();
        } else {
            ManagedChannelBuilder<?> forTarget = ManagedChannelBuilder.forTarget(databaseInfo.getHost());
            if (!databaseInfo.isSslEnabled()) {
                forTarget.usePlaintext();
            }
            managedChannelBuilder = forTarget;
        }
        managedChannelBuilder.keepAliveTime(30L, TimeUnit.SECONDS);
        return AndroidChannelBuilder.usingBuilder(managedChannelBuilder).context(context).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <ReqT, RespT> Task<ClientCall<ReqT, RespT>> createClientCall(final MethodDescriptor<ReqT, RespT> methodDescriptor) {
        return (Task<ClientCall<ReqT, RespT>>) this.channelTask.continueWithTask(this.asyncQueue.getExecutor(), new Continuation() { // from class: com.google.firebase.firestore.remote.GrpcCallProvider$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task lambda$createClientCall$0;
                lambda$createClientCall$0 = GrpcCallProvider.this.lambda$createClientCall$0(methodDescriptor, task);
                return lambda$createClientCall$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task lambda$createClientCall$0(MethodDescriptor methodDescriptor, Task task) throws Exception {
        return Tasks.forResult(((ManagedChannel) task.getResult()).newCall(methodDescriptor, this.callOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onConnectivityStateChange */
    public void lambda$onConnectivityStateChange$2(final ManagedChannel managedChannel) {
        ConnectivityState state = managedChannel.getState(true);
        Logger.debug("GrpcCallProvider", "Current gRPC connectivity state: " + state, new Object[0]);
        clearConnectivityAttemptTimer();
        if (state == ConnectivityState.CONNECTING) {
            Logger.debug("GrpcCallProvider", "Setting the connectivityAttemptTimer", new Object[0]);
            this.connectivityAttemptTimer = this.asyncQueue.enqueueAfterDelay(AsyncQueue.TimerId.CONNECTIVITY_ATTEMPT_TIMER, C0479C.DEFAULT_SEEK_FORWARD_INCREMENT_MS, new Runnable() { // from class: com.google.firebase.firestore.remote.GrpcCallProvider$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    GrpcCallProvider.this.lambda$onConnectivityStateChange$1(managedChannel);
                }
            });
        }
        managedChannel.notifyWhenStateChanged(state, new Runnable() { // from class: com.google.firebase.firestore.remote.GrpcCallProvider$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                GrpcCallProvider.this.lambda$onConnectivityStateChange$3(managedChannel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnectivityStateChange$1(ManagedChannel managedChannel) {
        Logger.debug("GrpcCallProvider", "connectivityAttemptTimer elapsed. Resetting the channel.", new Object[0]);
        clearConnectivityAttemptTimer();
        resetChannel(managedChannel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnectivityStateChange$3(final ManagedChannel managedChannel) {
        this.asyncQueue.enqueueAndForget(new Runnable() { // from class: com.google.firebase.firestore.remote.GrpcCallProvider$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                GrpcCallProvider.this.lambda$onConnectivityStateChange$2(managedChannel);
            }
        });
    }

    private void resetChannel(final ManagedChannel managedChannel) {
        this.asyncQueue.enqueueAndForget(new Runnable() { // from class: com.google.firebase.firestore.remote.GrpcCallProvider$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                GrpcCallProvider.this.lambda$resetChannel$4(managedChannel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resetChannel$4(ManagedChannel managedChannel) {
        managedChannel.shutdownNow();
        initChannelTask();
    }

    private void initChannelTask() {
        this.channelTask = Tasks.call(Executors.BACKGROUND_EXECUTOR, new Callable() { // from class: com.google.firebase.firestore.remote.GrpcCallProvider$$ExternalSyntheticLambda6
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ManagedChannel lambda$initChannelTask$6;
                lambda$initChannelTask$6 = GrpcCallProvider.this.lambda$initChannelTask$6();
                return lambda$initChannelTask$6;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ManagedChannel lambda$initChannelTask$6() throws Exception {
        final ManagedChannel initChannel = initChannel(this.context, this.databaseInfo);
        this.asyncQueue.enqueueAndForget(new Runnable() { // from class: com.google.firebase.firestore.remote.GrpcCallProvider$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                GrpcCallProvider.this.lambda$initChannelTask$5(initChannel);
            }
        });
        this.callOptions = ((FirestoreGrpc.FirestoreStub) ((FirestoreGrpc.FirestoreStub) FirestoreGrpc.newStub(initChannel).withCallCredentials(this.firestoreHeaders)).withExecutor(this.asyncQueue.getExecutor())).getCallOptions();
        Logger.debug("GrpcCallProvider", "Channel successfully reset.", new Object[0]);
        return initChannel;
    }

    private void clearConnectivityAttemptTimer() {
        if (this.connectivityAttemptTimer != null) {
            Logger.debug("GrpcCallProvider", "Clearing the connectivityAttemptTimer", new Object[0]);
            this.connectivityAttemptTimer.cancel();
            this.connectivityAttemptTimer = null;
        }
    }
}
