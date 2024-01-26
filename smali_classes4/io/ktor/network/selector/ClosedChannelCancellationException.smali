.class public final Lio/ktor/network/selector/ClosedChannelCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "Selectable.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Closed channel."

    .line 11
    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-void
.end method
