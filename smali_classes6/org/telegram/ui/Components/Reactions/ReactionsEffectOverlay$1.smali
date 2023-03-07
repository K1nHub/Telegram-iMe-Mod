.class Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;
.super Landroid/widget/FrameLayout;
.source "ReactionsEffectOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

.field final synthetic val$animationType:I

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$chatActivity:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$emojiSize:I

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$fromHolder:Z

.field final synthetic val$fromScale:F

.field final synthetic val$fromX:F

.field final synthetic val$fromY:F

.field final synthetic val$visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;


# direct methods
.method public static synthetic $r8$lambda$Kyl_0jF3mujM-hRHO27lHA1yNWc(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->lambda$dispatchDraw$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$w09S-Aeqoa65SF3NA-1F58gXs7g(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->lambda$dispatchDraw$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/ChatActivity;IIZFFFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iput-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object p5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iput p6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$emojiSize:I

    iput p7, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    iput-boolean p8, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromHolder:Z

    iput p9, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromScale:F

    iput p10, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromX:F

    iput p11, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromY:F

    iput-object p12, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$dispatchDraw$0()V
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1500(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)V

    return-void
.end method

.method private synthetic lambda$dispatchDraw$1()V
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1500(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 245
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z

    move-result v2

    const v3, 0x3dda740e

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    .line 246
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$216(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F

    .line 248
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 249
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$202(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F

    .line 250
    new-instance v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 255
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v2

    sub-float/2addr v4, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 257
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 259
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    .line 262
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    .line 266
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$400(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 267
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$400(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 268
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$400(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 272
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v6, v2, Lorg/telegram/ui/ChatActivity;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 273
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$500(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)I

    move-result v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ChatActivity;->findMessageCell(IZ)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    goto :goto_0

    .line 275
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 279
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->shouldDrawReactionsInLayout()Z

    move-result v6

    const/16 v8, 0x14

    if-eqz v6, :cond_6

    .line 280
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    goto :goto_1

    :cond_6
    const/16 v6, 0xe

    .line 282
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    :goto_1
    int-to-float v6, v6

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_a

    .line 285
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v12, v12, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 287
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$600(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v11

    .line 288
    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v12, v12, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    aget v13, v12, v7

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v15, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    add-int/2addr v13, v15

    int-to-float v13, v13

    .line 289
    aget v12, v12, v10

    iget v14, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    add-int/2addr v12, v14

    int-to-float v12, v12

    if-eqz v11, :cond_7

    .line 291
    iget v14, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    iget-object v15, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    iget v8, v15, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v8

    int-to-float v8, v14

    add-float/2addr v13, v8

    .line 292
    iget v8, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    iget v11, v15, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v11

    int-to-float v8, v8

    add-float/2addr v12, v8

    .line 294
    :cond_7
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v8, :cond_8

    .line 295
    iget v8, v8, Lorg/telegram/ui/ChatActivity;->drawingChatLisViewYoffset:F

    add-float/2addr v12, v8

    .line 297
    :cond_8
    iget-boolean v8, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom:Z

    if-eqz v8, :cond_9

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawTimeOnMedia()Z

    move-result v2

    if-nez v2, :cond_9

    .line 298
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v12, v2

    .line 300
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2, v13}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$702(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F

    .line 301
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2, v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$802(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F

    goto :goto_2

    .line 303
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$700(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v13

    .line 304
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v12

    .line 307
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 308
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v8, v8, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    invoke-virtual {v2, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 309
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 313
    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$emojiSize:I

    int-to-float v8, v2

    sub-float/2addr v8, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    sub-float v8, v13, v8

    int-to-float v14, v2

    sub-float/2addr v14, v6

    div-float/2addr v14, v11

    sub-float v14, v12, v14

    .line 316
    iget v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-eq v15, v10, :cond_c

    .line 317
    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v15, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    aget v11, v15, v7

    int-to-float v11, v11

    cmpg-float v11, v8, v11

    if-gez v11, :cond_b

    .line 318
    aget v8, v15, v7

    int-to-float v8, v8

    :cond_b
    int-to-float v2, v2

    add-float/2addr v2, v8

    .line 320
    aget v11, v15, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    int-to-float v11, v11

    cmpl-float v2, v2, v11

    if-lez v2, :cond_c

    .line 321
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    aget v2, v2, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v2, v8

    iget v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$emojiSize:I

    sub-int/2addr v2, v8

    int-to-float v8, v2

    .line 326
    :cond_c
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v11, v11, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v11

    .line 327
    iget v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-ne v15, v9, :cond_d

    .line 328
    sget-object v15, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v15, v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v15

    .line 329
    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_3

    .line 330
    :cond_d
    iget-boolean v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromHolder:Z

    if-eqz v15, :cond_e

    .line 331
    sget-object v15, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    invoke-virtual {v15, v7}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v15

    .line 332
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_3

    .line 334
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v15, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    move v2, v15

    :goto_3
    sub-float v7, v4, v15

    .line 337
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromScale:F

    mul-float v3, v3, v7

    add-float/2addr v3, v15

    .line 339
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$emojiSize:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 343
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-ne v5, v10, :cond_f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_4

    .line 348
    :cond_f
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromX:F

    mul-float v5, v5, v7

    mul-float v8, v8, v15

    add-float/2addr v8, v5

    .line 349
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromY:F

    sub-float v18, v4, v2

    mul-float v5, v5, v18

    mul-float v14, v14, v2

    add-float/2addr v14, v5

    .line 353
    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 354
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 355
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    sub-float v10, v4, v11

    invoke-virtual {v5, v10}, Landroid/view/View;->setAlpha(F)V

    .line 356
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 357
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 359
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-ne v5, v9, :cond_10

    .line 360
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromScale:F

    mul-float v3, v3, v7

    mul-float v6, v6, v15

    add-float/2addr v3, v6

    .line 361
    iget v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromX:F

    mul-float v6, v6, v7

    mul-float v13, v13, v15

    add-float v8, v6, v13

    .line 362
    iget v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromY:F

    sub-float v7, v4, v2

    mul-float v6, v6, v7

    mul-float v12, v12, v2

    add-float v14, v6, v12

    goto :goto_5

    :cond_10
    const/4 v2, 0x0

    cmpl-float v7, v11, v2

    if-eqz v7, :cond_11

    mul-float v3, v3, v10

    mul-float v6, v6, v11

    add-float/2addr v3, v6

    mul-float v8, v8, v10

    mul-float v13, v13, v11

    add-float/2addr v8, v13

    mul-float v14, v14, v10

    mul-float v12, v12, v11

    add-float/2addr v14, v12

    :cond_11
    :goto_5
    const v2, 0x3f333333    # 0.7f

    const/4 v6, 0x1

    if-eq v5, v6, :cond_13

    .line 372
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1000(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    cmpl-float v6, v11, v2

    if-lez v6, :cond_12

    sub-float/2addr v11, v2

    const v6, 0x3e99999a    # 0.3f

    div-float v6, v11, v6

    goto :goto_6

    :cond_12
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 375
    :cond_13
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 376
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 378
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 379
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 381
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 383
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const v5, 0x3d3b3ee7

    const/4 v6, 0x1

    if-eq v3, v6, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    if-eqz v3, :cond_16

    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    cmpl-float v7, v6, v4

    if-eqz v7, :cond_16

    .line 384
    iget-boolean v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromHolder:Z

    if-eqz v7, :cond_15

    add-float/2addr v6, v5

    .line 385
    iput v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    goto :goto_7

    :cond_15
    const v7, 0x3d94f209

    add-float/2addr v6, v7

    .line 387
    iput v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    .line 389
    :goto_7
    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_16

    .line 390
    iput v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    .line 394
    :cond_16
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const/high16 v6, 0x41800000    # 16.0f

    if-eq v3, v9, :cond_1b

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-eqz v3, :cond_1b

    :cond_17
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const/4 v7, 0x1

    if-eq v3, v7, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    if-eqz v3, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v10, 0x7d0

    const-wide/16 v12, 0x0

    cmp-long v3, v7, v12

    if-eqz v3, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-wide v14, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    sub-long/2addr v7, v14

    cmp-long v3, v7, v10

    if-gtz v3, :cond_1b

    :cond_19
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1a

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 395
    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v3, v7, v12

    if-eqz v3, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-wide v12, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    sub-long/2addr v7, v12

    cmp-long v3, v7, v10

    if-lez v3, :cond_23

    .line 396
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    cmpl-float v8, v7, v4

    if-eqz v8, :cond_23

    .line 397
    iget v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1c

    .line 398
    iput v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    goto :goto_9

    :cond_1c
    if-ne v8, v9, :cond_1d

    const/high16 v8, 0x43af0000    # 350.0f

    goto :goto_8

    :cond_1d
    const/high16 v8, 0x435c0000    # 220.0f

    :goto_8
    div-float v8, v6, v8

    add-float/2addr v7, v8

    .line 401
    iput v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    .line 403
    :goto_9
    iget v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    cmpl-float v2, v7, v2

    if-lez v2, :cond_1e

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1400(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 404
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startShortAnimation()V

    .line 406
    :cond_1e
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_23

    .line 407
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-eqz v3, :cond_1f

    if-ne v3, v9, :cond_20

    .line 408
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$600(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 410
    :cond_20
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iput v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    .line 411
    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const/4 v3, 0x0

    const/4 v7, 0x1

    if-ne v2, v7, :cond_21

    .line 412
    sput-object v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    goto :goto_a

    .line 414
    :cond_21
    sput-object v3, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 416
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 417
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 418
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 420
    :cond_22
    new-instance v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 428
    :cond_23
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    if-eqz v2, :cond_2e

    .line 429
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 431
    :goto_b
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2e

    .line 432
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    .line 433
    iget v8, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->progress:F

    if-eqz v2, :cond_25

    .line 435
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_25

    .line 436
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v9}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v9

    .line 437
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v11}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v11

    .line 438
    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v12

    long-to-float v9, v9

    int-to-float v10, v12

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float v10, v10, v9

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 440
    iget v10, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->leftTime:I

    if-ge v9, v10, :cond_24

    goto :goto_c

    :cond_24
    const/4 v9, 0x0

    goto :goto_d

    :cond_25
    :goto_c
    const/4 v9, 0x1

    :goto_d
    if-eqz v9, :cond_26

    .line 445
    iget v9, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->outProgress:F

    cmpl-float v10, v9, v4

    if-eqz v10, :cond_26

    const v10, 0x3dda740e

    add-float/2addr v9, v10

    .line 446
    iput v9, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->outProgress:F

    cmpl-float v9, v9, v4

    if-lez v9, :cond_27

    .line 448
    iput v4, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->outProgress:F

    .line 449
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v16, 0x40000000    # 2.0f

    goto/16 :goto_11

    :cond_26
    const v10, 0x3dda740e

    :cond_27
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v11, v8, v9

    if-gez v11, :cond_28

    div-float v9, v8, v9

    goto :goto_e

    :cond_28
    sub-float v11, v8, v9

    div-float/2addr v11, v9

    sub-float v9, v4, v11

    .line 455
    :goto_e
    iget v11, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->fromX:F

    sub-float v12, v4, v8

    mul-float v11, v11, v12

    iget v13, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toX:F

    mul-float v13, v13, v8

    add-float/2addr v11, v13

    .line 456
    iget v13, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->fromY:F

    mul-float v13, v13, v12

    iget v12, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toY:F

    mul-float v12, v12, v8

    add-float/2addr v13, v12

    iget v12, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->jumpY:F

    mul-float v12, v12, v9

    sub-float/2addr v13, v12

    .line 458
    iget v9, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->randomScale:F

    mul-float v9, v9, v8

    iget v12, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->outProgress:F

    sub-float v12, v4, v12

    mul-float v9, v9, v12

    .line 459
    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v12

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v14}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v15}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getScaleX()F

    move-result v15

    mul-float v14, v14, v15

    mul-float v14, v14, v11

    add-float/2addr v12, v14

    .line 460
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v11}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v11

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v14}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v15}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getScaleY()F

    move-result v15

    mul-float v14, v14, v15

    mul-float v14, v14, v13

    add-float/2addr v11, v14

    const/16 v13, 0x10

    .line 461
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    .line 462
    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v14, v14, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget-object v14, v14, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v15, v13

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v15, v16

    sub-float v10, v12, v17

    sub-float v6, v11, v17

    invoke-virtual {v14, v10, v6, v15, v15}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 463
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget-object v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v10, 0x1

    shr-int/2addr v13, v10

    invoke-virtual {v6, v13}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 465
    iget v6, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->globalTranslationY:F

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 466
    invoke-virtual {v1, v9, v9, v12, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 467
    iget v6, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->currentRotation:F

    invoke-virtual {v1, v6, v12, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 469
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget-object v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 472
    iget v6, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->progress:F

    cmpg-float v9, v6, v4

    if-gez v9, :cond_29

    add-float/2addr v6, v5

    .line 473
    iput v6, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->progress:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_29

    .line 475
    iput v4, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->progress:F

    :cond_29
    cmpl-float v6, v8, v4

    if-ltz v6, :cond_2a

    .line 479
    iget v6, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->globalTranslationY:F

    const/16 v8, 0x14

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v11, 0x41800000    # 16.0f

    mul-float v9, v9, v11

    const/high16 v12, 0x43fa0000    # 500.0f

    div-float/2addr v9, v12

    add-float/2addr v6, v9

    iput v6, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->globalTranslationY:F

    goto :goto_f

    :cond_2a
    const/16 v8, 0x14

    const/high16 v11, 0x41800000    # 16.0f

    .line 482
    :goto_f
    iget-boolean v6, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->incrementRotation:Z

    const/high16 v9, 0x437a0000    # 250.0f

    if-eqz v6, :cond_2c

    .line 483
    iget v6, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->currentRotation:F

    iget v12, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->randomRotation:F

    div-float v9, v12, v9

    add-float/2addr v6, v9

    iput v6, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->currentRotation:F

    cmpl-float v6, v6, v12

    if-lez v6, :cond_2b

    const/4 v6, 0x0

    .line 485
    iput-boolean v6, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->incrementRotation:Z

    goto :goto_10

    :cond_2b
    const/4 v6, 0x0

    goto :goto_10

    :cond_2c
    const/4 v6, 0x0

    .line 488
    iget v12, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->currentRotation:F

    iget v13, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->randomRotation:F

    div-float v9, v13, v9

    sub-float/2addr v12, v9

    iput v12, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->currentRotation:F

    neg-float v9, v13

    cmpg-float v9, v12, v9

    if-gez v9, :cond_2d

    const/4 v9, 0x1

    .line 490
    iput-boolean v9, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->incrementRotation:Z

    goto :goto_11

    :cond_2d
    :goto_10
    const/4 v9, 0x1

    :goto_11
    add-int/2addr v3, v9

    const/high16 v6, 0x41800000    # 16.0f

    goto/16 :goto_b

    .line 496
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2f
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 501
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 502
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 503
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 509
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 510
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 511
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
