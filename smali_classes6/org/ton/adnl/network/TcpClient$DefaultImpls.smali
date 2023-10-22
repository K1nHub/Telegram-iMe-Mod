.class public final Lorg/ton/adnl/network/TcpClient$DefaultImpls;
.super Ljava/lang/Object;
.source "TcpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/adnl/network/TcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static dispose(Lorg/ton/adnl/network/TcpClient;)V
    .locals 0

    .line 15
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
