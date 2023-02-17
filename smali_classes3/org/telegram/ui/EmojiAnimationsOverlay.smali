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

.field threadMsgId:I

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

.method public static synthetic $r8$lambda$VhUkybCDHf4260HML1aLWV96k2E(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/EmojiAnimationsOverlay;->lambda$showAnimationForCell$1(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$apesflTQwmJ6t6M7bof6DX09RY0(Lorg/telegram/ui/EmojiAnimationsOverlay;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->lambda$showAnimationForCell$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$v80eUMpSoFJUZ-jvfsgDpjbd9bM(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->lambda$showAnimationForCell$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->excludeEmojiFromPack:Ljava/util/HashSet;

    const-string v1, "0\u20e3"

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "1\u20e3"

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "2\u20e3"

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "3\u20e3"

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "4\u20e3"

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "5\u20e3"

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "6\u20e3"

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "7\u20e3"

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "8\u20e3"

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "9\u20e3"

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/RecyclerListView;IJI)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->inited:Z

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    .line 91
    iput-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 92
    iput-object p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    .line 93
    iput-object p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 94
    iput p4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    .line 95
    iput-wide p5, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    .line 96
    iput p7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/EmojiAnimationsOverlay;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->findViewAndShowAnimation(II)V

    return-void
.end method

.method private clearSendingInfo()V
    .locals 2

    const/4 v0, 0x0

    .line 776
    iput v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    const/4 v0, 0x0

    .line 777
    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedEmoji:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 778
    iput-wide v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    .line 779
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private findViewAndShowAnimation(II)V
    .locals 6

    .line 200
    iget-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 204
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 205
    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 206
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_2

    .line 207
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 208
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 210
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 212
    :cond_1
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 213
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

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatActivity;->restartSticker(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 223
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

    .line 224
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_4
    const/4 p1, 0x1

    .line 226
    invoke-direct {p0, v0, p2, v1, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showAnimationForCell(Lorg/telegram/ui/Cells/ChatMessageCell;IZZ)Z

    :cond_5
    return-void
.end method

.method private synthetic lambda$showAnimationForCell$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 557
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showStickerSetBulletin(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private synthetic lambda$showAnimationForCell$1(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 556
    new-instance p3, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showAnimationForCell$2()V
    .locals 1

    .line 684
    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->sendCurrentTaps()V

    const/4 v0, 0x0

    .line 685
    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$showStickerSetBulletin$3(Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    .line 709
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

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p1

    invoke-virtual {v7, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 711
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private preloadAnimation(Lorg/telegram/tgnet/TLRPC$Document;I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 486
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

    .line 489
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    .line 492
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v3}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v8, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v9, 0x1

    const-string v7, "tgs"

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private sendCurrentTaps()V
    .locals 9

    .line 737
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    if-nez v0, :cond_0

    return-void

    .line 740
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;-><init>()V

    .line 741
    iget v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->msg_id:I

    .line 742
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedEmoji:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->emoticon:Ljava/lang/String;

    .line 743
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 744
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "v"

    const/4 v3, 0x1

    .line 746
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 747
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 749
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 750
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "i"

    .line 751
    iget-object v7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "t"

    .line 752
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

    .line 753
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "a"

    .line 756
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 764
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;-><init>()V

    .line 765
    iget v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:I

    if-eqz v2, :cond_2

    .line 766
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->top_msg_id:I

    .line 767
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->flags:I

    or-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->flags:I

    .line 769
    :cond_2
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 770
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 771
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 772
    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clearSendingInfo()V

    return-void

    :catch_0
    move-exception v0

    .line 758
    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clearSendingInfo()V

    .line 759
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private showAnimationForCell(Lorg/telegram/ui/Cells/ChatMessageCell;IZZ)Z
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 497
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xc

    if-le v3, v5, :cond_0

    return v4

    .line 500
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    .line 503
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 504
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 506
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :cond_2
    if-nez v5, :cond_3

    return v4

    .line 511
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v6

    .line 512
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v9, v6, v8

    if-lez v9, :cond_2e

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_4

    goto/16 :goto_11

    .line 517
    :cond_4
    invoke-static {v5}, Lorg/telegram/ui/EmojiAnimationsOverlay;->unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 518
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 520
    iget v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v8}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v8

    if-nez v8, :cond_5

    return v4

    .line 525
    :cond_5
    sget-object v8, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    invoke-virtual {v8, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v5, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_10

    .line 526
    :cond_7
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    .line 527
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    if-eqz v5, :cond_6

    :cond_9
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 530
    :goto_1
    iget-object v12, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_e

    .line 531
    iget-object v12, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget v12, v12, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    if-ne v12, v13, :cond_b

    add-int/lit8 v10, v10, 0x1

    .line 533
    iget-object v12, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v12, v12, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v12

    if-eqz v12, :cond_a

    iget-object v12, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v12, v12, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_a
    return v4

    .line 537
    :cond_b
    iget-object v12, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v12, v12, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v12, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v12

    if-eqz v12, :cond_c

    iget-object v12, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v12, v12, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v15

    move/from16 v16, v5

    iget-wide v4, v15, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v15, v12, v4

    if-nez v15, :cond_d

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_c
    move/from16 v16, v5

    :cond_d
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_1

    :cond_e
    move/from16 v16, v5

    if-eqz v2, :cond_13

    if-eqz v16, :cond_13

    if-lez v10, :cond_13

    .line 542
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Bulletin;->hash:I

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ne v1, v2, :cond_f

    const/4 v1, 0x0

    return v1

    .line 545
    :cond_f
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v1

    .line 547
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 548
    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    goto :goto_3

    :cond_10
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_11

    .line 551
    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    :cond_11
    if-nez v4, :cond_12

    .line 554
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 555
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 556
    iget v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v3}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v1, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_4

    .line 560
    :cond_12
    invoke-direct {v0, v4, v3}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showStickerSetBulletin(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/messenger/MessageObject;)V

    :goto_4
    const/4 v5, 0x0

    return v5

    :cond_13
    const/4 v5, 0x0

    const/4 v9, 0x4

    if-lt v10, v9, :cond_14

    return v5

    :cond_14
    const/4 v5, 0x1

    if-eqz v16, :cond_15

    .line 570
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getPremiumStickerAnimation()Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v8

    const/4 v4, 0x0

    goto/16 :goto_a

    .line 571
    :cond_15
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result v10

    if-eqz v10, :cond_1d

    if-ltz v1, :cond_16

    .line 572
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    if-le v1, v10, :cond_1c

    .line 573
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 574
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_1a

    .line 575
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v12, :cond_17

    goto :goto_7

    .line 579
    :cond_17
    iget-object v13, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    if-eqz v13, :cond_18

    iget-wide v4, v12, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_6

    :cond_18
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_19

    .line 580
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 581
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_7
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    goto :goto_5

    .line 584
    :cond_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 585
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v1, v4

    goto :goto_8

    .line 587
    :cond_1b
    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 590
    :cond_1c
    :goto_8
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_9

    :cond_1d
    if-ltz v1, :cond_1e

    .line 592
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_1f

    .line 593
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v1, v4

    .line 595
    :cond_1f
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    :goto_9
    const/4 v8, 0x0

    :goto_a
    if-nez v4, :cond_20

    if-nez v8, :cond_20

    const/4 v5, 0x0

    return v5

    .line 602
    :cond_20
    new-instance v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    const/4 v10, 0x0

    invoke-direct {v5, v0, v10}, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/ui/EmojiAnimationsOverlay$1;)V

    .line 603
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v10

    if-eqz v10, :cond_21

    iget v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v10}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v10, 0x1

    goto :goto_b

    :cond_21
    const/4 v10, 0x0

    :goto_b
    iput-boolean v10, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    const/high16 v10, 0x40800000    # 4.0f

    div-float v12, v7, v10

    .line 604
    iget-object v13, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v13

    rem-int/lit8 v13, v13, 0x65

    int-to-float v13, v13

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v13, v13, v17

    mul-float v12, v12, v13

    iput v12, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    div-float/2addr v6, v10

    .line 605
    iget-object v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    rem-int/lit8 v10, v10, 0x65

    int-to-float v10, v10

    div-float v10, v10, v17

    mul-float v6, v6, v10

    iput v6, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    .line 606
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    iput v6, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    .line 607
    iput-object v4, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 608
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    iput-boolean v6, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    .line 609
    iget-object v6, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 610
    iget-object v6, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowLottieVibration(Z)V

    const-string v6, "_"

    if-eqz v4, :cond_23

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    .line 613
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v7, v8

    float-to-int v7, v7

    .line 614
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_22

    const/4 v8, 0x0

    goto :goto_c

    .line 615
    :cond_22
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_c
    const/4 v10, 0x1

    add-int/2addr v8, v10

    rem-int/2addr v8, v9

    .line 616
    iget-object v9, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    .line 619
    iget-object v4, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 621
    iget-object v4, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_pcache_compress"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    iget-object v6, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/16 v23, 0x1

    const-string v21, "tgs"

    move-object/from16 v17, v4

    move-object/from16 v22, v6

    invoke-virtual/range {v17 .. v23}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 622
    iget-object v4, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v6, Lorg/telegram/ui/EmojiAnimationsOverlay$3;

    move-object/from16 v10, p1

    invoke-direct {v6, v0, v2, v3, v10}, Lorg/telegram/ui/EmojiAnimationsOverlay$3;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 632
    iget-object v3, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 633
    iget-object v3, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    goto/16 :goto_e

    :cond_23
    move-object/from16 v10, p1

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v7, v7, v4

    .line 636
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v7, v4

    float-to-int v4, v7

    if-lez v11, :cond_25

    .line 638
    iget-object v7, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v11

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_24

    const/4 v7, 0x0

    goto :goto_d

    .line 639
    :cond_24
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 640
    :goto_d
    iget-object v11, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v12

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    add-int/lit8 v13, v7, 0x1

    rem-int/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v9, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 643
    :cond_25
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 644
    iget-object v7, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v8, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/16 v23, 0x1

    const-string v21, "tgs"

    move-object/from16 v17, v7

    move-object/from16 v22, v3

    invoke-virtual/range {v17 .. v23}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 647
    :cond_26
    :goto_e
    iget-object v3, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 648
    iget-object v3, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 649
    iget-object v3, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 650
    iget-boolean v3, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v3, :cond_27

    .line 651
    iget-object v3, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v4, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 653
    :cond_27
    iget-object v3, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 655
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    iget-object v3, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 657
    iget-object v3, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 658
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    if-eqz v2, :cond_2c

    if-nez v16, :cond_2c

    .line 660
    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-wide v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2c

    .line 661
    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    if-eqz v2, :cond_29

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-eq v2, v3, :cond_29

    .line 662
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_29

    .line 663
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 664
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 667
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    .line 668
    iput-object v14, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedEmoji:Ljava/lang/String;

    .line 669
    iget-wide v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2a

    .line 670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    .line 671
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 672
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 673
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 676
    :cond_2a
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2b

    .line 680
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 681
    iput-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    .line 683
    :cond_2b
    new-instance v1, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    iput-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2c
    if-eqz p4, :cond_2d

    .line 690
    iget v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    iget v12, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:I

    const/16 v13, 0xb

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/MessagesController;->sendTyping(JIILjava/lang/String;I)Z

    :cond_2d
    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_2e
    :goto_11
    const/4 v1, 0x0

    return v1
.end method

.method private showStickerSetBulletin(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    .line 699
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 702
    :cond_0
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

    .line 703
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->PremiumStickerTooltip:I

    const-string v2, "PremiumStickerTooltip"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 707
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    .line 708
    new-instance v1, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    .line 713
    sget v1, Lorg/telegram/messenger/R$string;->ViewAction:I

    const-string v2, "ViewAction"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    .line 714
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/16 v1, 0xabe

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 715
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Bulletin;->hash:I

    .line 716
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method public static unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 721
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 723
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

    .line 724
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

    .line 727
    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v6, 0xfe0f

    if-ne v3, v6, :cond_3

    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 728
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

    .line 733
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancelAllAnimations()V
    .locals 3

    const/4 v0, 0x0

    .line 805
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 806
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

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->hintRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 390
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->hintRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public checkPosition(Lorg/telegram/ui/Cells/ChatMessageCell;FI)Z
    .locals 1

    .line 796
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

    .line 115
    iget-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->inited:Z

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v1, "EmojiAnimations"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_1

    .line 120
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 123
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    .line 125
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_7

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 127
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 128
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
    const/4 v1, 0x0

    .line 130
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 131
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 132
    sget-object v5, Lorg/telegram/ui/EmojiAnimationsOverlay;->excludeEmojiFromPack:Ljava/util/HashSet;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 133
    sget-object v5, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v6, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 136
    :goto_2
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 137
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 140
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

    .line 141
    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_5

    .line 142
    aget-object v8, v6, v7

    .line 143
    sget-object v9, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v9, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 149
    :cond_6
    iput-boolean v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->inited:Z

    :cond_7
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 156
    sget p2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 157
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    const-string p2, "EmojiAnimations"

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->checkStickerPack()V

    goto/16 :goto_1

    .line 161
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onEmojiInteractionsReceived:I

    if-ne p1, p2, :cond_1

    .line 162
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v1, 0x1

    .line 163
    aget-object p3, p3, v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;

    .line 164
    iget-wide v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_2

    sget-object p1, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->emoticon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->msg_id:I

    .line 166
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 168
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "a"

    .line 169
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 170
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge v0, p3, :cond_2

    .line 171
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v2, "i"

    .line 172
    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sub-int/2addr v2, v1

    const-string v3, "t"

    const-wide/16 v4, 0x0

    .line 173
    invoke-virtual {p3, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 174
    new-instance p3, Lorg/telegram/ui/EmojiAnimationsOverlay$1;

    invoke-direct {p3, p0, p1, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay$1;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;II)V

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v5

    double-to-long v2, v3

    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 187
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_2

    .line 188
    iget p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:I

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JI)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 189
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 190
    invoke-virtual {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->cancelHintRunnable()V

    :cond_2
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 232
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 233
    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    .line 234
    iput-boolean v0, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    const/4 v3, 0x0

    .line 236
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    if-ge v3, v4, :cond_5

    .line 237
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 240
    instance-of v8, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 241
    move-object v8, v4

    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 242
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    .line 243
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    goto :goto_2

    .line 244
    :cond_0
    instance-of v8, v4, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v8, :cond_1

    .line 245
    move-object v8, v4

    check-cast v8, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 246
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    .line 247
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    goto :goto_2

    :cond_1
    move-object v8, v9

    :goto_2
    if-eqz v9, :cond_4

    .line 249
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    iget v10, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    if-ne v9, v10, :cond_4

    .line 250
    iput-boolean v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    .line 251
    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v9

    add-float/2addr v3, v9

    .line 252
    iget-object v9, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getY()F

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v10

    add-float/2addr v9, v10

    .line 253
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    .line 254
    iget-boolean v10, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v10, :cond_2

    .line 255
    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v10

    add-float/2addr v3, v10

    iput v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 256
    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    add-float/2addr v9, v3

    iput v9, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    goto :goto_4

    .line 258
    :cond_2
    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v10

    add-float/2addr v3, v10

    .line 259
    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v10

    add-float/2addr v9, v10

    .line 260
    iget-boolean v10, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    const/16 v11, 0x18

    if-eqz v10, :cond_3

    .line 261
    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v10

    neg-float v10, v10

    mul-float v10, v10, v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_3

    .line 263
    :cond_3
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    :goto_3
    add-float/2addr v3, v10

    .line 265
    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v10

    sub-float/2addr v9, v10

    .line 266
    iput v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 267
    iput v9, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    .line 269
    :goto_4
    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    .line 270
    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 275
    :goto_5
    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    if-eqz v3, :cond_6

    iget v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    add-float/2addr v3, v4

    iget-object v8, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->getChatListViewPadding()F

    move-result v8

    cmpg-float v3, v3, v8

    if-ltz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v8, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget v8, v8, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_7

    .line 276
    :cond_6
    iput-boolean v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    .line 279
    :cond_7
    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_8

    iget v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removeProgress:F

    cmpl-float v8, v3, v4

    if-eqz v8, :cond_8

    const v8, 0x3dda740e

    add-float/2addr v3, v8

    .line 280
    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removeProgress:F

    .line 281
    iget-object v5, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sub-float v3, v4, v3

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 282
    iget-object v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 285
    :cond_8
    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v3, :cond_b

    .line 286
    iget v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    const v8, 0x3fbfe7c0

    mul-float v8, v8, v3

    const/high16 v9, 0x3d600000    # 0.0546875f

    mul-float v9, v9, v8

    .line 288
    iget v10, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    div-float/2addr v3, v6

    add-float/2addr v10, v3

    div-float v3, v8, v6

    sub-float/2addr v10, v3

    const v3, 0x3b36d86f    # 0.00279f

    mul-float v3, v3, v8

    sub-float/2addr v10, v3

    .line 290
    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    if-nez v3, :cond_9

    .line 291
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v6, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    sub-float/2addr v6, v9

    invoke-virtual {v3, v6, v10, v8, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_6

    .line 293
    :cond_9
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v6, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    iget v11, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    add-float/2addr v6, v11

    sub-float/2addr v6, v8

    add-float/2addr v6, v9

    invoke-virtual {v3, v6, v10, v8, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 295
    :goto_6
    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    if-nez v3, :cond_a

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 297
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v3

    iget-object v6, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v6

    invoke-virtual {p1, v5, v4, v3, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 298
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    .line 301
    :cond_a
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_7

    .line 304
    :cond_b
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v6, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    iget v8, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    add-float/2addr v6, v8

    iget v8, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    iget v9, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    add-float/2addr v8, v9

    iget v9, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    const/high16 v10, 0x40400000    # 3.0f

    mul-float v11, v9, v10

    mul-float v9, v9, v10

    invoke-virtual {v3, v6, v8, v11, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 305
    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    if-nez v3, :cond_c

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 307
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v3

    iget-object v6, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v6

    invoke-virtual {p1, v5, v4, v3, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 308
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    .line 311
    :cond_c
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 314
    :goto_7
    iget v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removeProgress:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_f

    iget-boolean v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->wasPlayed:Z

    if-eqz v3, :cond_d

    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v3

    iget-object v4, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-lt v3, v4, :cond_d

    goto :goto_8

    .line 317
    :cond_d
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 318
    iput-boolean v7, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->wasPlayed:Z

    goto :goto_9

    .line 319
    :cond_e
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v3

    if-nez v3, :cond_10

    .line 320
    iget-object v3, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3, v0, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 321
    iget-object v2, v2, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_9

    .line 315
    :cond_f
    :goto_8
    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_10
    :goto_9
    add-int/2addr v1, v7

    goto/16 :goto_0

    .line 324
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onAllEffectsEnd()V

    .line 327
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_13
    return-void
.end method

.method public isIdle()Z
    .locals 1

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onAllEffectsEnd()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    .line 101
    invoke-virtual {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->checkStickerPack()V

    .line 102
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 103
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onEmojiInteractionsReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 104
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    .line 109
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 110
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onEmojiInteractionsReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 111
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onScrolled(I)V
    .locals 4

    const/4 v0, 0x0

    .line 784
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 785
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-boolean v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    if-nez v1, :cond_0

    .line 786
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

    .line 336
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

    .line 339
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

    .line 342
    invoke-direct {p0, p1, v0, p3, v1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showAnimationForCell(Lorg/telegram/ui/Cells/ChatMessageCell;IZZ)Z

    move-result v0

    .line 345
    iget v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    .line 346
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

    .line 347
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 350
    :cond_2
    iget v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 351
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

    .line 352
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    iput-boolean v1, p3, Lorg/telegram/messenger/MessageObject;->forcePlayEffect:Z

    .line 353
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean v4, p3, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    .line 354
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-wide v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, v1, v2, p1}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    return v0

    .line 357
    :cond_4
    iget p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v5, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    iget v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:I

    invoke-virtual {p3, v5, v6, v2}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JI)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 359
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v2, 0x5

    if-ne p3, v2, :cond_5

    const/4 p3, 0x0

    goto :goto_0

    :cond_5
    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_8

    .line 362
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

    .line 363
    sget p3, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    sub-int/2addr p3, v4

    invoke-static {p3}, Lorg/telegram/messenger/SharedConfig;->updateEmojiInteractionsHintCount(I)V

    .line 365
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 366
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    goto :goto_1

    .line 368
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

    .line 370
    new-instance p1, Lorg/telegram/ui/Components/StickerSetBulletinLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 371
    iget-object p3, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
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

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object p3, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 374
    iget-object p3, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 375
    iget-object p3, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 p3, 0xabe

    .line 376
    invoke-static {p2, p1, p3}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 377
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

.method public preloadAnimation(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 4

    .line 458
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 462
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 464
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 466
    :cond_1
    invoke-static {v1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    sget-object v1, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 470
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 471
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    .line 474
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result p1

    mul-float p1, p1, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 477
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloadAnimation(Lorg/telegram/tgnet/TLRPC$Document;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public showAnimationForActionCell(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 396
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-le v2, v4, :cond_0

    return v3

    .line 399
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 402
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    .line 403
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-lez v6, :cond_c

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 410
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 411
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

    .line 413
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

    .line 417
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

    cmp-long v12, v8, v10

    if-nez v12, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x4

    if-lt v6, v5, :cond_7

    return v3

    .line 425
    :cond_7
    new-instance v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    const/4 v8, 0x0

    invoke-direct {v6, v0, v8}, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/ui/EmojiAnimationsOverlay$1;)V

    const/4 v8, 0x1

    .line 426
    iput-boolean v8, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    const/high16 v9, 0x40800000    # 4.0f

    div-float v10, v4, v9

    .line 427
    iget-object v11, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    move-result v11

    rem-int/lit8 v11, v11, 0x65

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    mul-float v10, v10, v11

    iput v10, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    div-float/2addr v2, v9

    .line 428
    iget-object v9, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    rem-int/lit8 v9, v9, 0x65

    int-to-float v9, v9

    div-float/2addr v9, v12

    mul-float v2, v2, v9

    iput v2, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    .line 429
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    .line 430
    iput-boolean v8, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    .line 431
    iget-object v2, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v4, v4, v2

    .line 432
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v2

    float-to-int v2, v4

    const-string v4, "_"

    if-lez v7, :cond_9

    .line 434
    iget-object v7, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_8

    const/4 v7, 0x0

    goto :goto_1

    .line 435
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 436
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

    .line 437
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

    .line 439
    :cond_9
    iput-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 440
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

    .line 442
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 443
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 444
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 445
    iget-boolean v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v1, :cond_a

    .line 446
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 448
    :cond_a
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 450
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 452
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 453
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    return v8

    :cond_c
    :goto_2
    return v3
.end method

.method public supports(Ljava/lang/String;)Z
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
