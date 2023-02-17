.class Lorg/telegram/ui/ChatActivity$23;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field backgroundColor:I

.field backgroundPaint:Landroid/graphics/Paint;

.field drawCaptionAfter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/ChatMessageCell;",
            ">;"
        }
    .end annotation
.end field

.field drawNamesAfter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/ChatMessageCell;",
            ">;"
        }
    .end annotation
.end field

.field drawTimeAfter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/ChatMessageCell;",
            ">;"
        }
    .end annotation
.end field

.field inputFieldHeight:I

.field lastHeight:I

.field lastWidth:I

.field private pressTime:J

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$context:Landroid/content/Context;

.field private x:F

.field private y:F


# direct methods
.method public static synthetic $r8$lambda$QT8H9nqklMFR6-hCafT9idC4THM(Lorg/telegram/ui/ChatActivity$23;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$23;->lambda$onMeasure$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hnvg8re6bD0xAePGYo50LEe92mU()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/ChatActivity$23;->lambda$onDetachedFromWindow$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/content/Context;)V
    .locals 0

    .line 5181
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$23;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    const/4 p1, 0x0

    .line 5183
    iput p1, p0, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    .line 5188
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->drawTimeAfter:Ljava/util/ArrayList;

    .line 5189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->drawNamesAfter:Ljava/util/ArrayList;

    .line 5190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->drawCaptionAfter:Ljava/util/ArrayList;

    .line 5251
    new-instance p1, Lorg/telegram/ui/ChatActivity$23$1;

    invoke-direct {p1, p0, p0}, Lorg/telegram/ui/ChatActivity$23$1;-><init>(Lorg/telegram/ui/ChatActivity$23;Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    return-void
.end method

.method static synthetic access$13300(Lorg/telegram/ui/ChatActivity$23;F)V
    .locals 0

    .line 5181
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$23;->setNonNoveTranslation(F)V

    return-void
.end method

.method private drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 7

    .line 5601
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5602
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 5603
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    .line 5604
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5605
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v6, v6, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p1, v3, p2, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 5606
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p2, 0x1

    .line 5607
    invoke-virtual {p3, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 v0, 0x0

    if-nez p4, :cond_1

    .line 5609
    invoke-virtual {p3, p1, v2, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    goto :goto_2

    :cond_1
    if-ne p4, p2, :cond_2

    .line 5611
    invoke-virtual {p3, p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    goto :goto_2

    .line 5613
    :cond_2
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p4

    iget p4, p4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr p4, p2

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p3, p1, p2, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCaptionLayout(Landroid/graphics/Canvas;ZF)V

    .line 5615
    :goto_2
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 5616
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static synthetic lambda$onDetachedFromWindow$0()V
    .locals 1

    const/4 v0, 0x1

    .line 5379
    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->removeCurrent(Z)V

    return-void
.end method

.method private synthetic lambda$onMeasure$1(I)V
    .locals 2

    .line 6239
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private setNonNoveTranslation(F)V
    .locals 2

    .line 6402
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6403
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$24100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 6404
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6405
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6406
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$13002(Lorg/telegram/ui/ChatActivity;F)F

    .line 6407
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundTranslation(I)V

    .line 6408
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->onPanTranslationUpdate(F)V

    .line 6409
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6410
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/BluredView;->drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->onPanTranslationUpdate(F)V

    .line 6412
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setFragmentPanTranslationOffset(I)V

    .line 6413
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13900(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 5622
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkAnimation()V

    .line 5623
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)V

    .line 5624
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5625
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v12}, Lorg/telegram/ui/ChatActivity;->access$18202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 5626
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/ChatActivity;->updateMessagesVisiblePart(Z)V

    .line 5628
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v12, v12}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 5629
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18400(Lorg/telegram/ui/ChatActivity;)V

    const/4 v1, -0x1

    .line 5631
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v14, 0x437f0000    # 255.0f

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 5632
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18600(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float v1, v1, v14

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3e4ccccd    # 0.2f

    .line 5633
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$18600(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    mul-float v4, v4, v3

    add-float/2addr v4, v2

    .line 5634
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v13

    invoke-virtual {v11, v4, v4, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v15, v1

    goto :goto_0

    :cond_2
    const/4 v15, -0x1

    .line 5636
    :goto_0
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5637
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    const/4 v10, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5638
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    sub-float v1, v16, v1

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    cmpl-float v2, v1, v10

    if-lez v2, :cond_5

    cmpl-float v2, v1, v16

    if-nez v2, :cond_4

    .line 5641
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_2

    .line 5643
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    const/16 v4, 0x1e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    mul-float v1, v1, v14

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 5645
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5646
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 5647
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5648
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 5649
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5651
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 5653
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_9

    .line 5654
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->panelAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18800(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 5655
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v2, "chat_emojiPanelBackground"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    .line 5656
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_7

    .line 5657
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundPaint:Landroid/graphics/Paint;

    .line 5659
    :cond_7
    iget v2, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundColor:I

    if-eq v2, v1, :cond_8

    .line 5660
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundPaint:Landroid/graphics/Paint;

    iput v1, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5662
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18800(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    .line 5663
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5664
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setFragmentPanTranslationOffset(I)V

    .line 5667
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_b

    .line 5668
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5669
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->sendAnimationData:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    if-eqz v4, :cond_a

    .line 5671
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5672
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    .line 5673
    iget v6, v4, Lorg/telegram/messenger/MessageObject$SendAnimationData;->currentX:F

    iget v7, v4, Lorg/telegram/messenger/MessageObject$SendAnimationData;->currentY:F

    invoke-virtual {v11, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5674
    iget v6, v4, Lorg/telegram/messenger/MessageObject$SendAnimationData;->currentScale:F

    invoke-virtual {v11, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5675
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v11, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5676
    iget v4, v4, Lorg/telegram/messenger/MessageObject$SendAnimationData;->timeAlpha:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setTimeAlpha(F)V

    .line 5677
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 5678
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5681
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    .line 5682
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    mul-float v2, v2, v14

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    goto :goto_4

    :cond_d
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_4
    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5683
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5685
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v17, 0x14

    if-eqz v1, :cond_41

    .line 5686
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eq v1, v2, :cond_3f

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v1, v2, :cond_f

    goto/16 :goto_19

    .line 5691
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageView;

    const/4 v8, 0x2

    if-eqz v1, :cond_13

    .line 5692
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 5693
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_10

    .line 5694
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float v1, v1, v14

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 5696
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5697
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v2

    if-ne v1, v2, :cond_11

    .line 5698
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/2addr v1, v8

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float v2, v2, v1

    .line 5699
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$19500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v11, v1, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5701
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5702
    invoke-virtual {v11, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5704
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_12

    .line 5705
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    mul-float v2, v2, v14

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float v3, v16, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5706
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_12
    move/from16 v18, v15

    const/16 v20, 0x0

    goto/16 :goto_1a

    .line 5709
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v7, v1, v2

    .line 5711
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_14

    .line 5712
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    move-object v5, v1

    goto :goto_5

    :cond_14
    const/4 v5, 0x0

    .line 5717
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_38

    .line 5719
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5724
    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_15

    .line 5725
    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5727
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v19

    .line 5728
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v20

    move-object/from16 v8, v19

    move-object/from16 v21, v20

    const/4 v13, 0x0

    goto :goto_8

    .line 5733
    :cond_15
    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v6, :cond_16

    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatActionCell;

    goto :goto_7

    :cond_16
    const/4 v6, 0x0

    :goto_7
    move-object v13, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v21, 0x0

    .line 5735
    :goto_8
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v12

    if-eq v2, v12, :cond_17

    if-eqz v5, :cond_18

    if-ne v5, v8, :cond_18

    :cond_17
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v8

    cmpl-float v8, v8, v10

    if-nez v8, :cond_19

    :cond_18
    move/from16 v26, v3

    move/from16 v24, v4

    move-object/from16 v28, v5

    move v12, v7

    move/from16 v18, v15

    const/16 v20, 0x0

    goto/16 :goto_13

    :cond_19
    if-nez v1, :cond_22

    if-eqz v6, :cond_22

    if-eqz v5, :cond_22

    .line 5738
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v8, :cond_22

    .line 5739
    invoke-virtual {v8, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v1

    .line 5741
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v12, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v12, v12

    add-float/2addr v12, v1

    iget v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v12, v9

    .line 5742
    iget v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v9, v9

    iget v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v9, v14

    .line 5743
    iget v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v14, v14

    add-float/2addr v14, v1

    iget v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v14, v1

    .line 5744
    iget v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v1, v1

    iget v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v1, v10

    .line 5746
    iget-boolean v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v10, :cond_1a

    .line 5747
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v8

    add-float/2addr v9, v8

    .line 5748
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v8

    add-float/2addr v1, v8

    .line 5751
    :cond_1a
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    cmpg-float v8, v9, v8

    if-gez v8, :cond_1b

    .line 5752
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v8, v9

    .line 5755
    :cond_1b
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v8, v10

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-lez v8, :cond_1c

    .line 5756
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v1, v8

    int-to-float v1, v1

    .line 5760
    :cond_1c
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_9
    move-object/from16 v23, v2

    if-ge v10, v8, :cond_1f

    .line 5761
    iget-object v2, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 5762
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v24

    move/from16 v26, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v27

    cmp-long v3, v24, v27

    move/from16 v24, v4

    if-nez v3, :cond_1d

    const/4 v3, 0x0

    goto :goto_a

    :cond_1d
    const/4 v3, 0x1

    .line 5763
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1e

    const/4 v10, 0x0

    goto :goto_b

    :cond_1e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v23

    move/from16 v4, v24

    move/from16 v3, v26

    goto :goto_9

    :cond_1f
    move/from16 v26, v3

    move/from16 v24, v4

    const/4 v10, 0x1

    .line 5769
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5770
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->clipTop()F

    move-result v2

    goto :goto_c

    :cond_20
    const/4 v2, 0x0

    :goto_c
    add-float/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v25, v6

    iget v6, v8, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iget-object v6, v8, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v6, :cond_21

    invoke-virtual {v6}, Lorg/telegram/ui/Components/MentionsContainerView;->clipBottom()F

    move-result v6

    goto :goto_d

    :cond_21
    const/4 v6, 0x0

    :goto_d
    sub-float/2addr v4, v6

    const/4 v8, 0x0

    invoke-virtual {v11, v8, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 5771
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual {v11, v8, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5772
    iget-object v2, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    float-to-int v4, v12

    float-to-int v6, v9

    float-to-int v9, v14

    float-to-int v12, v1

    iget-boolean v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v22

    move-object v1, v3

    move-object/from16 v3, v23

    move/from16 v23, v2

    move-object/from16 v2, p1

    move-object/from16 v27, v3

    move v3, v4

    move v4, v6

    move-object/from16 v28, v5

    move v5, v9

    move/from16 v18, v15

    move-object/from16 v9, v25

    const/4 v15, 0x0

    move v6, v12

    move v12, v7

    move v7, v14

    const/4 v14, 0x2

    const/16 v20, 0x0

    move/from16 v8, v23

    move-object v15, v9

    const/4 v14, 0x1

    move v9, v10

    move/from16 v10, v22

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackground(Landroid/graphics/Canvas;IIIIZZZI)V

    .line 5773
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v9, 0x1

    goto :goto_e

    :cond_22
    move-object/from16 v27, v2

    move/from16 v26, v3

    move/from16 v24, v4

    move-object/from16 v28, v5

    move v12, v7

    move/from16 v18, v15

    const/4 v14, 0x1

    const/16 v20, 0x0

    move-object v15, v6

    move v9, v1

    :goto_e
    if-eqz v15, :cond_23

    .line 5777
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 5778
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 5781
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 5783
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 5784
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 5786
    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v4, :cond_24

    .line 5787
    invoke-virtual {v4}, Lorg/telegram/ui/Components/MentionsContainerView;->clipTop()F

    move-result v4

    add-float v7, v12, v4

    .line 5788
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/MentionsContainerView;->clipBottom()F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_f

    :cond_24
    move v7, v12

    :goto_f
    if-eqz v15, :cond_25

    .line 5791
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-nez v4, :cond_26

    .line 5792
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5793
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 5794
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 5795
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_26
    move v8, v1

    move v10, v2

    move v6, v7

    move v7, v3

    cmpg-float v22, v6, v7

    if-gez v22, :cond_2d

    .line 5799
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_27

    .line 5800
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v5, v1

    const/16 v25, 0x1f

    move-object/from16 v1, p1

    move v2, v8

    move v3, v6

    move v4, v10

    move/from16 v29, v5

    move v5, v7

    move/from16 v30, v6

    move/from16 v6, v29

    move/from16 v31, v7

    move/from16 v7, v25

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_10

    :cond_27
    move/from16 v30, v6

    move/from16 v31, v7

    .line 5802
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :goto_10
    if-eqz v15, :cond_28

    .line 5805
    invoke-virtual {v15, v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 5806
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setScrimReaction(Ljava/lang/String;)V

    :cond_28
    move/from16 v7, v30

    move/from16 v6, v31

    .line 5808
    invoke-virtual {v11, v8, v7, v10, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 5809
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v15, :cond_29

    if-nez v28, :cond_29

    .line 5810
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 5811
    invoke-virtual {v15, v11, v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    :cond_29
    move-object/from16 v5, v27

    .line 5813
    invoke-virtual {v5, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v15, :cond_2a

    .line 5814
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasOutboundsContent()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 5815
    invoke-virtual {v15, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    :cond_2a
    if-eqz v13, :cond_2b

    .line 5818
    invoke-virtual {v13, v11}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 5821
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v15, :cond_2c

    const/4 v1, 0x0

    .line 5824
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 v13, 0x0

    .line 5825
    invoke-virtual {v15, v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->setScrimReaction(Ljava/lang/String;)V

    goto :goto_11

    :cond_2c
    const/4 v13, 0x0

    goto :goto_11

    :cond_2d
    move-object/from16 v5, v27

    const/4 v13, 0x0

    move/from16 v32, v7

    move v7, v6

    move/from16 v6, v32

    :goto_11
    move-object/from16 v1, v21

    if-nez v1, :cond_2e

    if-eqz v15, :cond_35

    .line 5829
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v2, :cond_35

    :cond_2e
    if-eqz v1, :cond_2f

    .line 5830
    iget-boolean v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v2, :cond_2f

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v2, :cond_33

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v2, :cond_33

    :cond_2f
    if-eqz v1, :cond_30

    .line 5831
    iget-boolean v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-eqz v2, :cond_31

    .line 5832
    :cond_30
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    if-eqz v1, :cond_32

    .line 5834
    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v2, :cond_33

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v2, :cond_33

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasNameLayout()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 5835
    :cond_32
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    if-eqz v1, :cond_34

    .line 5838
    iget v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_35

    .line 5839
    :cond_34
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5842
    :cond_35
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    if-eqz v15, :cond_37

    .line 5843
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5844
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    move/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v25, v5

    move/from16 v5, v21

    move/from16 v31, v6

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-gez v22, :cond_37

    .line 5847
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAlpha()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    mul-float v1, v1, v2

    cmpg-float v2, v1, v16

    if-gez v2, :cond_36

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v6, v1

    const/16 v13, 0x1f

    move-object/from16 v1, p1

    move v2, v8

    move v3, v7

    move v4, v10

    move/from16 v5, v31

    move v14, v7

    move v7, v13

    .line 5849
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_12

    :cond_36
    move v14, v7

    .line 5851
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :goto_12
    move/from16 v3, v31

    .line 5853
    invoke-virtual {v11, v8, v14, v10, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 5854
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5855
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v11, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawScrimReaction(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 5856
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_37
    move v1, v9

    :goto_13
    add-int/lit8 v3, v26, 0x1

    move v7, v12

    move/from16 v15, v18

    move/from16 v4, v24

    move-object/from16 v5, v28

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v14, 0x437f0000    # 255.0f

    goto/16 :goto_6

    :cond_38
    move v12, v7

    move/from16 v18, v15

    const/16 v20, 0x0

    .line 5861
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3a

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_39

    .line 5864
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v4, 0x0

    invoke-direct {v0, v11, v12, v3, v4}, Lorg/telegram/ui/ChatActivity$23;->drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_39
    const/4 v4, 0x0

    .line 5866
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_15

    :cond_3a
    const/4 v4, 0x0

    .line 5868
    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3c

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_3b

    .line 5871
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v5, 0x1

    invoke-direct {v0, v11, v12, v3, v5}, Lorg/telegram/ui/ChatActivity$23;->drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 5873
    :cond_3b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5875
    :cond_3c
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_40

    :goto_17
    if-ge v4, v1, :cond_3e

    .line 5878
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5879
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v3

    if-nez v3, :cond_3d

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-nez v3, :cond_3d

    const/4 v3, 0x2

    goto :goto_18

    :cond_3d
    const/4 v3, 0x2

    .line 5882
    invoke-direct {v0, v11, v12, v2, v3}, Lorg/telegram/ui/ChatActivity$23;->drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V

    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 5884
    :cond_3e
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1a

    :cond_3f
    :goto_19
    move/from16 v18, v15

    const/16 v20, 0x0

    .line 5687
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_40

    .line 5688
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float v3, v16, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5689
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5888
    :cond_40
    :goto_1a
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_42

    .line 5889
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float v16, v16, v3

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5890
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1b

    :cond_41
    move/from16 v18, v15

    const/16 v20, 0x0

    .line 5894
    :cond_42
    :goto_1b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_43

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messageEnterTransitionContainer:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/MessageEnterTransitionContainer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 5895
    :cond_43
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_47

    .line 5896
    :cond_44
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_45

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 5897
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5899
    :cond_45
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 5900
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5902
    :cond_46
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_47

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 5903
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5906
    :cond_47
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 5907
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5909
    :cond_48
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 5910
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5912
    :cond_49
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 5913
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5915
    :cond_4a
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 5916
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5918
    :cond_4b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4c

    .line 5919
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5921
    :cond_4c
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$9800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4d

    .line 5922
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$9800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5926
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-lez v1, :cond_50

    iget v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 5927
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v2, "windowBackgroundWhite"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    .line 5928
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_4e

    .line 5929
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundPaint:Landroid/graphics/Paint;

    .line 5931
    :cond_4e
    iget v2, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundColor:I

    if-eq v2, v1, :cond_4f

    .line 5932
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundPaint:Landroid/graphics/Paint;

    iput v1, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4f
    const/4 v2, 0x0

    .line 5934
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$23;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5936
    :cond_50
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->needDrawBottomPanel()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 5938
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_51

    .line 5939
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 5940
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    goto :goto_1c

    :cond_51
    const/high16 v2, 0x40000000    # 2.0f

    .line 5942
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 5943
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    .line 5945
    :goto_1c
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    if-nez v3, :cond_52

    const/4 v10, 0x0

    goto :goto_1d

    :cond_52
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17100(Lorg/telegram/ui/ChatActivity;)F

    move-result v10

    :goto_1d
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float v10, v10, v3

    float-to-int v3, v10

    sub-int/2addr v1, v3

    .line 5946
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v11, v1, v2, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->drawBottomPanel(Landroid/graphics/Canvas;III)V

    .line 5948
    :cond_53
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_54

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5949
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v1, v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 5950
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19800(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5951
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5954
    :cond_54
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/EmojiAnimationsOverlay;->draw(Landroid/graphics/Canvas;)V

    if-ltz v18, :cond_55

    .line 5957
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5959
    :cond_55
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 5960
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5961
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$20000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5962
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$20100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$20200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18600(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v1, v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 5963
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$20300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5964
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5965
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_56
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 6425
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/ForwardingPreviewView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6426
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    return v1

    .line 6429
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 5389
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInBubbleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5392
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    goto :goto_2

    .line 5390
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    :goto_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    .line 5394
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v3

    if-ne v1, v3, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    :cond_4
    return v2

    .line 5398
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$15202(Lorg/telegram/ui/ChatActivity;F)F

    .line 5399
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    .line 5400
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5401
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v3

    .line 5404
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5407
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->checkOnTap(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_7

    .line 5408
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5411
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_a

    .line 5412
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5413
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$23;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5414
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5415
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    return v3

    .line 5421
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5422
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PinchToZoomHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5425
    :cond_b
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->hasVisibleInstance()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5426
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AvatarPreviewer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v3

    .line 5431
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->allowExpandPreviewByClick:Z

    if-eqz v0, :cond_14

    .line 5432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v5, -0x1

    if-nez v0, :cond_11

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 5435
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    new-array v0, v0, [I

    .line 5437
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 5438
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 5439
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    aget v7, v0, v2

    aget v8, v1, v2

    sub-int/2addr v7, v8

    aget v8, v0, v3

    aget v9, v1, v3

    sub-int/2addr v8, v9

    aget v9, v0, v2

    aget v10, v1, v2

    sub-int/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    aget v10, v0, v3

    aget v11, v1, v3

    sub-int/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 5440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    .line 5444
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 5445
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v7

    .line 5446
    invoke-virtual {v7, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5447
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    aget v9, v0, v2

    aget v10, v1, v2

    sub-int/2addr v9, v10

    aget v10, v0, v3

    aget v11, v1, v3

    sub-int/2addr v10, v11

    aget v11, v0, v2

    aget v12, v1, v2

    sub-int/2addr v11, v12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    aget v12, v0, v3

    aget v13, v1, v3

    sub-int/2addr v12, v13

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 5448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v7, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    :goto_4
    if-nez v4, :cond_f

    .line 5452
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 5453
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 5454
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    aget v9, v0, v2

    aget v10, v1, v2

    sub-int/2addr v9, v10

    aget v10, v0, v3

    aget v11, v1, v3

    sub-int/2addr v10, v11

    aget v11, v0, v2

    aget v12, v1, v2

    sub-int/2addr v11, v12

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    aget v0, v0, v3

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v8, v9, v10, v11, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 5455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v4, 0x1

    :cond_f
    if-nez v4, :cond_10

    if-nez v7, :cond_10

    .line 5460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$23;->x:F

    .line 5461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$23;->y:F

    .line 5462
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ChatActivity$23;->pressTime:J

    const/4 v0, 0x1

    goto :goto_6

    .line 5465
    :cond_10
    iput-wide v5, p0, Lorg/telegram/ui/ChatActivity$23;->pressTime:J

    goto :goto_5

    .line 5467
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_13

    .line 5468
    iget v0, p0, Lorg/telegram/ui/ChatActivity$23;->x:F

    iget v1, p0, Lorg/telegram/ui/ChatActivity$23;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v0, v1, v7, v8}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v7, p0, Lorg/telegram/ui/ChatActivity$23;->pressTime:J

    sub-long/2addr v0, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v0, v7

    if-gtz v9, :cond_12

    .line 5469
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->expandPreviewFragment()V

    .line 5470
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5472
    :cond_12
    iput-wide v5, p0, Lorg/telegram/ui/ChatActivity$23;->pressTime:J

    goto :goto_5

    .line 5473
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 5474
    iput-wide v5, p0, Lorg/telegram/ui/ChatActivity$23;->pressTime:J

    :cond_14
    :goto_5
    const/4 v0, 0x0

    .line 5478
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_15

    if-eqz v0, :cond_16

    :cond_15
    const/4 v2, 0x1

    :cond_16
    return v2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 5494
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messageEnterTransitionContainer:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/MessageEnterTransitionContainer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v0

    if-eq p2, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    if-eq p2, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eq p2, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eq p2, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-eq p2, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-ne p2, v0, :cond_1

    goto/16 :goto_e

    .line 5497
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 5500
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-ne p2, v0, :cond_3

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 5503
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-ne p2, v0, :cond_4

    return v2

    .line 5506
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne p2, v0, :cond_5

    return v2

    :cond_5
    const v0, 0x4000003

    .line 5509
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 5511
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_8

    .line 5512
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eq p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    if-eq p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v0

    if-ne p2, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    :goto_0
    const/4 v0, 0x1

    goto :goto_4

    .line 5514
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eq p2, v0, :cond_a

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v0, 0x1

    .line 5515
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredLinearLayout;

    move-result-object v3

    if-ne p2, v3, :cond_b

    const/4 v3, 0x1

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v0, v3

    :goto_4
    if-nez v0, :cond_11

    return v1

    .line 5520
    :cond_c
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->blurFullyDrawing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BluredView;->fullyDrawing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 5521
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eq p2, v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eq p2, v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    if-ne p2, v0, :cond_e

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    :cond_f
    :goto_5
    const/4 v0, 0x1

    .line 5522
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredLinearLayout;

    move-result-object v3

    if-ne p2, v3, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    or-int/2addr v0, v3

    if-eqz v0, :cond_11

    return v1

    .line 5528
    :cond_11
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 5530
    iget-wide v3, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_13

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_12
    const/4 v4, 0x1

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    :cond_14
    const/4 v4, 0x0

    .line 5531
    :goto_8
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-ne p2, v5, :cond_19

    .line 5532
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5534
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_15

    .line 5535
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float v2, v2, v3

    goto :goto_9

    :cond_15
    const/4 v2, 0x0

    .line 5537
    :goto_9
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    neg-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_17

    .line 5538
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v0, v6, :cond_17

    .line 5539
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14700(Lorg/telegram/ui/ChatActivity;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->isDrawingReady()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5540
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 5541
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 5542
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5543
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 5544
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5545
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    add-int/2addr v4, v0

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    add-int/2addr v6, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v6, v5

    invoke-virtual {v3, v0, v2, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5546
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5547
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5549
    :cond_16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    goto :goto_a

    .line 5551
    :cond_17
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    .line 5552
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/16 v2, 0x3e8

    .line 5553
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 5554
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 5555
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_a

    :cond_18
    const/4 p3, 0x0

    .line 5560
    :goto_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d

    .line 5562
    :cond_19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    if-eqz v4, :cond_1e

    .line 5563
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    if-ne p2, v4, :cond_1e

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v0, v6, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 5564
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5566
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_1a

    .line 5567
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    sub-float/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    mul-float v0, v0, v4

    goto :goto_b

    :cond_1a
    const/4 v0, 0x0

    .line 5569
    :goto_b
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    neg-float v4, v4

    sub-float/2addr v4, v0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17100(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    add-float/2addr v4, v0

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5570
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-super {p0, p1, v0, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5571
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    if-eqz p3, :cond_1d

    .line 5572
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5573
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getX()F

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getTop()I

    move-result p4

    int-to-float p4, p4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    add-float/2addr p4, v0

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v3, :cond_1b

    .line 5575
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawRoundProgress(Landroid/graphics/Canvas;)V

    .line 5576
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 5577
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    goto :goto_c

    .line 5579
    :cond_1b
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOverlays(Landroid/graphics/Canvas;)V

    .line 5580
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDrawTime()Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 5581
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result p4

    invoke-virtual {p3, p1, p4, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    .line 5584
    :cond_1c
    :goto_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5586
    :cond_1d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1e
    move p3, v5

    .line 5589
    :goto_d
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    if-ne p2, p4, :cond_21

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 5590
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p4

    if-nez p4, :cond_20

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p4

    float-to-int p4, p4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p4, v0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1f

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_1f
    add-int/2addr v1, p4

    :cond_20
    invoke-interface {p2, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    :cond_21
    return p3

    :cond_22
    :goto_e
    return v1
.end method

.method protected drawList(Landroid/graphics/Canvas;Z)V
    .locals 7

    .line 5197
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5199
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 5200
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 5201
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    const/16 v5, 0x28

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p2, :cond_1

    .line 5204
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/16 v5, 0xcb

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    goto/16 :goto_3

    .line 5208
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p2, :cond_2

    .line 5210
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 5212
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5214
    :goto_1
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_5

    .line 5215
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v5, 0x1

    .line 5216
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->drawForBlur:Z

    .line 5217
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5218
    invoke-virtual {v4, p1, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 5220
    :cond_3
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5221
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasOutboundsContent()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5222
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 5224
    :cond_4
    iput-boolean v1, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->drawForBlur:Z

    goto :goto_2

    .line 5225
    :cond_5
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_6

    .line 5226
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5227
    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 5229
    :cond_6
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5231
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected getBottomOffset()F
    .locals 1

    .line 5242
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getListTranslationY()F
    .locals 1

    .line 5247
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    return v0
.end method

.method protected getNewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 6433
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6434
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getNewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getScrollOffset()I
    .locals 1

    .line 5237
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected isActionBarVisible()Z
    .locals 1

    .line 5597
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 5356
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 5357
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onAttach()V

    .line 5358
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAdjustPanLayoutHelper(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V

    .line 5359
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5360
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-wide v1, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 5361
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;Z)Landroid/view/TextureView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14700(Lorg/telegram/ui/ChatActivity;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    .line 5363
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5364
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatPullingDownDrawable;->onAttach()V

    .line 5366
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 5371
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 5372
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    .line 5373
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5374
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatPullingDownDrawable;->onDetach()V

    .line 5375
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$14902(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatPullingDownDrawable;)Lorg/telegram/ui/ChatPullingDownDrawable;

    .line 5377
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onDetachedFromWindow()V

    .line 5378
    sget-object v0, Lorg/telegram/ui/ChatActivity$23$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/ChatActivity$23$$ExternalSyntheticLambda1;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const v0, 0x4000003

    .line 5483
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 5486
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->blurFullyDrawing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BluredView;->fullyDrawing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 5489
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 6258
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 6259
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v2

    .line 6262
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    const/16 v4, 0x14

    if-lez v3, :cond_0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 6263
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    goto :goto_0

    .line 6265
    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-gt v2, v3, :cond_1

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$22400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6267
    :goto_0
    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    if-nez v6, :cond_2

    .line 6268
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_27

    .line 6272
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 6273
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    goto/16 :goto_11

    .line 6276
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 6278
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 6279
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 6284
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    const/16 v11, 0x33

    :cond_4
    and-int/lit8 v12, v11, 0x7

    and-int/lit8 v11, v11, 0x70

    and-int/lit8 v12, v12, 0x7

    const/4 v14, 0x1

    const/4 v15, 0x2

    if-eq v12, v14, :cond_6

    const/4 v5, 0x5

    if-eq v12, v5, :cond_5

    .line 6301
    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_5
    sub-int v5, p4, v9

    .line 6297
    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_6
    sub-int v5, p4, p2

    sub-int/2addr v5, v9

    .line 6294
    div-int/2addr v5, v15

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v12

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v5, v12

    :goto_3
    const/16 v12, 0x10

    const/16 v13, 0x15

    const/16 v4, 0x30

    if-eq v11, v12, :cond_9

    if-eq v11, v4, :cond_8

    const/16 v12, 0x50

    if-eq v11, v12, :cond_7

    .line 6321
    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_7
    sub-int v11, p5, v3

    sub-int v11, v11, p3

    sub-int/2addr v11, v10

    .line 6318
    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 6306
    :cond_8
    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v11

    add-int/2addr v8, v11

    .line 6307
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$22500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    if-eq v7, v11, :cond_a

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$22600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_a

    .line 6308
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$22700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v8, v11

    .line 6309
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$22800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v11

    if-eqz v11, :cond_a

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v13, :cond_a

    .line 6310
    sget v11, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v8, v11

    goto :goto_5

    :cond_9
    sub-int v11, p5, v3

    sub-int v11, v11, p3

    sub-int/2addr v11, v10

    .line 6315
    div-int/2addr v11, v15

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_4
    sub-int v8, v11, v8

    .line 6324
    :cond_a
    :goto_5
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v11

    if-eq v7, v11, :cond_1f

    iget-object v11, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-ne v7, v11, :cond_b

    goto/16 :goto_a

    .line 6326
    :cond_b
    instance-of v11, v7, Lorg/telegram/ui/Components/HintView;

    if-nez v11, :cond_1f

    instance-of v11, v7, Lorg/telegram/ui/Components/ChecksHintView;

    if-eqz v11, :cond_c

    goto/16 :goto_a

    .line 6328
    :cond_c
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v11, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-ne v7, v12, :cond_e

    .line 6329
    iget-object v4, v11, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v4, v11

    sub-int/2addr v8, v4

    .line 6330
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v4, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v11, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_d
    :goto_6
    const/16 v4, 0x14

    goto/16 :goto_10

    .line 6331
    :cond_e
    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-eq v7, v11, :cond_23

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-eq v7, v11, :cond_23

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-ne v7, v11, :cond_f

    goto/16 :goto_d

    .line 6339
    :cond_f
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-ne v7, v11, :cond_11

    .line 6340
    iget v4, v0, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    div-int/2addr v4, v15

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$23000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$23100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    div-int/2addr v11, v15

    goto :goto_7

    :cond_10
    const/4 v11, 0x0

    :goto_7
    sub-int/2addr v4, v11

    :goto_8
    sub-int/2addr v8, v4

    goto :goto_6

    .line 6341
    :cond_11
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v11, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v11, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 6342
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v4, :cond_13

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$23200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_9

    .line 6345
    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v8

    goto :goto_6

    .line 6343
    :cond_13
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v8, v4

    goto :goto_6

    .line 6347
    :cond_14
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v11

    if-eq v7, v11, :cond_22

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v11

    if-eq v7, v11, :cond_22

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$13100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v11

    if-eq v7, v11, :cond_22

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$16100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v11

    if-ne v7, v11, :cond_15

    goto/16 :goto_c

    .line 6349
    :cond_15
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    if-eq v7, v11, :cond_20

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v11

    if-eq v7, v11, :cond_20

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$23300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v11

    if-ne v7, v11, :cond_16

    goto/16 :goto_b

    .line 6360
    :cond_16
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-ne v7, v11, :cond_17

    .line 6361
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v11, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isTopViewVisible()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 6362
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto/16 :goto_8

    .line 6364
    :cond_17
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$23500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    if-ne v7, v4, :cond_19

    .line 6365
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$23600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v13, :cond_18

    .line 6366
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v8, v4

    .line 6368
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    goto/16 :goto_8

    .line 6369
    :cond_19
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    if-ne v7, v4, :cond_1a

    .line 6370
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$23700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int v8, v4, v3

    const/16 v4, 0x14

    .line 6372
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    if-le v2, v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_d

    sub-int/2addr v8, v2

    goto/16 :goto_6

    .line 6375
    :cond_1a
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v4

    if-eq v7, v4, :cond_1f

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$22000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v4

    if-eq v7, v4, :cond_1f

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$23800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v4

    if-ne v7, v4, :cond_1b

    goto :goto_a

    .line 6377
    :cond_1b
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v4

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v4

    if-ne v7, v4, :cond_1d

    sub-int/2addr v8, v3

    const/16 v4, 0x14

    .line 6379
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    if-le v2, v11, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_1c

    sub-int/2addr v8, v2

    .line 6382
    :cond_1c
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    goto/16 :goto_8

    .line 6383
    :cond_1d
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v11, :cond_1e

    iget-object v11, v11, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/Components/BotCommandsMenuContainer;

    if-ne v7, v11, :cond_1e

    .line 6384
    iget v4, v0, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    goto/16 :goto_8

    .line 6385
    :cond_1e
    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/ForwardingPreviewView;

    if-ne v7, v4, :cond_d

    .line 6386
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_6

    :cond_1f
    :goto_a
    const/16 v4, 0x14

    goto :goto_f

    .line 6350
    :cond_20
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v11, v4, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    sub-int/2addr v8, v11

    .line 6351
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 6353
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$21400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 6354
    iget v4, v0, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    const/16 v11, 0x33

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v4, v11

    sub-int/2addr v8, v4

    :cond_21
    sub-int/2addr v8, v3

    const/16 v4, 0x14

    .line 6357
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    if-le v2, v11, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v11, :cond_25

    sub-int/2addr v8, v2

    goto :goto_10

    :cond_22
    :goto_c
    const/16 v4, 0x14

    .line 6348
    iget v11, v0, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    goto :goto_e

    :cond_23
    :goto_d
    const/16 v4, 0x14

    .line 6332
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$22900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v11

    if-nez v11, :cond_25

    .line 6334
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$21400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 6335
    iget v11, v0, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    goto :goto_e

    .line 6337
    :cond_24
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v11, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    :goto_e
    sub-int/2addr v8, v11

    goto :goto_10

    :goto_f
    const/4 v8, 0x0

    :cond_25
    :goto_10
    add-int/2addr v9, v5

    add-int/2addr v10, v8

    .line 6388
    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    :cond_26
    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 6391
    :cond_27
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13900(Lorg/telegram/ui/ChatActivity;)V

    .line 6392
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 6393
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 6395
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$23900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 6396
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$24000(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6398
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 22

    move-object/from16 v6, p0

    .line 5972
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 5973
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 5975
    iget v0, v6, Lorg/telegram/ui/ChatActivity$23;->lastWidth:I

    const/16 v9, 0x8

    const/16 v10, 0xa

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v0, v7, :cond_e

    .line 5976
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v11}, Lorg/telegram/ui/ChatActivity;->access$20402(Lorg/telegram/ui/ChatActivity;Z)Z

    move/from16 v13, p1

    .line 5977
    iput v13, v6, Lorg/telegram/ui/ChatActivity$23;->lastWidth:I

    .line 5978
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_1

    .line 5979
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    .line 5980
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, v2, v12, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x98

    .line 5981
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, v7, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    if-le v1, v0, :cond_0

    .line 5982
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    xor-int/2addr v1, v11

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$11202(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_0

    .line 5984
    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v12}, Lorg/telegram/ui/ChatActivity;->access$11202(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_0

    .line 5987
    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v12}, Lorg/telegram/ui/ChatActivity;->access$11202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 5989
    :goto_0
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const/16 v1, 0x28

    if-nez v0, :cond_3

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5994
    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5995
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 5990
    :cond_3
    :goto_1
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5991
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x60

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5999
    :cond_4
    :goto_2
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6000
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x42400000    # 48.0f

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->addFrameParams(Landroid/view/View;IIFFFF)V

    .line 6003
    :cond_5
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6004
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6005
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6007
    :cond_6
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 6008
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_3

    .line 6011
    :cond_7
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 6012
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 6014
    :cond_8
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 6015
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6018
    :cond_9
    :goto_3
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 6019
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$11400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$11200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6021
    :cond_b
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 6022
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    .line 6023
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$11400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_c

    .line 6024
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    .line 6025
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    if-eqz v0, :cond_d

    .line 6026
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(IZ)V

    .line 6029
    :cond_d
    :goto_5
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v12}, Lorg/telegram/ui/ChatActivity;->access$20402(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_6

    :cond_e
    move/from16 v13, p1

    .line 6032
    :goto_6
    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 6033
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    sub-int v14, v8, v0

    .line 6035
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 6036
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    .line 6037
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    sub-int/2addr v14, v15

    .line 6040
    :cond_f
    iget v0, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21200(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6041
    iget v1, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21200(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v16, 0x14

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-lt v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    .line 6042
    :goto_7
    iget v2, v6, Lorg/telegram/ui/ChatActivity$23;->lastHeight:I

    if-eq v2, v8, :cond_11

    .line 6043
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    .line 6045
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v5

    .line 6046
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-lez v2, :cond_12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-gt v5, v2, :cond_12

    .line 6047
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$21202(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_9

    .line 6049
    :cond_12
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-gt v5, v2, :cond_14

    .line 6050
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v3

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    :goto_8
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$21202(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_9

    .line 6052
    :cond_14
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v12}, Lorg/telegram/ui/ChatActivity;->access$21202(Lorg/telegram/ui/ChatActivity;I)I

    .line 6055
    :goto_9
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21200(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setEmojiKeyboardHeight(I)V

    .line 6057
    iget v2, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21200(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-lt v2, v3, :cond_15

    const/4 v2, 0x1

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    .line 6059
    :goto_a
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eq v1, v2, :cond_18

    const/4 v1, 0x0

    .line 6060
    :goto_b
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_18

    .line 6061
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6062
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_17

    .line 6063
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6064
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 6065
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v17

    if-eqz v17, :cond_17

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 6066
    iget-object v4, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_17

    .line 6068
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    iget-object v4, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v11

    sub-float/2addr v4, v11

    iget-object v11, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v10, v11, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v10, v10

    sub-float/2addr v4, v10

    iget v10, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$21200(Lorg/telegram/ui/ChatActivity;)I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v0

    int-to-float v0, v10

    add-float/2addr v4, v0

    if-eqz v2, :cond_16

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    goto :goto_c

    :cond_16
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    :goto_c
    int-to-float v0, v0

    sub-float/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    float-to-int v0, v4

    invoke-virtual {v1, v3, v0, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    .line 6069
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 6070
    iget-object v0, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->delayAnimation()V

    const/4 v0, 0x1

    goto :goto_d

    :cond_17
    add-int/lit8 v1, v1, 0x1

    const/16 v10, 0xa

    const/4 v11, 0x1

    goto/16 :goto_b

    :cond_18
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_19

    .line 6080
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->runEmojiPanelAnimation()V

    .line 6083
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v10

    .line 6084
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v21, v5

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 6087
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6088
    iput v12, v6, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    :goto_e
    const/4 v11, 0x0

    goto :goto_10

    .line 6091
    :cond_1a
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    const/16 v0, 0x31

    .line 6092
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 6094
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 6095
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    .line 6096
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v6, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    goto :goto_f

    .line 6097
    :cond_1b
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1c

    .line 6098
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v6, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    goto :goto_f

    .line 6100
    :cond_1c
    iput v12, v6, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    goto :goto_e

    :cond_1d
    :goto_f
    move v11, v0

    .line 6107
    :goto_10
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iput v12, v0, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    .line 6108
    iput v12, v0, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    .line 6109
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6110
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iput v15, v0, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    const/16 v1, 0xcb

    .line 6111
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    :cond_1e
    const/4 v5, 0x0

    :goto_11
    const/high16 v0, 0x40000000    # 2.0f

    if-ge v5, v10, :cond_3e

    .line 6114
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 6116
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v9, :cond_3d

    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eq v1, v3, :cond_3d

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    if-ne v1, v2, :cond_1f

    goto/16 :goto_1f

    .line 6119
    :cond_1f
    iget-object v2, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-ne v1, v2, :cond_20

    .line 6120
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 6121
    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 6122
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1f

    .line 6123
    :cond_20
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v2

    if-ne v1, v2, :cond_22

    .line 6125
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    move/from16 v4, v21

    if-le v4, v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v2, :cond_21

    add-int v2, v8, v4

    goto :goto_12

    :cond_21
    move v2, v8

    .line 6128
    :goto_12
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 6129
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 6130
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->measure(II)V

    :goto_13
    move v12, v4

    move/from16 v19, v5

    goto/16 :goto_20

    :cond_22
    move/from16 v4, v21

    .line 6131
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/16 v3, 0x15

    if-ne v1, v2, :cond_25

    .line 6132
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v19, v14, v11

    .line 6133
    iget-object v9, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$21800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v9

    if-eqz v9, :cond_23

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v3, :cond_23

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_14

    :cond_23
    const/4 v3, 0x0

    :goto_14
    sub-int v19, v19, v3

    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v9, v3, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    add-int v19, v19, v9

    iget v3, v3, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    add-int v19, v19, v3

    .line 6134
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-le v4, v3, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_24

    add-int v19, v19, v4

    :cond_24
    move/from16 v3, v19

    const/16 v9, 0xa

    .line 6137
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 6138
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_13

    :cond_25
    const/16 v9, 0xa

    .line 6139
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/16 v19, 0x2

    if-ne v1, v2, :cond_28

    .line 6140
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 6141
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iget v9, v6, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    sub-int v9, v14, v9

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_26

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_15

    :cond_26
    const/4 v0, 0x0

    :goto_15
    sub-int/2addr v9, v0

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isTopViewVisible()Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v21, 0x30

    goto :goto_16

    :cond_27
    const/16 v21, 0x0

    :goto_16
    add-int/lit8 v21, v21, 0x2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v9, v0

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 6142
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 6143
    :cond_28
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eq v1, v0, :cond_3c

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$22000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    if-ne v1, v0, :cond_29

    goto/16 :goto_1e

    .line 6147
    :cond_29
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne v1, v0, :cond_2a

    const/high16 v0, 0x40000000    # 2.0f

    .line 6148
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 6149
    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 6150
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    :cond_2a
    const/high16 v0, 0x40000000    # 2.0f

    .line 6151
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    if-ne v1, v2, :cond_2b

    .line 6152
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v3, v8, v15

    const/16 v9, 0x30

    .line 6153
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v3, v9

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 6154
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 6155
    :cond_2b
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 6156
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$22100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 6157
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v6, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    sub-int v3, v14, v3

    add-int/2addr v3, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v3, v9

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 6158
    :cond_2c
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_2e

    .line 6159
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 6160
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v3, 0x140

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v9, v6, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    sub-int v9, v14, v9

    add-int/2addr v9, v15

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v9, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v12

    add-int/2addr v9, v12

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 6162
    :cond_2d
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v6, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    sub-int v3, v14, v3

    add-int/2addr v3, v15

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v3, v9

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 6165
    :cond_2e
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 6167
    :cond_2f
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-ne v1, v2, :cond_37

    .line 6168
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 6169
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBannedInline()Z

    move-result v2

    if-eqz v2, :cond_30

    const/high16 v2, 0x40000000    # 2.0f

    .line 6170
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v2, -0x80000000

    invoke-static {v14, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1c

    .line 6173
    :cond_30
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/MentionsContainerView;->setIgnoreLayout(Z)V

    .line 6174
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->getCurrentLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    .line 6175
    instance-of v3, v2, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    if-eqz v3, :cond_33

    .line 6176
    check-cast v2, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getRowsCount(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x66

    .line 6178
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 6179
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v3

    if-eqz v3, :cond_31

    add-int/lit8 v2, v2, 0x22

    .line 6183
    :cond_31
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v14, v3

    if-eqz v2, :cond_32

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_17

    :cond_32
    const/4 v9, 0x0

    :goto_17
    add-int/2addr v3, v9

    int-to-float v2, v2

    const v9, 0x42f4cccc    # 122.399994f

    .line 6184
    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v3, v2

    const/4 v9, 0x0

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    goto :goto_1b

    .line 6186
    :cond_33
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getLastItemCount()I

    move-result v2

    .line 6188
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 6189
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v3

    if-eqz v3, :cond_34

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x24

    goto :goto_18

    :cond_34
    const/4 v3, 0x0

    :goto_18
    mul-int/lit8 v2, v2, 0x44

    add-int/2addr v3, v2

    goto :goto_19

    :cond_35
    mul-int/lit8 v2, v2, 0x24

    const/4 v3, 0x0

    add-int/2addr v2, v3

    move v3, v2

    .line 6197
    :goto_19
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v14, v2

    if-eqz v3, :cond_36

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_1a

    :cond_36
    const/4 v3, 0x0

    :goto_1a
    add-int/2addr v3, v2

    .line 6200
    :goto_1b
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 6201
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 6203
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/MentionsContainerView;->setIgnoreLayout(Z)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 6204
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 6206
    :goto_1c
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto/16 :goto_13

    .line 6207
    :cond_37
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v0

    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$23;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    if-ne v1, v0, :cond_39

    const/high16 v0, 0x40000000    # 2.0f

    .line 6208
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 6209
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    add-int/2addr v0, v14

    .line 6210
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-le v4, v3, :cond_38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_38

    add-int/2addr v0, v4

    .line 6212
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setKeyboardSize(I)V

    goto :goto_1d

    .line 6214
    :cond_38
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setKeyboardSize(I)V

    :goto_1d
    const/high16 v3, 0x40000000    # 2.0f

    .line 6216
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    :cond_39
    const/high16 v3, 0x40000000    # 2.0f

    .line 6217
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/ForwardingPreviewView;

    if-ne v1, v0, :cond_3b

    .line 6218
    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 6219
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v2, v8, v2

    .line 6220
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-le v4, v3, :cond_3a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_3a

    add-int/2addr v2, v4

    :cond_3a
    const/high16 v3, 0x40000000    # 2.0f

    .line 6223
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 6224
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    :cond_3b
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v12, v4

    move/from16 v4, p2

    move/from16 v19, v5

    move v5, v9

    .line 6226
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_20

    :cond_3c
    :goto_1e
    move v12, v4

    move/from16 v19, v5

    const/high16 v0, 0x40000000    # 2.0f

    .line 6144
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 6145
    iget v3, v6, Lorg/telegram/ui/ChatActivity$23;->inputFieldHeight:I

    sub-int v3, v8, v3

    iget-object v4, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$21200(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 6146
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_20

    :cond_3d
    :goto_1f
    move/from16 v19, v5

    move/from16 v12, v21

    :goto_20
    add-int/lit8 v5, v19, 0x1

    move/from16 v21, v12

    const/16 v9, 0x8

    const/4 v12, 0x0

    goto/16 :goto_11

    .line 6229
    :cond_3e
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$22200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 6230
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$20402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6231
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13900(Lorg/telegram/ui/ChatActivity;)V

    .line 6232
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 6233
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$22202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6234
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 6235
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$20402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6237
    :cond_3f
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$22300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_40

    .line 6238
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$22300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    .line 6239
    new-instance v2, Lorg/telegram/ui/ChatActivity$23$$ExternalSyntheticLambda0;

    invoke-direct {v2, v6, v0}, Lorg/telegram/ui/ChatActivity$23$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$23;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6240
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$22302(Lorg/telegram/ui/ChatActivity;I)I

    .line 6243
    :cond_40
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14000(Lorg/telegram/ui/ChatActivity;)V

    .line 6245
    iput v8, v6, Lorg/telegram/ui/ChatActivity$23;->lastHeight:I

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 6250
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6253
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 6418
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$24202(Lorg/telegram/ui/ChatActivity;I)I

    .line 6419
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13900(Lorg/telegram/ui/ChatActivity;)V

    .line 6420
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    return-void
.end method
