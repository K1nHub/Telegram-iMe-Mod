.class public Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;
.super Ljava/lang/Object;
.source "ChannelBoostsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ChannelBoostsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanApplyBoost"
.end annotation


# instance fields
.field public alreadyActive:Z

.field public canApply:Z

.field public floodWait:I

.field public giftedPremium:Z

.field private lastCheckTime:J

.field public replaceDialogId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;J)J
    .locals 0

    .line 90
    iput-wide p1, p0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->lastCheckTime:J

    return-wide p1
.end method


# virtual methods
.method public checkTime()V
    .locals 6

    .line 100
    iget v0, p0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->floodWait:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->lastCheckTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->floodWait:I

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->lastCheckTime:J

    .line 102
    iget v0, p0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->floodWait:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->floodWait:I

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->canApply:Z

    :cond_0
    return-void
.end method
