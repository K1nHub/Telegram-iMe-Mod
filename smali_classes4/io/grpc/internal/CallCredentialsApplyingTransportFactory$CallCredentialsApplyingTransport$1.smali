.class Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport$1;
.super Lio/grpc/CallCredentials$RequestInfo;
.source "CallCredentialsApplyingTransportFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lio/grpc/CallCredentials$RequestInfo;-><init>()V

    return-void
.end method
