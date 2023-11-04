package com.google.firebase.firestore.remote;

import com.google.firebase.FirebaseOptions;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import com.google.firebase.platforminfo.UserAgentPublisher;
import io.grpc.Metadata;
/* loaded from: classes3.dex */
public class FirebaseClientGrpcMetadataProvider implements GrpcMetadataProvider {
    private final Provider<HeartBeatInfo> heartBeatInfoProvider;
    private final Provider<UserAgentPublisher> userAgentPublisherProvider;

    static {
        Metadata.AsciiMarshaller<String> asciiMarshaller = Metadata.ASCII_STRING_MARSHALLER;
        Metadata.Key.m998of("x-firebase-client-log-type", asciiMarshaller);
        Metadata.Key.m998of("x-firebase-client", asciiMarshaller);
        Metadata.Key.m998of("x-firebase-gmpid", asciiMarshaller);
    }

    public FirebaseClientGrpcMetadataProvider(Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseOptions firebaseOptions) {
        this.userAgentPublisherProvider = provider;
        this.heartBeatInfoProvider = provider2;
    }
}
