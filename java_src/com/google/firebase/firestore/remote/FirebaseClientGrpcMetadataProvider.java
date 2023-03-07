package com.google.firebase.firestore.remote;

import com.google.firebase.FirebaseOptions;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import com.google.firebase.platforminfo.UserAgentPublisher;
import io.grpc.Metadata;
/* loaded from: classes3.dex */
public class FirebaseClientGrpcMetadataProvider implements GrpcMetadataProvider {
    private static final Metadata.Key<String> GMP_APP_ID_HEADER;
    private static final Metadata.Key<String> HEART_BEAT_HEADER;
    private static final Metadata.Key<String> USER_AGENT_HEADER;
    private final FirebaseOptions firebaseOptions;
    private final Provider<HeartBeatInfo> heartBeatInfoProvider;
    private final Provider<UserAgentPublisher> userAgentPublisherProvider;

    static {
        Metadata.AsciiMarshaller<String> asciiMarshaller = Metadata.ASCII_STRING_MARSHALLER;
        HEART_BEAT_HEADER = Metadata.Key.m700of("x-firebase-client-log-type", asciiMarshaller);
        USER_AGENT_HEADER = Metadata.Key.m700of("x-firebase-client", asciiMarshaller);
        GMP_APP_ID_HEADER = Metadata.Key.m700of("x-firebase-gmpid", asciiMarshaller);
    }

    public FirebaseClientGrpcMetadataProvider(Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseOptions firebaseOptions) {
        this.userAgentPublisherProvider = provider;
        this.heartBeatInfoProvider = provider2;
        this.firebaseOptions = firebaseOptions;
    }

    @Override // com.google.firebase.firestore.remote.GrpcMetadataProvider
    public void updateMetadata(Metadata metadata) {
        if (this.heartBeatInfoProvider.get() == null || this.userAgentPublisherProvider.get() == null) {
            return;
        }
        int code = this.heartBeatInfoProvider.get().getHeartBeatCode("fire-fst").getCode();
        if (code != 0) {
            metadata.put(HEART_BEAT_HEADER, Integer.toString(code));
        }
        metadata.put(USER_AGENT_HEADER, this.userAgentPublisherProvider.get().getUserAgent());
        maybeAddGmpAppId(metadata);
    }

    private void maybeAddGmpAppId(Metadata metadata) {
        FirebaseOptions firebaseOptions = this.firebaseOptions;
        if (firebaseOptions == null) {
            return;
        }
        String applicationId = firebaseOptions.getApplicationId();
        if (applicationId.length() != 0) {
            metadata.put(GMP_APP_ID_HEADER, applicationId);
        }
    }
}
