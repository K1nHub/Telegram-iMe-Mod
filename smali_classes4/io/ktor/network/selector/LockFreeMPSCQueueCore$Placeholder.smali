.class final Lio/ktor/network/selector/LockFreeMPSCQueueCore$Placeholder;
.super Ljava/lang/Object;
.source "LockFreeMPSCQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/selector/LockFreeMPSCQueueCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Placeholder"
.end annotation


# instance fields
.field public final index:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Placeholder;->index:I

    return-void
.end method
