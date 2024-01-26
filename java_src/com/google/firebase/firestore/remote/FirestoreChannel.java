package com.google.firebase.firestore.remote;

import io.grpc.Metadata;
/* loaded from: classes3.dex */
public class FirestoreChannel {
    public static void setClientLanguage(String str) {
    }

    static {
        Metadata.AsciiMarshaller<String> asciiMarshaller = Metadata.ASCII_STRING_MARSHALLER;
        Metadata.Key.m1001of("x-goog-api-client", asciiMarshaller);
        Metadata.Key.m1001of("google-cloud-resource-prefix", asciiMarshaller);
    }
}
