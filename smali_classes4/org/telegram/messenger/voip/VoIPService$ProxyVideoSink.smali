.class public Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Lorg/webrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/voip/VoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyVideoSink"
.end annotation


# instance fields
.field private background:Lorg/webrtc/VideoSink;

.field private nativeInstance:J

.field private target:Lorg/webrtc/VideoSink;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)J
    .locals 2

    .line 616
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->nativeInstance:J

    return-wide v0
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;J)J
    .locals 0

    .line 616
    iput-wide p1, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->nativeInstance:J

    return-wide p1
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)Lorg/webrtc/VideoSink;
    .locals 0

    .line 616
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized onFrame(Lorg/webrtc/VideoFrame;)V
    .locals 1

    monitor-enter p0

    .line 624
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    if-eqz v0, :cond_0

    .line 625
    invoke-interface {v0, p1}, Lorg/webrtc/VideoSink;->onFrame(Lorg/webrtc/VideoFrame;)V

    .line 627
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;

    if-eqz v0, :cond_1

    .line 628
    invoke-interface {v0, p1}, Lorg/webrtc/VideoSink;->onFrame(Lorg/webrtc/VideoFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeBackground(Lorg/webrtc/VideoSink;)V
    .locals 1

    monitor-enter p0

    .line 661
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 662
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeTarget(Lorg/webrtc/VideoSink;)V
    .locals 1

    monitor-enter p0

    .line 655
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 656
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBackground(Lorg/webrtc/VideoSink;)V
    .locals 2

    monitor-enter p0

    .line 645
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 646
    invoke-interface {v0, v1}, Lorg/webrtc/VideoSink;->setParentSink(Lorg/webrtc/VideoSink;)V

    .line 648
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;

    if-eqz p1, :cond_1

    .line 650
    invoke-interface {p1, p0}, Lorg/webrtc/VideoSink;->setParentSink(Lorg/webrtc/VideoSink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic setParentSink(Lorg/webrtc/VideoSink;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/webrtc/VideoSink$-CC;->$default$setParentSink(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public declared-synchronized setTarget(Lorg/webrtc/VideoSink;)V
    .locals 2

    monitor-enter p0

    .line 633
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 635
    invoke-interface {v0, v1}, Lorg/webrtc/VideoSink;->setParentSink(Lorg/webrtc/VideoSink;)V

    .line 637
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    if-eqz p1, :cond_1

    .line 639
    invoke-interface {p1, p0}, Lorg/webrtc/VideoSink;->setParentSink(Lorg/webrtc/VideoSink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized swap()V
    .locals 1

    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;

    if-eqz v0, :cond_0

    .line 668
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    const/4 v0, 0x0

    .line 669
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
