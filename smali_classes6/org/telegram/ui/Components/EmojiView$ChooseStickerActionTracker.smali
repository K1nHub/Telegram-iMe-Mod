.class public abstract Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;
.super Ljava/lang/Object;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChooseStickerActionTracker"
.end annotation


# instance fields
.field private final currentAccount:I

.field private final dialogId:J

.field lastActionTime:J

.field private final threadId:I

.field typingWasSent:Z

.field visible:Z


# direct methods
.method public constructor <init>(IJI)V
    .locals 2

    .line 10225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10231
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->visible:Z

    const-wide/16 v0, -0x1

    .line 10233
    iput-wide v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    .line 10226
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->currentAccount:I

    .line 10227
    iput-wide p2, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->dialogId:J

    .line 10228
    iput p4, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->threadId:I

    return-void
.end method

.method static synthetic access$22800(Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;)V
    .locals 0

    .line 10219
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->reset()V

    return-void
.end method

.method private reset()V
    .locals 7

    .line 10250
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->typingWasSent:Z

    if-eqz v0, :cond_0

    .line 10251
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->dialogId:J

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->threadId:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->sendTyping(JIII)Z

    :cond_0
    const-wide/16 v0, -0x1

    .line 10253
    iput-wide v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    return-void
.end method


# virtual methods
.method public checkVisibility()V
    .locals 1

    .line 10257
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->isShown()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->visible:Z

    if-nez v0, :cond_0

    .line 10259
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->reset()V

    :cond_0
    return-void
.end method

.method public doSomeAction()V
    .locals 7

    .line 10236
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->visible:Z

    if-eqz v0, :cond_1

    .line 10237
    iget-wide v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 10238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    return-void

    .line 10241
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 10242
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->typingWasSent:Z

    .line 10243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->lastActionTime:J

    .line 10244
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->dialogId:J

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->threadId:I

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->sendTyping(JIII)Z

    :cond_1
    return-void
.end method

.method public abstract isShown()Z
.end method
