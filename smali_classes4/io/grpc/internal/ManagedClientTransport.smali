.class public interface abstract Lio/grpc/internal/ManagedClientTransport;
.super Ljava/lang/Object;
.source "ManagedClientTransport.java"

# interfaces
.implements Lio/grpc/internal/ClientTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ManagedClientTransport$Listener;
    }
.end annotation


# virtual methods
.method public abstract shutdown(Lio/grpc/Status;)V
.end method

.method public abstract shutdownNow(Lio/grpc/Status;)V
.end method

.method public abstract start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
.end method
