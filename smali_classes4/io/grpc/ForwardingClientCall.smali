.class public abstract Lio/grpc/ForwardingClientCall;
.super Lio/grpc/PartialForwardingClientCall;
.source "ForwardingClientCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/PartialForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lio/grpc/PartialForwardingClientCall;-><init>()V

    return-void
.end method


# virtual methods
.method public sendMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lio/grpc/PartialForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    return-void
.end method
