.class public final Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;
.super Lio/grpc/stub/AbstractAsyncStub;
.source "FirestoreGrpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/FirestoreGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FirestoreStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractAsyncStub<",
        "Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    .line 750
    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractAsyncStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;Lcom/google/firestore/v1/FirestoreGrpc$1;)V
    .locals 0

    .line 747
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method protected build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;
    .locals 1

    .line 756
    new-instance v0, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;

    invoke-direct {v0, p1, p2}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method protected bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    .line 747
    invoke-virtual {p0, p1, p2}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;

    move-result-object p1

    return-object p1
.end method
