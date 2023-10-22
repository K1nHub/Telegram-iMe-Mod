.class public interface abstract Lorg/ton/adnl/network/TcpClient;
.super Ljava/lang/Object;
.source "TcpClient.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lkotlinx/coroutines/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/adnl/network/TcpClient$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract close(Ljava/lang/Throwable;)V
.end method

.method public abstract getInput()Lio/ktor/utils/io/ByteReadChannel;
.end method

.method public abstract getOutput()Lio/ktor/utils/io/ByteWriteChannel;
.end method
