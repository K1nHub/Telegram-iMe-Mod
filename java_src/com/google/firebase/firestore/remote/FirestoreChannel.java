package com.google.firebase.firestore.remote;

import android.content.Context;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.firestore.auth.CredentialsProvider;
import com.google.firebase.firestore.core.DatabaseInfo;
import com.google.firebase.firestore.model.DatabaseId;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.AsyncQueue;
import io.grpc.ClientCall;
import io.grpc.ForwardingClientCall;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
/* loaded from: classes3.dex */
public class FirestoreChannel {
    private static final Metadata.Key<String> RESOURCE_PREFIX_HEADER;
    private static final Metadata.Key<String> X_GOOG_API_CLIENT_HEADER;
    private static volatile String clientLanguage;
    private final AsyncQueue asyncQueue;
    private final GrpcCallProvider callProvider;
    private final CredentialsProvider credentialsProvider;
    private final GrpcMetadataProvider metadataProvider;
    private final String resourcePrefixValue;

    static {
        Metadata.AsciiMarshaller<String> asciiMarshaller = Metadata.ASCII_STRING_MARSHALLER;
        X_GOOG_API_CLIENT_HEADER = Metadata.Key.m699of("x-goog-api-client", asciiMarshaller);
        RESOURCE_PREFIX_HEADER = Metadata.Key.m699of("google-cloud-resource-prefix", asciiMarshaller);
        clientLanguage = "gl-java/";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirestoreChannel(AsyncQueue asyncQueue, Context context, CredentialsProvider credentialsProvider, DatabaseInfo databaseInfo, GrpcMetadataProvider grpcMetadataProvider) {
        this.asyncQueue = asyncQueue;
        this.metadataProvider = grpcMetadataProvider;
        this.credentialsProvider = credentialsProvider;
        this.callProvider = new GrpcCallProvider(asyncQueue, context, databaseInfo, new FirestoreCallCredentials(credentialsProvider));
        DatabaseId databaseId = databaseInfo.getDatabaseId();
        this.resourcePrefixValue = String.format("projects/%s/databases/%s", databaseId.getProjectId(), databaseId.getDatabaseId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <ReqT, RespT> ClientCall<ReqT, RespT> runBidiStreamingRpc(MethodDescriptor<ReqT, RespT> methodDescriptor, final IncomingStreamObserver<RespT> incomingStreamObserver) {
        final ClientCall[] clientCallArr = {null};
        final Task<ClientCall<ReqT, RespT>> createClientCall = this.callProvider.createClientCall(methodDescriptor);
        createClientCall.addOnCompleteListener(this.asyncQueue.getExecutor(), new OnCompleteListener() { // from class: com.google.firebase.firestore.remote.FirestoreChannel$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                FirestoreChannel.this.lambda$runBidiStreamingRpc$0(clientCallArr, incomingStreamObserver, task);
            }
        });
        return new ForwardingClientCall<ReqT, RespT>() { // from class: com.google.firebase.firestore.remote.FirestoreChannel.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.grpc.PartialForwardingClientCall
            public ClientCall<ReqT, RespT> delegate() {
                Assert.hardAssert(clientCallArr[0] != null, "ClientCall used before onOpen() callback", new Object[0]);
                return clientCallArr[0];
            }

            @Override // io.grpc.PartialForwardingClientCall, io.grpc.ClientCall
            public void halfClose() {
                if (clientCallArr[0] == null) {
                    createClientCall.addOnSuccessListener(FirestoreChannel.this.asyncQueue.getExecutor(), FirestoreChannel$2$$ExternalSyntheticLambda0.INSTANCE);
                } else {
                    super.halfClose();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runBidiStreamingRpc$0(final ClientCall[] clientCallArr, final IncomingStreamObserver incomingStreamObserver, Task task) {
        clientCallArr[0] = (ClientCall) task.getResult();
        clientCallArr[0].start(new ClientCall.Listener<RespT>() { // from class: com.google.firebase.firestore.remote.FirestoreChannel.1
            @Override // io.grpc.ClientCall.Listener
            public void onReady() {
            }

            @Override // io.grpc.ClientCall.Listener
            public void onHeaders(Metadata metadata) {
                try {
                    incomingStreamObserver.onHeaders(metadata);
                } catch (Throwable th) {
                    FirestoreChannel.this.asyncQueue.panic(th);
                }
            }

            @Override // io.grpc.ClientCall.Listener
            public void onMessage(RespT respt) {
                try {
                    incomingStreamObserver.onNext(respt);
                    clientCallArr[0].request(1);
                } catch (Throwable th) {
                    FirestoreChannel.this.asyncQueue.panic(th);
                }
            }

            @Override // io.grpc.ClientCall.Listener
            public void onClose(Status status, Metadata metadata) {
                try {
                    incomingStreamObserver.onClose(status);
                } catch (Throwable th) {
                    FirestoreChannel.this.asyncQueue.panic(th);
                }
            }
        }, requestHeaders());
        incomingStreamObserver.onOpen();
        clientCallArr[0].request(1);
    }

    public void invalidateToken() {
        this.credentialsProvider.invalidateToken();
    }

    public static void setClientLanguage(String str) {
        clientLanguage = str;
    }

    private String getGoogApiClientValue() {
        return String.format("%s fire/%s grpc/", clientLanguage, "23.0.4");
    }

    private Metadata requestHeaders() {
        Metadata metadata = new Metadata();
        metadata.put(X_GOOG_API_CLIENT_HEADER, getGoogApiClientValue());
        metadata.put(RESOURCE_PREFIX_HEADER, this.resourcePrefixValue);
        GrpcMetadataProvider grpcMetadataProvider = this.metadataProvider;
        if (grpcMetadataProvider != null) {
            grpcMetadataProvider.updateMetadata(metadata);
        }
        return metadata;
    }
}
