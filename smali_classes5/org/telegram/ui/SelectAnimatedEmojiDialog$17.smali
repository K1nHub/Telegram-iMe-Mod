.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;
.super Ljava/lang/Object;
.source "SelectAnimatedEmojiDialog.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$emojiX:Ljava/lang/Integer;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field final synthetic val$type:I


# direct methods
.method public static synthetic $r8$lambda$pXtoMbYreunxKPsUfnZZaD6JxN8(Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->lambda$onLongClickRelease$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Integer;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iput p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->val$type:I

    iput-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->val$emojiX:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLongClickRelease$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 963
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IFF)Z
    .locals 11

    .line 885
    instance-of p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_4

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->val$type:I

    if-ne v0, p4, :cond_4

    .line 886
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    .line 887
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 888
    check-cast p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 889
    iget-boolean p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_1

    .line 890
    iget-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object p2, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p2, :cond_0

    .line 892
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p2

    iget-object p3, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v1, p3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    .line 894
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, p1, v1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    return p4

    .line 897
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iput-object p1, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/4 v1, 0x0

    .line 898
    iput v1, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    .line 899
    iput-boolean p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cancelPressed:Z

    .line 900
    iget-boolean p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-eqz p1, :cond_2

    .line 901
    invoke-static {p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 902
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p2, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object p2, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz p1, :cond_3

    .line 904
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v9, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v10, 0x0

    const-string v2, "60_60_pcache"

    const-string v8, "tgs"

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 907
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 p3, 0x4

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-direct {p1, p3, v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-static {p2, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 909
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    .line 910
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->invalidateParent()V

    return p4

    :cond_4
    if-eqz p2, :cond_5

    .line 913
    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object p2, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz p2, :cond_5

    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->val$type:I

    if-nez p2, :cond_5

    .line 914
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17$1;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v8

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    invoke-static {p2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3102(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    move-result-object p2

    .line 948
    invoke-virtual {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->show()V

    .line 951
    :try_start_0
    invoke-virtual {p1, p3, p4}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p4

    :cond_5
    return p3
.end method

.method public onLongClickRelease()V
    .locals 4

    .line 960
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 961
    iput-boolean v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cancelPressed:Z

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 962
    iget v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    aput v0, v2, v3

    const/4 v0, 0x0

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 963
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 964
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17$2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x96

    .line 972
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 973
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 974
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public synthetic onMove(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended$-CC;->$default$onMove(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;FF)V

    return-void
.end method
