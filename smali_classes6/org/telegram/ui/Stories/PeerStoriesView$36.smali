.class Lorg/telegram/ui/Stories/PeerStoriesView$36;
.super Ljava/lang/Object;
.source "PeerStoriesView.java"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayoutForLike()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$0G1fShiSSFWXYispb0CuLs-RlPk(Lorg/telegram/ui/Stories/PeerStoriesView$36;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$36;->lambda$onReactionClicked$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wcrAPXVLAnKt--K7_oGrm5ue78w(Lorg/telegram/ui/Stories/PeerStoriesView$36;Landroid/animation/ValueAnimator;[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$36;->lambda$onReactionClicked$0(Landroid/animation/ValueAnimator;[ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 6196
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReactionClicked$0(Landroid/animation/ValueAnimator;[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 6269
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p3, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10102(Lorg/telegram/ui/Stories/PeerStoriesView;F)F

    .line 6270
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6271
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10100(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result p1

    const p3, 0x3f4ccccd    # 0.8f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-boolean p3, p2, p1

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 6272
    aput-boolean p3, p2, p1

    .line 6273
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10202(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 6274
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onReactionClicked$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6200
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$8902(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    new-array v2, v3, [Z

    const/4 v4, 0x0

    aput-boolean v4, v2, v4

    .line 6202
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v5

    .line 6203
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const v8, 0x3f4ccccd    # 0.8f

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/Stories/PeerStoriesView$36$1;

    invoke-direct {v8, v0, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$36$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$36;Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v8, 0x96

    .line 6208
    invoke-virtual {v5, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    const/16 v5, 0x8

    .line 6209
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 6210
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v8, Lorg/telegram/ui/Stories/StoriesLikeButton;

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v10, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-direct {v8, v9, v10}, Lorg/telegram/ui/Stories/StoriesLikeButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    invoke-static {v6, v8}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9002(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoriesLikeButton;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    .line 6211
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v6

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 6212
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9100(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v6

    const/16 v8, 0x28

    const/4 v9, 0x3

    invoke-static {v8, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6214
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 6215
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 6216
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9202(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 6218
    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6219
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    .line 6220
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9302(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    .line 6222
    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9402(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 6223
    iget-wide v8, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    const/4 v8, 0x2

    if-eqz v5, :cond_2

    .line 6224
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9402(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 6225
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v12}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v12

    iget-wide v13, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v9, v8, v12, v13, v14}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-static {v5, v9}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9202(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 6226
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 6227
    :cond_2
    iget-object v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 6228
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v5

    iget-object v9, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v5, :cond_3

    .line 6230
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    .line 6231
    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v12}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v9}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v17, "60_60"

    invoke-virtual/range {v13 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 6232
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    .line 6233
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v14

    .line 6234
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v9}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 6235
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 6236
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    invoke-virtual {v5, v4, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 6240
    :cond_3
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 6241
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v9, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v9, :cond_5

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v9, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez v9, :cond_5

    .line 6242
    iget-object v9, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v9, :cond_4

    .line 6243
    new-instance v9, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {v9}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object v9, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    .line 6245
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v9, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v12, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    add-int/2addr v12, v3

    iput v12, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    .line 6246
    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v6, v5, v9}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->applyForStoryViews(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/tl/TL_stories$StoryViews;)V

    .line 6247
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9700(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    .line 6249
    :cond_5
    iget-wide v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v5, v5, v10

    if-eqz v5, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesLikeButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_6

    .line 6250
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesLikeButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {v6, v4, v3}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->createFrom(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;ZZ)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9302(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    .line 6251
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setView(Landroid/view/View;)V

    .line 6253
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v6, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v9

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v6, v9, v10, v5, v1}, Lorg/telegram/ui/Stories/StoriesController;->setStoryReaction(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    new-array v5, v8, [I

    move-object/from16 v6, p2

    .line 6255
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v9, v8, [I

    .line 6257
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 6258
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    aget v11, v5, v4

    aget v12, v9, v4

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9802(Lorg/telegram/ui/Stories/PeerStoriesView;I)I

    .line 6259
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    aget v5, v5, v3

    aget v3, v9, v3

    sub-int/2addr v5, v3

    invoke-static {v10, v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9902(Lorg/telegram/ui/Stories/PeerStoriesView;I)I

    .line 6260
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10002(Lorg/telegram/ui/Stories/PeerStoriesView;I)I

    new-array v3, v8, [F

    .line 6262
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 6263
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5, v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10102(Lorg/telegram/ui/Stories/PeerStoriesView;F)F

    .line 6264
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6265
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v5

    .line 6266
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setAllowDrawReaction(Z)V

    .line 6267
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->prepareAnimateReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 6268
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$36$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v3, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$36$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$36;Landroid/animation/ValueAnimator;[Z)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6277
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;

    invoke-direct {v1, v0, v2, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$36;[ZLorg/telegram/ui/Stories/StoriesLikeButton;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xdc

    .line 6297
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6298
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 6299
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10300(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public synthetic drawBackground()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawBackground(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawRoundRect(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    return-void
.end method

.method public needEnterText()Z
    .locals 2

    .line 6310
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestAdjust(Z)V

    return v1
.end method

.method public synthetic onEmojiWindowDismissed()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$onEmojiWindowDismissed(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 0

    .line 6199
    new-instance p4, Lorg/telegram/ui/Stories/PeerStoriesView$36$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p2, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$36$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$36;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V

    if-nez p3, :cond_0

    .line 6302
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6304
    :cond_0
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
