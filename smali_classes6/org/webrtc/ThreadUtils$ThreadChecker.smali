.class public Lorg/webrtc/ThreadUtils$ThreadChecker;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadChecker"
.end annotation


# instance fields
.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ThreadUtils$ThreadChecker;->thread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public checkIsOnValidThread()V
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/webrtc/ThreadUtils$ThreadChecker;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ThreadUtils$ThreadChecker;->thread:Ljava/lang/Thread;

    .line 36
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ThreadUtils$ThreadChecker;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    return-void

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detachThread()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/webrtc/ThreadUtils$ThreadChecker;->thread:Ljava/lang/Thread;

    return-void
.end method
