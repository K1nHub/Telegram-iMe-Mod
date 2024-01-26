.class public Lcom/google/firebase/firestore/remote/FirestoreChannel;
.super Ljava/lang/Object;
.source "FirestoreChannel.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v1, "x-goog-api-client"

    .line 47
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    const-string v1, "google-cloud-resource-prefix"

    .line 50
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    return-void
.end method

.method public static setClientLanguage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
