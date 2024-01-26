.class public Lorg/telegram/ui/EmojiAnimationsOverlay;
.super Ljava/lang/Object;
.source "EmojiAnimationsOverlay.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;
    }
.end annotation


# static fields
.field private static final excludeEmojiFromPack:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedEmoji:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field animationIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private attached:Z

.field chatActivity:Lorg/telegram/ui/ChatActivity;

.field contentLayout:Landroid/widget/FrameLayout;

.field currentAccount:I

.field dialogId:J

.field drawingObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;",
            ">;"
        }
    .end annotation
.end field

.field emojiInteractionsStickersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;>;"
        }
    .end annotation
.end field

.field hintRunnable:Ljava/lang/Runnable;

.field inited:Z

.field lastAnimationIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lastTappedEmoji:Ljava/lang/String;

.field lastTappedMsgId:I

.field lastTappedTime:J

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private preloaded:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field random:Ljava/util/Random;

.field sentInteractionsRunnable:Ljava/lang/Runnable;

.field set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field threadMsgId:J

.field timeIntervals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$51RDbPoUXYzAKlzQmpKDhOqOv_A(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->lambda$showStickerSetBulletin$3(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_t5dm5gI8mENfxMn5vCUVdIa_zM(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/EmojiAnimationsOverlay;->lambda$createDrawingObject$1(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ca0Rc4Tf9hkU9rsO8HHFfW7TBEo(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->lambda$createDrawingObject$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ixrXIKrFgK9zbrphDKu_TeKPY_0(Lorg/telegram/ui/EmojiAnimationsOverlay;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->lambda$createDrawingObject$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->excludeEmojiFromPack:Ljava/util/HashSet;

    const-string v1, "0\u20e3"

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "1\u20e3"

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "2\u20e3"

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "3\u20e3"

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "4\u20e3"

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "5\u20e3"

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "6\u20e3"

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "7\u20e3"

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "8\u20e3"

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "9\u20e3"

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;I)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->inited:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    .line 100
    iput-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    .line 101
    iput p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/RecyclerListView;IJJ)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->inited:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    .line 105
    iput-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 106
    iput-object p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    .line 107
    iput-object p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 108
    iput p4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    .line 109
    iput-wide p5, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    .line 110
    iput-wide p7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:J

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/EmojiAnimationsOverlay;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->findViewAndShowAnimation(II)V

    return-void
.end method

.method private clearSendingInfo()V
    .locals 2

    const/4 v0, 0x0

    .line 879
    iput v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    const/4 v0, 0x0

    .line 880
    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedEmoji:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 881
    iput-wide v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private createDrawingObject(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;IZZFFZ)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    .line 606
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-eqz v9, :cond_1

    .line 608
    iget v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v10}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v10

    if-nez v10, :cond_1

    return v8

    .line 612
    :cond_1
    sget-object v10, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move v1, v8

    goto/16 :goto_10

    .line 613
    :cond_3
    :goto_1
    iget-object v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    .line 614
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    if-eqz v9, :cond_2

    :cond_5
    move v11, v8

    move v12, v11

    move v13, v12

    .line 617
    :goto_2
    iget-object v14, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_9

    .line 618
    iget-object v14, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget v14, v14, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    if-ne v14, v2, :cond_7

    add-int/lit8 v12, v12, 0x1

    .line 620
    iget-object v14, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v14, v14, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v14}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v14

    if-eqz v14, :cond_6

    iget-object v14, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v14, v14, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v14}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    return v8

    .line 624
    :cond_7
    iget-object v14, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v14, v14, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v14, :cond_8

    if-eqz v3, :cond_8

    iget-object v14, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v14, v14, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v7, v14, v7

    if-nez v7, :cond_8

    add-int/lit8 v13, v13, 0x1

    :cond_8
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_9
    if-eqz v6, :cond_e

    if-eqz v9, :cond_e

    if-lez v12, :cond_e

    .line 629
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Bulletin;->hash:I

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ne v1, v2, :cond_a

    const/4 v1, 0x0

    return v1

    .line 632
    :cond_a
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v1

    .line 634
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 635
    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_c

    .line 638
    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    :cond_c
    if-nez v3, :cond_d

    .line 641
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 642
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 643
    iget v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_4

    .line 647
    :cond_d
    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showStickerSetBulletin(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/messenger/MessageObject;)V

    :goto_4
    const/4 v7, 0x0

    return v7

    :cond_e
    const/4 v7, 0x0

    const/4 v8, 0x4

    if-lt v12, v8, :cond_f

    return v7

    :cond_f
    if-eqz v9, :cond_10

    .line 657
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->getPremiumStickerAnimation()Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v7

    move-object v10, v7

    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_10
    if-eqz v4, :cond_18

    .line 658
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result v7

    if-eqz v7, :cond_18

    if-ltz v5, :cond_11

    .line 659
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    if-le v5, v7, :cond_17

    .line 660
    :cond_11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 661
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_15

    .line 662
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v11, :cond_12

    goto :goto_7

    .line 666
    :cond_12
    iget-object v12, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    if-eqz v12, :cond_13

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_6

    :cond_13
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_14

    .line 667
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 668
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 671
    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 672
    iget-object v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int/2addr v5, v7

    goto :goto_8

    .line 674
    :cond_16
    iget-object v7, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/2addr v7, v11

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 677
    :cond_17
    :goto_8
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_9

    :cond_18
    if-ltz v5, :cond_19

    .line 679
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    if-le v5, v7, :cond_1a

    .line 680
    :cond_19
    iget-object v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int/2addr v5, v7

    .line 682
    :cond_1a
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    :goto_9
    const/4 v10, 0x0

    :goto_a
    if-nez v7, :cond_1b

    if-nez v10, :cond_1b

    const/4 v11, 0x0

    return v11

    .line 689
    :cond_1b
    new-instance v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    invoke-direct {v11, v0}, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    if-nez v4, :cond_1d

    :cond_1c
    const/4 v12, 0x0

    goto :goto_b

    .line 690
    :cond_1d
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v12

    if-eqz v12, :cond_1c

    iget v12, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v12}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v12

    if-eqz v12, :cond_1c

    const/4 v12, 0x1

    :goto_b
    iput-boolean v12, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    const/high16 v12, 0x40800000    # 4.0f

    div-float v14, p8, v12

    .line 691
    iget-object v15, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v15}, Ljava/util/Random;->nextInt()I

    move-result v15

    rem-int/lit8 v15, v15, 0x65

    int-to-float v15, v15

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    mul-float/2addr v14, v15

    iput v14, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    div-float v12, p9, v12

    .line 692
    iget-object v14, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v14}, Ljava/util/Random;->nextInt()I

    move-result v14

    rem-int/lit8 v14, v14, 0x65

    int-to-float v14, v14

    div-float v14, v14, v16

    mul-float/2addr v12, v14

    iput v12, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    .line 693
    iput v2, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    .line 694
    iput-object v7, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v12, p10

    .line 695
    iput-boolean v12, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    .line 696
    iget-object v12, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 697
    iget-object v12, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12, v6}, Lorg/telegram/messenger/ImageReceiver;->setAllowLottieVibration(Z)V

    const-string v12, "_"

    if-eqz v7, :cond_1f

    .line 700
    invoke-static {}, Lorg/telegram/ui/EmojiAnimationsOverlay;->getFilterWidth()I

    move-result v8

    .line 701
    iget-object v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v13, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_1e

    const/4 v10, 0x0

    goto :goto_c

    .line 702
    :cond_1e
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_c
    const/4 v13, 0x1

    add-int/2addr v10, v13

    .line 703
    iget-object v13, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v14, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    .line 707
    iget-object v7, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 709
    iget-object v7, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_pcache_compress"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/16 v22, 0x1

    const-string v20, "tgs"

    move-object/from16 v16, v7

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 710
    iget-object v7, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v8, Lorg/telegram/ui/EmojiAnimationsOverlay$3;

    invoke-direct {v8, v0, v6, v4}, Lorg/telegram/ui/EmojiAnimationsOverlay$3;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;ZLorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 722
    iget-object v4, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 723
    iget-object v4, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    goto/16 :goto_e

    .line 726
    :cond_1f
    invoke-static {}, Lorg/telegram/ui/EmojiAnimationsOverlay;->getFilterWidth()I

    move-result v7

    if-lez v13, :cond_21

    .line 728
    iget-object v13, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v14

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-nez v13, :cond_20

    const/4 v13, 0x0

    goto :goto_d

    .line 729
    :cond_20
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 730
    :goto_d
    iget-object v14, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v15

    iget-wide v3, v15, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    add-int/lit8 v4, v13, 0x1

    rem-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 733
    :cond_21
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iput-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 734
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-static {v10, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/16 v22, 0x1

    const-string v20, "tgs"

    move-object/from16 v16, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 737
    :cond_22
    :goto_e
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 738
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 739
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 740
    iget-boolean v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v3, :cond_23

    .line 741
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 743
    :cond_23
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 745
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 747
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 748
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    if-eqz v6, :cond_28

    if-nez v9, :cond_28

    .line 750
    iget v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-wide v6, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_28

    .line 751
    iget v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    if-eqz v3, :cond_25

    if-eq v3, v2, :cond_25

    .line 752
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_25

    .line 753
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 754
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 757
    :cond_25
    iput v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    .line 758
    iput-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedEmoji:Ljava/lang/String;

    .line 759
    iget-wide v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_26

    .line 760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    .line 761
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 762
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 763
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 766
    :cond_26
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v6, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    sub-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :goto_f
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_27

    .line 770
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    .line 771
    iput-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    .line 773
    :cond_27
    new-instance v2, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    iput-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_28
    if-eqz p7, :cond_29

    .line 780
    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    iget-wide v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:J

    const/16 v7, 0xb

    const/4 v8, 0x0

    move-object/from16 p2, v2

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move/from16 p7, v7

    move-object/from16 p8, p1

    move/from16 p9, v8

    invoke-virtual/range {p2 .. p9}, Lorg/telegram/messenger/MessagesController;->sendTyping(JJILjava/lang/String;I)Z

    :cond_29
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method private findViewAndShowAnimation(II)V
    .locals 6

    .line 241
    iget-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 245
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 246
    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 247
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_2

    .line 248
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 249
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 251
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 253
    :cond_1
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 254
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v4, p1, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 262
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_5

    .line 263
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatActivity;->restartSticker(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 264
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/EmojiData;->hasEmojiSupportVibration(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x3

    .line 265
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_4
    const/4 p1, 0x1

    .line 267
    invoke-direct {p0, v0, p2, v1, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showAnimationForCell(Lorg/telegram/ui/Cells/ChatMessageCell;IZZ)Z

    :cond_5
    return-void
.end method

.method public static getFilterWidth()I
    .locals 2

    .line 790
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    .line 793
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 795
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private synthetic lambda$createDrawingObject$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 644
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showStickerSetBulletin(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private synthetic lambda$createDrawingObject$1(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 643
    new-instance p3, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createDrawingObject$2()V
    .locals 1

    .line 774
    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->sendCurrentTaps()V

    const/4 v0, 0x0

    .line 775
    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$showStickerSetBulletin$3(Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    .line 812
    new-instance v7, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v3

    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v5, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 813
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p1

    invoke-virtual {v7, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 814
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private preloadAnimation(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    .line 572
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MediaDataController;->preloadImage(Lorg/telegram/messenger/ImageLocation;I)V

    return-void
.end method

.method private sendCurrentTaps()V
    .locals 9

    .line 840
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    if-nez v0, :cond_0

    return-void

    .line 843
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;-><init>()V

    .line 844
    iget v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->msg_id:I

    .line 845
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedEmoji:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->emoticon:Ljava/lang/String;

    .line 846
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 847
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "v"

    const/4 v3, 0x1

    .line 849
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 850
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 852
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 853
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "i"

    .line 854
    iget-object v7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "t"

    .line 855
    iget-object v7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 856
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "a"

    .line 859
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 867
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;-><init>()V

    .line 868
    iget-wide v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    long-to-int v2, v4

    .line 869
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->top_msg_id:I

    .line 870
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->flags:I

    or-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->flags:I

    .line 872
    :cond_2
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 873
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 874
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 875
    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clearSendingInfo()V

    return-void

    :catch_0
    move-exception v0

    .line 861
    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clearSendingInfo()V

    .line 862
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private showAnimationForCell(Lorg/telegram/ui/Cells/ChatMessageCell;IZZ)Z
    .locals 12

    move-object v11, p0

    .line 577
    iget-object v0, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-le v0, v2, :cond_0

    return v1

    .line 580
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 583
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 584
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 586
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    return v1

    .line 591
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v9

    .line 592
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v8

    const/4 v2, 0x0

    cmpg-float v3, v9, v2

    if-lez v3, :cond_5

    cmpg-float v2, v8, v2

    if-gtz v2, :cond_4

    goto :goto_0

    .line 597
    :cond_4
    invoke-static {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    .line 600
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 601
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v10

    move-object v0, p0

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    .line 602
    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/EmojiAnimationsOverlay;->createDrawingObject(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;IZZFFZ)Z

    move-result v0

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method private showStickerSetBulletin(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    .line 799
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    return-void

    .line 802
    :cond_0
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 805
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/StickerSetBulletinLayout;

    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 806
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->PremiumStickerTooltip:I

    const-string v2, "PremiumStickerTooltip"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 810
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    .line 811
    new-instance v1, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    .line 816
    sget v1, Lorg/telegram/messenger/R$string;->ViewAction:I

    const-string v2, "ViewAction"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    .line 817
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/16 v1, 0xabe

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 818
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Bulletin;->hash:I

    .line 819
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    :goto_0
    return-void
.end method

.method public static unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 824
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 826
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v6, 0xd83c

    if-ne v3, v6, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const v7, 0xdffb

    if-lt v6, v7, :cond_0

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v6, 0xdfff

    if-le v3, v6, :cond_1

    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x200d

    if-ne v3, v6, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2640

    if-eq v6, v7, :cond_1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x2642

    if-ne v3, v6, :cond_2

    :cond_1
    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 827
    invoke-interface {p0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v4, v2, 0x2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p0, v4, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v3, v5

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 830
    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v6, 0xfe0f

    if-ne v3, v6, :cond_3

    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 831
    invoke-interface {p0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p0, v4, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v3, v5

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 836
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancelAllAnimations()V
    .locals 3

    const/4 v0, 0x0

    .line 907
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 908
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancelHintRunnable()V
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->hintRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 468
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->hintRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public checkPosition(Lorg/telegram/ui/Cells/ChatMessageCell;FI)Z
    .locals 1

    .line 899
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result p1

    add-float/2addr v0, p1

    cmpl-float p1, v0, p2

    if-lez p1, :cond_0

    int-to-float p1, p3

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkStickerPack()V
    .locals 14

    .line 153
    iget-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->inited:Z

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v1, "EmojiAnimations"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_1

    .line 158
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 161
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    .line 163
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_7

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    .line 165
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 166
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 168
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 169
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 170
    sget-object v5, Lorg/telegram/ui/EmojiAnimationsOverlay;->excludeEmojiFromPack:Ljava/util/HashSet;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 171
    sget-object v5, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v6, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v2

    .line 174
    :goto_2
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 175
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 178
    :cond_4
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    const-string v6, "\u2764"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    const-string v6, "\ud83e\udde1"

    const-string v7, "\ud83d\udc9b"

    const-string v8, "\ud83d\udc9a"

    const-string v9, "\ud83d\udc99"

    const-string v10, "\ud83d\udc9c"

    const-string v11, "\ud83d\udda4"

    const-string v12, "\ud83e\udd0d"

    const-string v13, "\ud83e\udd0e"

    .line 179
    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v6

    move v7, v2

    :goto_3
    if-ge v7, v4, :cond_5

    .line 180
    aget-object v8, v6, v7

    .line 181
    sget-object v9, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v9, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 187
    :cond_6
    iput-boolean v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->inited:Z

    :cond_7
    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 143
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 144
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 145
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 194
    sget p2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 195
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    const-string p2, "EmojiAnimations"

    .line 196
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 197
    invoke-virtual {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->checkStickerPack()V

    goto/16 :goto_1

    .line 199
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onEmojiInteractionsReceived:I

    if-ne p1, p2, :cond_2

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez p1, :cond_1

    return-void

    .line 203
    :cond_1
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v1, 0x1

    .line 204
    aget-object p3, p3, v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;

    .line 205
    iget-wide v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_3

    sget-object p1, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->emoticon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 206
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->msg_id:I

    .line 207
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 209
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "a"

    .line 210
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 211
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 212
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v2, "i"

    .line 213
    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sub-int/2addr v2, v1

    const-string v3, "t"

    const-wide/16 v4, 0x0

    .line 214
    invoke-virtual {p3, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 215
    new-instance p3, Lorg/telegram/ui/EmojiAnimationsOverlay$1;

    invoke-direct {p3, p0, p1, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay$1;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;II)V

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-long v2, v3

    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 228
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_3

    .line 229
    iget p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    iget-wide v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:J

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JJ)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 230
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    .line 231
    invoke-virtual {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->cancelHintRunnable()V

    :cond_3
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    move v1, v0

    .line 273
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 274
    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    .line 275
    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-eqz v3, :cond_c

    .line 276
    iput-boolean v0, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    move v3, v0

    .line 278
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    if-ge v3, v7, :cond_5

    .line 279
    iget-object v7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 282
    instance-of v9, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    .line 283
    move-object v9, v7

    check-cast v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 284
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    .line 285
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    goto :goto_2

    .line 286
    :cond_0
    instance-of v9, v7, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v9, :cond_1

    .line 287
    move-object v9, v7

    check-cast v9, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 288
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    .line 289
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    goto :goto_2

    :cond_1
    move-object v9, v10

    :goto_2
    if-eqz v10, :cond_4

    .line 291
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    iget v11, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    if-ne v10, v11, :cond_4

    .line 292
    iput-boolean v6, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    .line 293
    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v10

    add-float/2addr v3, v10

    .line 294
    iget-object v10, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v11

    add-float/2addr v10, v11

    .line 295
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    .line 296
    iget-boolean v11, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v11, :cond_2

    .line 297
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v11

    add-float/2addr v3, v11

    iput v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 298
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    add-float/2addr v10, v3

    iput v10, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    goto :goto_4

    .line 300
    :cond_2
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v11

    add-float/2addr v3, v11

    .line 301
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v11

    add-float/2addr v10, v11

    .line 302
    iget-boolean v11, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    const/16 v12, 0x18

    if-eqz v11, :cond_3

    .line 303
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v11

    neg-float v11, v11

    mul-float/2addr v11, v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    goto :goto_3

    .line 305
    :cond_3
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    :goto_3
    add-float/2addr v3, v11

    .line 307
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v11

    sub-float/2addr v10, v11

    .line 308
    iput v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 309
    iput v10, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    .line 311
    :goto_4
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    .line 312
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    move v7, v8

    .line 317
    :goto_5
    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    if-eqz v3, :cond_6

    iget v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    add-float/2addr v3, v7

    iget-object v9, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getChatListViewPadding()F

    move-result v9

    cmpg-float v3, v3, v9

    if-ltz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v9, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget v9, v9, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-lez v3, :cond_7

    .line 318
    :cond_6
    iput-boolean v6, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    .line 321
    :cond_7
    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v3, :cond_b

    .line 322
    iget v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    div-float/2addr v3, v4

    .line 323
    iget-object v9, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v7

    cmpg-float v9, v9, v3

    if-gtz v9, :cond_8

    move v9, v6

    goto :goto_6

    :cond_8
    move v9, v0

    .line 324
    :goto_6
    iget-object v10, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getChatListViewPadding()F

    move-result v10

    sub-float/2addr v7, v10

    add-float/2addr v7, v3

    cmpg-float v3, v7, v8

    if-gtz v3, :cond_9

    move v3, v6

    goto :goto_7

    :cond_9
    move v3, v0

    :goto_7
    if-nez v9, :cond_a

    if-eqz v3, :cond_b

    .line 326
    :cond_a
    iput-boolean v6, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    .line 330
    :cond_b
    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    if-eqz v3, :cond_c

    iget v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removeProgress:F

    cmpl-float v7, v3, v5

    if-eqz v7, :cond_c

    const v7, 0x3dda740e

    add-float/2addr v3, v7

    .line 331
    invoke-static {v3, v5, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removeProgress:F

    .line 332
    iget-object v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sub-float v3, v5, v3

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 333
    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 337
    :cond_c
    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->wasPlayed:Z

    if-nez v3, :cond_d

    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    if-eqz v3, :cond_d

    move v3, v6

    goto :goto_8

    :cond_d
    move v3, v0

    :goto_8
    if-nez v3, :cond_13

    .line 339
    iget-boolean v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    const/high16 v8, -0x40800000    # -1.0f

    if-eqz v7, :cond_10

    .line 340
    iget v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    const v9, 0x3fbfe7c0

    mul-float/2addr v9, v7

    const/high16 v10, 0x3d600000    # 0.0546875f

    mul-float/2addr v10, v9

    .line 342
    iget v11, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    div-float/2addr v7, v4

    add-float/2addr v11, v7

    div-float v4, v9, v4

    sub-float/2addr v11, v4

    const v4, 0x3b36d86f    # 0.00279f

    mul-float/2addr v4, v9

    sub-float/2addr v11, v4

    .line 344
    iget-boolean v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    if-nez v4, :cond_e

    .line 345
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    sub-float/2addr v7, v10

    invoke-virtual {v4, v7, v11, v9, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_9

    .line 347
    :cond_e
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    iget v12, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    add-float/2addr v7, v12

    sub-float/2addr v7, v9

    add-float/2addr v7, v10

    invoke-virtual {v4, v7, v11, v9, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 350
    :goto_9
    iget-boolean v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    if-nez v4, :cond_f

    .line 351
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 352
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v4

    iget-object v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v7

    invoke-virtual {p1, v8, v5, v4, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 353
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    .line 356
    :cond_f
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_a

    .line 359
    :cond_10
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    const/high16 v7, 0x40400000    # 3.0f

    if-eqz v4, :cond_11

    .line 360
    iget v8, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    iget v9, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    add-float/2addr v8, v9

    .line 361
    iget v9, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    iget v10, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    add-float/2addr v9, v10

    .line 362
    iget v10, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    mul-float/2addr v10, v7

    float-to-int v7, v8

    float-to-int v11, v9

    add-float/2addr v8, v10

    float-to-int v8, v8

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 363
    invoke-virtual {v4, v7, v11, v8, v9}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setBounds(IIII)V

    .line 364
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a

    .line 366
    :cond_11
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v9, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    iget v10, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    add-float/2addr v9, v10

    iget v10, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    iget v11, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    add-float/2addr v10, v11

    iget v11, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    mul-float v12, v11, v7

    mul-float/2addr v11, v7

    invoke-virtual {v4, v9, v10, v12, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 367
    iget-boolean v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    if-nez v4, :cond_12

    .line 368
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 369
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v4

    iget-object v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v7

    invoke-virtual {p1, v8, v5, v4, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 370
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    .line 373
    :cond_12
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 380
    :cond_13
    :goto_a
    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v4, :cond_14

    .line 381
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->isDone()Z

    move-result v4

    goto :goto_b

    .line 383
    :cond_14
    iget-boolean v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->wasPlayed:Z

    if-eqz v4, :cond_15

    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    if-eqz v4, :cond_15

    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v4

    iget-object v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-lt v4, v7, :cond_15

    move v4, v6

    goto :goto_b

    :cond_15
    move v4, v0

    .line 385
    :goto_b
    iget v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removeProgress:F

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_18

    if-nez v4, :cond_18

    if-eqz v3, :cond_16

    goto :goto_c

    .line 395
    :cond_16
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 396
    iput-boolean v6, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->wasPlayed:Z

    goto :goto_d

    .line 397
    :cond_17
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_1b

    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 398
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 399
    iget-object v2, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_d

    .line 386
    :cond_18
    :goto_c
    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    .line 387
    iget-boolean v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v4, :cond_19

    iget-object v2, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 388
    iget-object v2, v3, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2, v0, v6, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 390
    :cond_19
    iget-object v2, v3, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 391
    iget-object v2, v3, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v2, :cond_1a

    .line 392
    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    :cond_1b
    :goto_d
    add-int/2addr v1, v6

    goto/16 :goto_0

    .line 402
    :cond_1c
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 403
    invoke-virtual {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onAllEffectsEnd()V

    .line 405
    :cond_1d
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1e
    return-void
.end method

.method public isIdle()Z
    .locals 1

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onAllEffectsEnd()V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    .line 115
    invoke-virtual {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->checkStickerPack()V

    .line 116
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 117
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onEmojiInteractionsReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 118
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 119
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    .line 129
    iget v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 130
    iget v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->onEmojiInteractionsReceived:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 131
    iget v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 132
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onScrolled(I)V
    .locals 4

    const/4 v0, 0x0

    .line 887
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 888
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-boolean v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    if-nez v1, :cond_0

    .line 889
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    int-to-float v3, p1

    sub-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTapItem(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/ChatActivity;Z)Z
    .locals 11

    .line 414
    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-gez v0, :cond_0

    goto/16 :goto_2

    .line 417
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, -0x1

    .line 420
    invoke-direct {p0, p1, v0, p3, v1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showAnimationForCell(Lorg/telegram/ui/Cells/ChatMessageCell;IZZ)Z

    move-result v0

    .line 423
    iget v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/EmojiData;->hasEmojiSupportVibration(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result v2

    if-nez v2, :cond_2

    .line 425
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 428
    :cond_2
    iget v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 429
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmojiStickerSingle()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 430
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    iput-boolean v1, p3, Lorg/telegram/messenger/MessageObject;->forcePlayEffect:Z

    .line 431
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean v4, p3, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    .line 432
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-wide v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, v1, v2, p1}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    return v0

    .line 435
    :cond_4
    iget p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v5, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    iget-wide v7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:J

    invoke-virtual {p3, v5, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JJ)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 437
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v2, 0x5

    if-ne p3, v2, :cond_5

    move p3, v1

    goto :goto_0

    :cond_5
    move p3, v4

    :goto_0
    if-eqz p3, :cond_8

    .line 440
    iget-object p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->hintRunnable:Ljava/lang/Runnable;

    if-nez p3, :cond_8

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Bulletin;->isShowing()Z

    move-result p3

    if-nez p3, :cond_8

    :cond_6
    sget p3, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    if-lez p3, :cond_8

    iget p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    iget-object p3, p2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v7, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p3, v5, v7

    if-eqz p3, :cond_8

    .line 441
    sget p3, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    sub-int/2addr p3, v4

    invoke-static {p3}, Lorg/telegram/messenger/SharedConfig;->updateEmojiInteractionsHintCount(I)V

    .line 443
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 444
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    goto :goto_1

    .line 446
    :cond_7
    iget p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    :goto_1
    move-object v9, p1

    .line 448
    new-instance p1, Lorg/telegram/ui/Components/StickerSetBulletinLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 449
    iget-object p3, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    iget-object p3, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->EmojiInteractionTapHint:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "EmojiInteractionTapHint"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object p3, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 452
    iget-object p3, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 453
    iget-object p3, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 p3, 0xabe

    .line 454
    invoke-static {p2, p1, p3}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 455
    new-instance p2, Lorg/telegram/ui/EmojiAnimationsOverlay$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay$2;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/ui/Components/Bulletin;)V

    iput-object p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->hintRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_8
    return v0

    :cond_9
    :goto_2
    return v1
.end method

.method public preload(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 3

    .line 993
    iget-object v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 995
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    iget-wide v1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    .line 996
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 1002
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 1003
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1006
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1008
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloadAnimation(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public preloadAnimation(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 3

    .line 538
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 539
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 542
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 544
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 546
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 547
    sget-object v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 550
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 551
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 554
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 556
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloadAnimation(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public setAccount(I)V
    .locals 0

    .line 989
    iput p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    return-void
.end method

.method public showAnimationForActionCell(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 474
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-le v2, v4, :cond_0

    return v3

    .line 477
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 480
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    .line 481
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-lez v6, :cond_d

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_2

    goto/16 :goto_2

    :cond_2
    move v5, v3

    move v6, v5

    move v7, v6

    .line 488
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 489
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget v8, v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    if-ne v8, v9, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 491
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v8, v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v8, v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    return v3

    .line 495
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v8, v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v8, v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x4

    if-lt v6, v5, :cond_7

    return v3

    .line 503
    :cond_7
    new-instance v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    invoke-direct {v6, v0}, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    const/4 v8, 0x1

    .line 504
    iput-boolean v8, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v4, v9

    .line 505
    iget-object v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    rem-int/lit8 v10, v10, 0x65

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    mul-float/2addr v4, v10

    iput v4, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    div-float/2addr v2, v9

    .line 506
    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int/lit8 v4, v4, 0x65

    int-to-float v4, v4

    div-float/2addr v4, v11

    mul-float/2addr v2, v4

    iput v2, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    .line 507
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    .line 508
    iput-boolean v8, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    .line 509
    iget-object v2, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 510
    invoke-static {}, Lorg/telegram/ui/EmojiAnimationsOverlay;->getFilterWidth()I

    move-result v2

    const-string v4, "_"

    if-lez v7, :cond_9

    .line 512
    iget-object v7, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_8

    move v7, v3

    goto :goto_1

    .line 513
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 514
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    add-int/lit8 v11, v7, 0x1

    rem-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v5, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 517
    :cond_9
    iput-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 518
    iget-object v9, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v14, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v15, 0x1

    const-string v13, "tgs"

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 520
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 521
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 522
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 523
    iget-boolean v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v1, :cond_a

    .line 524
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 526
    :cond_a
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 528
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-boolean v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    if-eqz v1, :cond_c

    .line 530
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 531
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 533
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    return v8

    :cond_d
    :goto_2
    return v3
.end method

.method public showAnimationForWidget(Lorg/telegram/ui/Stories/StoryReactionWidgetView;)Z
    .locals 23

    move-object/from16 v11, p0

    .line 913
    iget-object v0, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v12, 0x0

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    return v12

    :cond_0
    move-object/from16 v13, p1

    .line 916
    iget-object v0, v13, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v14

    .line 917
    iget-object v0, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 919
    iget v0, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    iget-wide v1, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 920
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v4, 0x0

    .line 925
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 926
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    .line 927
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 928
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    .line 929
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    move v10, v1

    move v15, v10

    goto :goto_0

    :cond_2
    move v15, v1

    move v10, v2

    .line 935
    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    const/4 v3, 0x0

    .line 939
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v2, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v16, 0x40000000    # 2.0f

    div-float v2, v2, v16

    cmpl-float v0, v0, v2

    const/4 v8, 0x1

    if-lez v0, :cond_3

    move v7, v8

    goto :goto_1

    :cond_3
    move v7, v12

    .line 940
    :goto_1
    iget-object v0, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    const v17, 0x3fe66666    # 1.8f

    const/high16 v18, 0x3fc00000    # 1.5f

    if-eqz v0, :cond_7

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v2, v9

    move/from16 v20, v7

    move/from16 v7, v19

    move v12, v8

    move v8, v10

    move/from16 v21, v9

    move v9, v15

    move/from16 v22, v10

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/EmojiAnimationsOverlay;->createDrawingObject(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;IZZFFZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 941
    iget-object v0, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 942
    iget-object v0, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    .line 943
    iput-boolean v12, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isReaction:Z

    .line 944
    iput v15, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    move/from16 v1, v22

    .line 945
    iput v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    .line 946
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    div-float v2, v2, v16

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 947
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    mul-float v18, v18, v2

    sub-float v1, v1, v18

    iput v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    .line 948
    iget-boolean v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    if-eqz v1, :cond_4

    .line 949
    iget v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    neg-float v2, v2

    mul-float v2, v2, v17

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    goto :goto_2

    .line 951
    :cond_4
    iget v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    neg-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    :cond_5
    :goto_2
    return v12

    :cond_6
    move/from16 v1, v22

    goto :goto_3

    :cond_7
    move/from16 v20, v7

    move v12, v8

    move/from16 v21, v9

    move v1, v10

    .line 955
    :goto_3
    iget-wide v2, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->getAnimatedEmojiDrawable()Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 957
    :goto_4
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 958
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-wide v3, v3, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->documentId:J

    iget-wide v5, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x4

    if-lt v2, v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 965
    :cond_a
    new-instance v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    invoke-direct {v0, v11}, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    .line 966
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->getAnimatedEmojiDrawable()Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    invoke-static {v2, v12, v12}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->createFrom(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;ZZ)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    const/high16 v2, 0x40800000    # 4.0f

    div-float v10, v1, v2

    .line 967
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x65

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v10, v3

    iput v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    div-float v2, v15, v2

    .line 968
    iget-object v3, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x65

    int-to-float v3, v3

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    move/from16 v2, v21

    .line 969
    iput v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    const/4 v2, 0x0

    .line 970
    iput-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 971
    iget-wide v2, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iput-wide v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->documentId:J

    move/from16 v8, v20

    .line 972
    iput-boolean v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    .line 974
    iput v15, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    .line 975
    iput v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    .line 976
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    div-float v2, v2, v16

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 977
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    mul-float v18, v18, v2

    sub-float v1, v1, v18

    iput v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    .line 978
    iget v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    neg-float v2, v2

    mul-float v2, v2, v17

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 979
    iget-boolean v1, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    if-eqz v1, :cond_b

    .line 980
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    iget-object v2, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setView(Landroid/view/View;)V

    .line 982
    :cond_b
    iget-object v1, v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v12

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public supports(Ljava/lang/String;)Z
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
