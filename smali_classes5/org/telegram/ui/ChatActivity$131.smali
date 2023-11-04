.class Lorg/telegram/ui/ChatActivity$131;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->selectReaction(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$added:Z

.field final synthetic val$finalMessageIdForCell:I

.field final synthetic val$fromDoubleTap:Z

.field final synthetic val$primaryMessage:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field final synthetic val$visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method public static synthetic $r8$lambda$tsCfLK_xB4PljzMaNH3rUH7Mh9k(Lorg/telegram/ui/ChatActivity$131;IZLorg/telegram/ui/Components/ReactionsContainerLayout;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatActivity$131;->lambda$run$0(IZLorg/telegram/ui/Components/ReactionsContainerLayout;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wKoJiiyrKsx6NnNEst1zVZ-lRqA(Lorg/telegram/ui/ChatActivity$131;IZLorg/telegram/ui/Components/ReactionsContainerLayout;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatActivity$131;->lambda$run$1(IZLorg/telegram/ui/Components/ReactionsContainerLayout;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ypaMW5YO_yR0AqiEgpaUuXLmXUU(Lorg/telegram/ui/ChatActivity$131;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$131;->lambda$run$2(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;ZIZLorg/telegram/ui/Components/ReactionsContainerLayout;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 29443
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$131;->val$fromDoubleTap:Z

    iput p3, p0, Lorg/telegram/ui/ChatActivity$131;->val$finalMessageIdForCell:I

    iput-boolean p4, p0, Lorg/telegram/ui/ChatActivity$131;->val$added:Z

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$131;->val$reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iput p6, p0, Lorg/telegram/ui/ChatActivity$131;->val$x:F

    iput p7, p0, Lorg/telegram/ui/ChatActivity$131;->val$y:F

    iput-object p8, p0, Lorg/telegram/ui/ChatActivity$131;->val$visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iput-object p9, p0, Lorg/telegram/ui/ChatActivity$131;->val$primaryMessage:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(IZLorg/telegram/ui/Components/ReactionsContainerLayout;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 12

    move-object v0, p0

    .line 29451
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    move v3, p1

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ChatActivity;->findMessageCell(IZ)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    if-eqz p2, :cond_0

    .line 29453
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v6, 0x0

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$48000(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    const/4 v11, 0x1

    move-object v4, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v11}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;II)V

    .line 29454
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startAnimation()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$run$1(IZLorg/telegram/ui/Components/ReactionsContainerLayout;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 9

    .line 29450
    new-instance v8, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$131;IZLorg/telegram/ui/Components/ReactionsContainerLayout;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    const-wide/16 p1, 0x32

    invoke-static {v8, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$run$2(Lorg/telegram/messenger/MessageObject;)V
    .locals 3

    .line 29461
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 29463
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 29464
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    move-object p1, v0

    .line 29467
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$47900(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)V

    .line 29468
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startAnimation()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 29446
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->updateReactionRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 29447
    iput-object v1, v0, Lorg/telegram/ui/ChatActivity;->updateReactionRunnable:Ljava/lang/Runnable;

    .line 29448
    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$131;->val$fromDoubleTap:Z

    if-eqz v1, :cond_0

    .line 29449
    iget v4, p0, Lorg/telegram/ui/ChatActivity$131;->val$finalMessageIdForCell:I

    iget-boolean v5, p0, Lorg/telegram/ui/ChatActivity$131;->val$added:Z

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$131;->val$reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v7, p0, Lorg/telegram/ui/ChatActivity$131;->val$x:F

    iget v8, p0, Lorg/telegram/ui/ChatActivity$131;->val$y:F

    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$131;->val$visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    new-instance v1, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda1;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$131;IZLorg/telegram/ui/Components/ReactionsContainerLayout;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->doOnIdle(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 29459
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$131;->val$primaryMessage:Lorg/telegram/messenger/MessageObject;

    new-instance v2, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$131;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->doOnIdle(Ljava/lang/Runnable;)V

    .line 29471
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->closeMenu()V

    :cond_1
    return-void
.end method
