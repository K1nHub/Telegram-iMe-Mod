.class abstract Lio/grpc/internal/ForwardingManagedChannel;
.super Lio/grpc/ManagedChannel;
.source "ForwardingManagedChannel.java"


# instance fields
.field private final delegate:Lio/grpc/ManagedChannel;


# direct methods
.method constructor <init>(Lio/grpc/ManagedChannel;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/grpc/ManagedChannel;-><init>()V

    .line 32
    iput-object p1, p0, Lio/grpc/internal/ForwardingManagedChannel;->delegate:Lio/grpc/ManagedChannel;

    return-void
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/grpc/internal/ForwardingManagedChannel;->delegate:Lio/grpc/ManagedChannel;

    invoke-virtual {v0}, Lio/grpc/Channel;->authority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enterIdle()V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/grpc/internal/ForwardingManagedChannel;->delegate:Lio/grpc/ManagedChannel;

    invoke-virtual {v0}, Lio/grpc/ManagedChannel;->enterIdle()V

    return-void
.end method

.method public getState(Z)Lio/grpc/ConnectivityState;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/grpc/internal/ForwardingManagedChannel;->delegate:Lio/grpc/ManagedChannel;

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannel;->getState(Z)Lio/grpc/ConnectivityState;

    move-result-object p1

    return-object p1
.end method

.method public newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/ClientCall<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lio/grpc/internal/ForwardingManagedChannel;->delegate:Lio/grpc/ManagedChannel;

    invoke-virtual {v0, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object p1

    return-object p1
.end method

.method public notifyWhenStateChanged(Lio/grpc/ConnectivityState;Ljava/lang/Runnable;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/grpc/internal/ForwardingManagedChannel;->delegate:Lio/grpc/ManagedChannel;

    invoke-virtual {v0, p1, p2}, Lio/grpc/ManagedChannel;->notifyWhenStateChanged(Lio/grpc/ConnectivityState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetConnectBackoff()V
    .locals 1

    .line 83
    iget-object v0, p0, Lio/grpc/internal/ForwardingManagedChannel;->delegate:Lio/grpc/ManagedChannel;

    invoke-virtual {v0}, Lio/grpc/ManagedChannel;->resetConnectBackoff()V

    return-void
.end method

.method public shutdownNow()Lio/grpc/ManagedChannel;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/grpc/internal/ForwardingManagedChannel;->delegate:Lio/grpc/ManagedChannel;

    invoke-virtual {v0}, Lio/grpc/ManagedChannel;->shutdownNow()Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 93
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ForwardingManagedChannel;->delegate:Lio/grpc/ManagedChannel;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
