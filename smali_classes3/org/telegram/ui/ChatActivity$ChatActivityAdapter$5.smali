.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

.field final synthetic val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 32671
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    .line 32674
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 32675
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->sendAnimationData:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 32679
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32680
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 32681
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    .line 32682
    iget v4, v0, Lorg/telegram/messenger/MessageObject$SendAnimationData;->width:F

    div-float/2addr v4, v3

    const/4 v3, 0x2

    new-array v5, v3, [I

    .line 32684
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v6

    iput-boolean v1, v6, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->ignoreAlpha:Z

    .line 32685
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 32686
    aget v6, v5, v1

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v5, v1

    .line 32687
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isTopViewVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32688
    aget v6, v5, v1

    const/16 v7, 0x30

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    .line 32691
    :cond_1
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 32693
    new-instance v7, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1;

    const-string v8, "p1"

    invoke-direct {v7, p0, v8}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;Ljava/lang/String;)V

    .line 32704
    new-instance v8, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$2;

    const-string v9, "p2"

    invoke-direct {v8, p0, v9}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;Ljava/lang/String;)V

    .line 32718
    new-instance v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$3;

    const-string v10, "p3"

    invoke-direct {v9, p0, v10}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$3;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;Ljava/lang/String;)V

    .line 32732
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v11, v3, [Landroid/animation/Animator;

    new-array v12, v3, [F

    const/4 v13, 0x0

    aput v4, v12, v13

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v12, v1

    .line 32734
    invoke-static {v0, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v11, v13

    new-array v4, v3, [F

    iget v7, v0, Lorg/telegram/messenger/MessageObject$SendAnimationData;->y:F

    aput v7, v4, v13

    aget v7, v5, v1

    int-to-float v7, v7

    .line 32735
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v12

    add-float/2addr v7, v12

    aput v7, v4, v1

    invoke-static {v0, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v11, v1

    .line 32733
    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 32737
    sget-object v4, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v3, [F

    .line 32738
    iget v7, v0, Lorg/telegram/messenger/MessageObject$SendAnimationData;->x:F

    aput v7, v4, v13

    aget v5, v5, v13

    int-to-float v5, v5

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v2

    add-float/2addr v5, v2

    aput v5, v4, v1

    invoke-static {v0, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 32739
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v3, [Landroid/animation/Animator;

    aput-object v2, v4, v13

    aput-object v10, v4, v1

    .line 32741
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0xfa

    .line 32742
    invoke-virtual {v6, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 32744
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$4;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;)V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32756
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 32758
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$5;

    const-string v4, "alpha"

    invoke-direct {v2, p0, v4}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$5;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;Ljava/lang/String;)V

    .line 32773
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v1, [Landroid/animation/Animator;

    new-array v3, v3, [F

    .line 32774
    fill-array-data v3, :array_0

    .line 32775
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v13

    .line 32774
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x64

    .line 32777
    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    .line 32778
    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 32779
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 32780
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
