.class public Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatActivityFragmentView"
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

.field private x:F

.field private y:F


# direct methods
.method public static synthetic $r8$lambda$AGqrqc3bI3q7wucW5SjSbgvrfQo()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->lambda$onDetachedFromWindow$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$C8ofr3ON_23AJpTdlIX4ZGyKQtA(Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->lambda$onMeasure$1(I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 0

    .line 15436
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 15437
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    const/4 p2, 0x0

    .line 15548
    iput p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    .line 15553
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawTimeAfter:Ljava/util/ArrayList;

    .line 15554
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawNamesAfter:Ljava/util/ArrayList;

    .line 15555
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawCaptionAfter:Ljava/util/ArrayList;

    .line 15438
    new-instance p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;

    invoke-direct {p2, p0, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;Landroid/view/View;Lorg/telegram/ui/ChatActivity;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    return-void
.end method

.method static synthetic access$36100(Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;F)V
    .locals 0

    .line 15434
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->setNonNoveTranslation(F)V

    return-void
.end method

.method private drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 7

    .line 15862
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15863
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 15864
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    .line 15865
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15866
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v6, v6, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p1, v3, p2, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 15867
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p2, 0x1

    .line 15868
    invoke-virtual {p3, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 v0, 0x0

    if-nez p4, :cond_1

    .line 15870
    invoke-virtual {p3, p1, v2, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    goto :goto_2

    :cond_1
    if-ne p4, p2, :cond_2

    .line 15872
    invoke-virtual {p3, p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    goto :goto_2

    .line 15874
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

    .line 15876
    :goto_2
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 15877
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static synthetic lambda$onDetachedFromWindow$0()V
    .locals 1

    const/4 v0, 0x1

    .line 15640
    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->removeCurrent(Z)V

    return-void
.end method

.method private synthetic lambda$onMeasure$1(I)V
    .locals 2

    .line 16499
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$44200(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private setNonNoveTranslation(F)V
    .locals 2

    .line 16659
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 16660
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$44000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 16661
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 16662
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$27900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 16663
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$18902(Lorg/telegram/ui/ChatActivity;F)F

    .line 16664
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundTranslation(I)V

    .line 16665
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16666
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->onPanTranslationUpdate(F)V

    .line 16668
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16669
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/BluredView;->drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->onPanTranslationUpdate(F)V

    .line 16671
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setFragmentPanTranslationOffset(I)V

    .line 16672
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 15882
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkAnimation()V

    .line 15883
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$38700(Lorg/telegram/ui/ChatActivity;)V

    .line 15884
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$38800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15885
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v12}, Lorg/telegram/ui/ChatActivity;->access$38802(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 15886
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/ChatActivity;->updateMessagesVisiblePart(Z)V

    .line 15888
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v12, v12}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 15889
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$38900(Lorg/telegram/ui/ChatActivity;)V

    const/4 v1, -0x1

    .line 15891
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$37500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v14, 0x437f0000    # 255.0f

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 15892
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39100(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float v1, v1, v14

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3e4ccccd    # 0.2f

    .line 15893
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$39100(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    mul-float v4, v4, v3

    add-float/2addr v4, v2

    .line 15894
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

    .line 15896
    :goto_0
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 15897
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    const/4 v10, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15898
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

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

    .line 15901
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_2

    .line 15903
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    const/16 v4, 0x1e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

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

    .line 15905
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15906
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 15907
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 15908
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 15909
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 15911
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39200(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 15913
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_9

    .line 15914
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->panelAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 15915
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v2, "chat_emojiPanelBackground"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    .line 15916
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_7

    .line 15917
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    .line 15919
    :cond_7
    iget v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundColor:I

    if-eq v2, v1, :cond_8

    .line 15920
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    iput v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15922
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    .line 15923
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

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 15924
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setFragmentPanTranslationOffset(I)V

    .line 15927
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21600(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_b

    .line 15928
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21600(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 15929
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->sendAnimationData:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    if-eqz v4, :cond_a

    .line 15931
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 15932
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    .line 15933
    iget v6, v4, Lorg/telegram/messenger/MessageObject$SendAnimationData;->currentX:F

    iget v7, v4, Lorg/telegram/messenger/MessageObject$SendAnimationData;->currentY:F

    invoke-virtual {v11, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15934
    iget v6, v4, Lorg/telegram/messenger/MessageObject$SendAnimationData;->currentScale:F

    invoke-virtual {v11, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 15935
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v11, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15936
    iget v4, v4, Lorg/telegram/messenger/MessageObject$SendAnimationData;->timeAlpha:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setTimeAlpha(F)V

    .line 15937
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21600(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 15938
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 15941
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30300(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    .line 15942
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$39300(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    mul-float v2, v2, v14

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$39400(Lorg/telegram/ui/ChatActivity;)F

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

    .line 15943
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 15945
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v17, 0x14

    if-eqz v1, :cond_41

    .line 15946
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$30500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eq v1, v2, :cond_3f

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$35800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v1, v2, :cond_f

    goto/16 :goto_19

    .line 15951
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageView;

    const/4 v8, 0x2

    if-eqz v1, :cond_13

    .line 15952
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 15953
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39400(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_10

    .line 15954
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39400(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float v1, v1, v14

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 15956
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15957
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$39600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v2

    if-ne v1, v2, :cond_11

    .line 15958
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/2addr v1, v8

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float v2, v2, v1

    .line 15959
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$39700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v11, v1, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 15961
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 15962
    invoke-virtual {v11, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 15964
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39400(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_12

    .line 15965
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$39300(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    mul-float v2, v2, v14

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$39400(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float v3, v16, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 15966
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_12
    move/from16 v18, v15

    const/16 v20, 0x0

    goto/16 :goto_1a

    .line 15969
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21000(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v7, v1, v2

    .line 15971
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_14

    .line 15972
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    move-object v5, v1

    goto :goto_5

    :cond_14
    const/4 v5, 0x0

    .line 15977
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_38

    .line 15979
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 15984
    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_15

    .line 15985
    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 15987
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v19

    .line 15988
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v20

    move-object/from16 v8, v19

    move-object/from16 v21, v20

    const/4 v13, 0x0

    goto :goto_8

    .line 15993
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

    .line 15995
    :goto_8
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

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

    .line 15998
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v8, :cond_22

    .line 15999
    invoke-virtual {v8, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v1

    .line 16001
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v12, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v12, v12

    add-float/2addr v12, v1

    iget v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v12, v9

    .line 16002
    iget v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v9, v9

    iget v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v9, v14

    .line 16003
    iget v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v14, v14

    add-float/2addr v14, v1

    iget v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v14, v1

    .line 16004
    iget v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v1, v1

    iget v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v1, v10

    .line 16006
    iget-boolean v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v10, :cond_1a

    .line 16007
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v8

    add-float/2addr v9, v8

    .line 16008
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v8

    add-float/2addr v1, v8

    .line 16011
    :cond_1a
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$21000(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    cmpg-float v8, v9, v8

    if-gez v8, :cond_1b

    .line 16012
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$21000(Lorg/telegram/ui/ChatActivity;)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v8, v9

    .line 16015
    :cond_1b
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v8, v10

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-lez v8, :cond_1c

    .line 16016
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v1, v8

    int-to-float v1, v1

    .line 16020
    :cond_1c
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_9
    move-object/from16 v23, v2

    if-ge v10, v8, :cond_1f

    .line 16021
    iget-object v2, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 16022
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v24

    move/from16 v26, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v27

    cmp-long v3, v24, v27

    move/from16 v24, v4

    if-nez v3, :cond_1d

    const/4 v3, 0x0

    goto :goto_a

    :cond_1d
    const/4 v3, 0x1

    .line 16023
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

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

    .line 16029
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 16030
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

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

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

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

    .line 16031
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual {v11, v8, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16032
    iget-object v2, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    float-to-int v4, v12

    float-to-int v6, v9

    float-to-int v9, v14

    float-to-int v12, v1

    iget-boolean v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

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

    .line 16033
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

    .line 16037
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 16038
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 16041
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 16043
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 16044
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 16046
    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v4, :cond_24

    .line 16047
    invoke-virtual {v4}, Lorg/telegram/ui/Components/MentionsContainerView;->clipTop()F

    move-result v4

    add-float v7, v12, v4

    .line 16048
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/MentionsContainerView;->clipBottom()F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_f

    :cond_24
    move v7, v12

    :goto_f
    if-eqz v15, :cond_25

    .line 16051
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-nez v4, :cond_26

    .line 16052
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 16053
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 16054
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 16055
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 16059
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_27

    .line 16060
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

    .line 16062
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :goto_10
    if-eqz v15, :cond_28

    .line 16065
    invoke-virtual {v15, v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 16066
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30300(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setScrimReaction(Ljava/lang/String;)V

    :cond_28
    move/from16 v7, v30

    move/from16 v6, v31

    .line 16068
    invoke-virtual {v11, v8, v7, v10, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 16069
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v15, :cond_29

    if-nez v28, :cond_29

    .line 16070
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 16071
    invoke-virtual {v15, v11, v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    :cond_29
    move-object/from16 v5, v27

    .line 16073
    invoke-virtual {v5, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v15, :cond_2a

    .line 16074
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasOutboundsContent()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 16075
    invoke-virtual {v15, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    :cond_2a
    if-eqz v13, :cond_2b

    .line 16078
    invoke-virtual {v13, v11}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 16081
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v15, :cond_2c

    const/4 v1, 0x0

    .line 16084
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 v13, 0x0

    .line 16085
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

    .line 16089
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v2, :cond_35

    :cond_2e
    if-eqz v1, :cond_2f

    .line 16090
    iget-boolean v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v2, :cond_2f

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v2, :cond_33

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v2, :cond_33

    :cond_2f
    if-eqz v1, :cond_30

    .line 16091
    iget-boolean v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-eqz v2, :cond_31

    .line 16092
    :cond_30
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    if-eqz v1, :cond_32

    .line 16094
    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v2, :cond_33

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v2, :cond_33

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasNameLayout()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 16095
    :cond_32
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    if-eqz v1, :cond_34

    .line 16098
    iget v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_35

    .line 16099
    :cond_34
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16102
    :cond_35
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30300(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    if-eqz v15, :cond_37

    .line 16103
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$39300(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$39400(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 16104
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$39500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    move/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v25, v5

    move/from16 v5, v21

    move/from16 v31, v6

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-gez v22, :cond_37

    .line 16107
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAlpha()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$39400(Lorg/telegram/ui/ChatActivity;)F

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

    .line 16109
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_12

    :cond_36
    move v14, v7

    .line 16111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :goto_12
    move/from16 v3, v31

    .line 16113
    invoke-virtual {v11, v8, v14, v10, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 16114
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16115
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30300(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v11, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawScrimReaction(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 16116
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

    .line 16121
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3a

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_39

    .line 16124
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v4, 0x0

    invoke-direct {v0, v11, v12, v3, v4}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_39
    const/4 v4, 0x0

    .line 16126
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_15

    :cond_3a
    const/4 v4, 0x0

    .line 16128
    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3c

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_3b

    .line 16131
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v5, 0x1

    invoke-direct {v0, v11, v12, v3, v5}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 16133
    :cond_3b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 16135
    :cond_3c
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_40

    :goto_17
    if-ge v4, v1, :cond_3e

    .line 16138
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 16139
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

    .line 16142
    invoke-direct {v0, v11, v12, v2, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V

    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 16144
    :cond_3e
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1a

    :cond_3f
    :goto_19
    move/from16 v18, v15

    const/16 v20, 0x0

    .line 15947
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39400(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_40

    .line 15948
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$39300(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$39400(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float v3, v16, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 15949
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 16148
    :cond_40
    :goto_1a
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30300(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39400(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_42

    .line 16149
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$39300(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$39400(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float v16, v16, v3

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 16150
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1b

    :cond_41
    move/from16 v18, v15

    const/16 v20, 0x0

    .line 16154
    :cond_42
    :goto_1b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_43

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messageEnterTransitionContainer:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/MessageEnterTransitionContainer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 16155
    :cond_43
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_47

    .line 16156
    :cond_44
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_45

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 16157
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 16159
    :cond_45
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$35800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$35800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 16160
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$35800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 16162
    :cond_46
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_47

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 16163
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$30500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 16166
    :cond_47
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$37300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$37300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 16167
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$37300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 16169
    :cond_48
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$37400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 16170
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$37400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 16172
    :cond_49
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$35100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 16173
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$35100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 16175
    :cond_4a
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$35000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 16176
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$35000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 16178
    :cond_4b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4c

    .line 16179
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 16181
    :cond_4c
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4d

    .line 16182
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-super {v0, v11, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 16186
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36600(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-lez v1, :cond_50

    iget v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 16187
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v2, "windowBackgroundWhite"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    .line 16188
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_4e

    .line 16189
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    .line 16191
    :cond_4e
    iget v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundColor:I

    if-eq v2, v1, :cond_4f

    .line 16192
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    iput v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4f
    const/4 v2, 0x0

    .line 16194
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$36600(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 16196
    :cond_50
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->needDrawBottomPanel()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 16198
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_51

    .line 16199
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 16200
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    goto :goto_1c

    :cond_51
    const/high16 v2, 0x40000000    # 2.0f

    .line 16202
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 16203
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    .line 16205
    :goto_1c
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    if-nez v3, :cond_52

    const/4 v10, 0x0

    goto :goto_1d

    :cond_52
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)F

    move-result v10

    :goto_1d
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float v10, v10, v3

    float-to-int v3, v10

    sub-int/2addr v1, v3

    .line 16206
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v11, v1, v2, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->drawBottomPanel(Landroid/graphics/Canvas;III)V

    .line 16208
    :cond_53
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_54

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 16209
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v1, v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 16210
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39800(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 16211
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 16214
    :cond_54
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/EmojiAnimationsOverlay;->draw(Landroid/graphics/Canvas;)V

    if-ltz v18, :cond_55

    .line 16217
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 16219
    :cond_55
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$37500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 16220
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 16221
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$40000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 16222
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$40100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$40200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$39100(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v1, v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 16223
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$40300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 16224
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 16225
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_56
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 16684
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/ForwardingPreviewView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16685
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    return v1

    .line 16688
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 15650
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInBubbleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15653
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    goto :goto_2

    .line 15651
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    :goto_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    .line 15655
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$36900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v3

    if-ne v1, v3, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

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

    .line 15659
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$37002(Lorg/telegram/ui/ChatActivity;F)F

    .line 15660
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    .line 15661
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15662
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v3

    .line 15665
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15668
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->checkOnTap(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_7

    .line 15669
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 15672
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_a

    .line 15673
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15674
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 15675
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15676
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    return v3

    .line 15682
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 15683
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PinchToZoomHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 15686
    :cond_b
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->hasVisibleInstance()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 15687
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AvatarPreviewer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v3

    .line 15692
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->allowExpandPreviewByClick:Z

    if-eqz v0, :cond_14

    .line 15693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v5, -0x1

    if-nez v0, :cond_11

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 15696
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    new-array v0, v0, [I

    .line 15698
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$24700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 15699
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$24700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 15700
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

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$24700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    aget v10, v0, v3

    aget v11, v1, v3

    sub-int/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$24700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 15701
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

    .line 15705
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 15706
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v7

    .line 15707
    invoke-virtual {v7, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 15708
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

    .line 15709
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

    .line 15713
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$35800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 15714
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$35800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 15715
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

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$35800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    aget v0, v0, v3

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$35800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v8, v9, v10, v11, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 15716
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

    .line 15721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->x:F

    .line 15722
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->y:F

    .line 15723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressTime:J

    const/4 v0, 0x1

    goto :goto_6

    .line 15726
    :cond_10
    iput-wide v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressTime:J

    goto :goto_5

    .line 15728
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_13

    .line 15729
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->x:F

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->y:F

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

    iget-wide v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressTime:J

    sub-long/2addr v0, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v0, v7

    if-gtz v9, :cond_12

    .line 15730
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->expandPreviewFragment()V

    .line 15731
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 15733
    :cond_12
    iput-wide v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressTime:J

    goto :goto_5

    .line 15734
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 15735
    iput-wide v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressTime:J

    :cond_14
    :goto_5
    const/4 v0, 0x0

    .line 15739
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

    .line 15755
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messageEnterTransitionContainer:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/MessageEnterTransitionContainer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$24700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v0

    if-eq p2, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    if-eq p2, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eq p2, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eq p2, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-eq p2, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-ne p2, v0, :cond_1

    goto/16 :goto_e

    .line 15758
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 15761
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-ne p2, v0, :cond_3

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 15764
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-ne p2, v0, :cond_4

    return v2

    .line 15767
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne p2, v0, :cond_5

    return v2

    :cond_5
    const v0, 0x4000003

    .line 15770
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 15772
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_8

    .line 15773
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eq p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    if-eq p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$22500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

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

    .line 15775
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

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

    .line 15776
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

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
    if-nez v0, :cond_12

    return v1

    .line 15781
    :cond_c
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->blurFullyDrawing()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BluredView;->fullyDrawing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 15782
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eq p2, v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eq p2, v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$22500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    if-ne p2, v0, :cond_f

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v0, 0x1

    .line 15783
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredLinearLayout;

    move-result-object v3

    if-ne p2, v3, :cond_11

    const/4 v3, 0x1

    goto :goto_7

    :cond_11
    const/4 v3, 0x0

    :goto_7
    or-int/2addr v0, v3

    if-eqz v0, :cond_12

    return v1

    .line 15789
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 15791
    iget-wide v3, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_14

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_13
    const/4 v4, 0x1

    goto :goto_8

    :cond_14
    const/4 v3, 0x0

    :cond_15
    const/4 v4, 0x0

    .line 15792
    :goto_8
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-ne p2, v5, :cond_1a

    .line 15793
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15795
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_16

    .line 15796
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float v2, v2, v3

    goto :goto_9

    :cond_16
    const/4 v2, 0x0

    .line 15798
    :goto_9
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    neg-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_18

    .line 15799
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v0, v6, :cond_18

    .line 15800
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29400(Lorg/telegram/ui/ChatActivity;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->isDrawingReady()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 15801
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 15802
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 15803
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15804
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 15805
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 15806
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

    .line 15807
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 15808
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 15810
    :cond_17
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    goto :goto_a

    .line 15812
    :cond_18
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    .line 15813
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/16 v2, 0x3e8

    .line 15814
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 15815
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 15816
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_a

    :cond_19
    const/4 p3, 0x0

    .line 15821
    :goto_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d

    .line 15823
    :cond_1a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    if-eqz v4, :cond_1f

    .line 15824
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    if-ne p2, v4, :cond_1f

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v0, v6, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 15825
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15827
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_1b

    .line 15828
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    sub-float/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    mul-float v0, v0, v4

    goto :goto_b

    :cond_1b
    const/4 v0, 0x0

    .line 15830
    :goto_b
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    neg-float v4, v4

    sub-float/2addr v4, v0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    add-float/2addr v4, v0

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15831
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-super {p0, p1, v0, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 15832
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    if-eqz p3, :cond_1e

    .line 15833
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15834
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getX()F

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getTop()I

    move-result p4

    int-to-float p4, p4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    add-float/2addr p4, v0

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v3, :cond_1c

    .line 15836
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawRoundProgress(Landroid/graphics/Canvas;)V

    .line 15837
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 15838
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    goto :goto_c

    .line 15840
    :cond_1c
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOverlays(Landroid/graphics/Canvas;)V

    .line 15841
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDrawTime()Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 15842
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result p4

    invoke-virtual {p3, p1, p4, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    .line 15845
    :cond_1d
    :goto_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 15847
    :cond_1e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1f
    move p3, v5

    .line 15850
    :goto_d
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$37900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    if-ne p2, p4, :cond_22

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$38000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 15851
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$38500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$38100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p4

    if-nez p4, :cond_21

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$38200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p4

    float-to-int p4, p4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$38300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p4, v0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$38400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_20

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_20
    add-int/2addr v1, p4

    :cond_21
    invoke-interface {p2, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    :cond_22
    return p3

    :cond_23
    :goto_e
    return v1
.end method

.method protected drawList(Landroid/graphics/Canvas;Z)V
    .locals 7

    .line 15562
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21000(Lorg/telegram/ui/ChatActivity;)I

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

    .line 15564
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 15565
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 15566
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

    .line 15569
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

    .line 15573
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p2, :cond_2

    .line 15575
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$18900(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 15577
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15579
    :goto_1
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_5

    .line 15580
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v5, 0x1

    .line 15581
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->drawForBlur:Z

    .line 15582
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15583
    invoke-virtual {v4, p1, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 15585
    :cond_3
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 15586
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasOutboundsContent()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15587
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 15589
    :cond_4
    iput-boolean v1, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->drawForBlur:Z

    goto :goto_2

    .line 15590
    :cond_5
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_6

    .line 15591
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 15592
    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 15594
    :cond_6
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 15596
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

    .line 15607
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getListTranslationY()F
    .locals 1

    .line 15612
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    return v0
.end method

.method protected getNewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 16692
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16693
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getNewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getScrollOffset()I
    .locals 1

    .line 15602
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected isActionBarVisible()Z
    .locals 1

    .line 15858
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$38600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

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

    .line 15617
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 15618
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onAttach()V

    .line 15619
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAdjustPanLayoutHelper(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V

    .line 15620
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15621
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

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 15622
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$29600(Lorg/telegram/ui/ChatActivity;Z)Landroid/view/TextureView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$29400(Lorg/telegram/ui/ChatActivity;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    .line 15624
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15625
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatPullingDownDrawable;->onAttach()V

    .line 15627
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 15632
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 15633
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    .line 15634
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15635
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatPullingDownDrawable;->onDetach()V

    .line 15636
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$17602(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatPullingDownDrawable;)Lorg/telegram/ui/ChatPullingDownDrawable;

    .line 15638
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onDetachedFromWindow()V

    .line 15639
    sget-object v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda1;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const v0, 0x4000003

    .line 15744
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 15747
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->blurFullyDrawing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BluredView;->fullyDrawing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 15750
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 16518
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 16519
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v2

    .line 16522
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$36600(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    const/16 v4, 0x14

    if-lez v3, :cond_0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 16523
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$36600(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    goto :goto_0

    .line 16525
    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-gt v2, v3, :cond_1

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$42600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_26

    .line 16529
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_25

    .line 16530
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    goto/16 :goto_11

    .line 16533
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 16535
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 16536
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 16541
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    const/16 v11, 0x33

    :cond_3
    and-int/lit8 v12, v11, 0x7

    and-int/lit8 v11, v11, 0x70

    and-int/lit8 v12, v12, 0x7

    const/4 v14, 0x1

    const/4 v15, 0x2

    if-eq v12, v14, :cond_5

    const/4 v5, 0x5

    if-eq v12, v5, :cond_4

    .line 16558
    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_4
    sub-int v5, p4, v9

    .line 16554
    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    sub-int v5, p4, p2

    sub-int/2addr v5, v9

    .line 16551
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

    if-eq v11, v12, :cond_8

    if-eq v11, v4, :cond_7

    const/16 v12, 0x50

    if-eq v11, v12, :cond_6

    .line 16578
    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_6
    sub-int v11, p5, v3

    sub-int v11, v11, p3

    sub-int/2addr v11, v10

    .line 16575
    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 16563
    :cond_7
    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v11

    add-int/2addr v8, v11

    .line 16564
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$42700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    if-eq v7, v11, :cond_9

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$42800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_9

    .line 16565
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$42900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v8, v11

    .line 16566
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$43000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v11

    if-eqz v11, :cond_9

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v13, :cond_9

    .line 16567
    sget v11, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v8, v11

    goto :goto_5

    :cond_8
    sub-int v11, p5, v3

    sub-int v11, v11, p3

    sub-int/2addr v11, v10

    .line 16572
    div-int/2addr v11, v15

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_4
    sub-int v8, v11, v8

    .line 16581
    :cond_9
    :goto_5
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v11

    if-eq v7, v11, :cond_1e

    iget-object v11, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-ne v7, v11, :cond_a

    goto/16 :goto_a

    .line 16583
    :cond_a
    instance-of v11, v7, Lorg/telegram/ui/Components/HintView;

    if-nez v11, :cond_1e

    instance-of v11, v7, Lorg/telegram/ui/Components/ChecksHintView;

    if-eqz v11, :cond_b

    goto/16 :goto_a

    .line 16585
    :cond_b
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v11, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-ne v7, v12, :cond_d

    .line 16586
    iget-object v4, v11, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v4, v11

    sub-int/2addr v8, v4

    .line 16587
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v4, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v11, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_c
    :goto_6
    const/16 v4, 0x14

    goto/16 :goto_10

    .line 16588
    :cond_d
    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$24700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-eq v7, v11, :cond_22

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$35800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-eq v7, v11, :cond_22

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$30500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-ne v7, v11, :cond_e

    goto/16 :goto_d

    .line 16596
    :cond_e
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-ne v7, v11, :cond_10

    .line 16597
    iget v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    div-int/2addr v4, v15

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$43200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$43300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    div-int/2addr v11, v15

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    :goto_7
    sub-int/2addr v4, v11

    :goto_8
    sub-int/2addr v8, v4

    goto :goto_6

    .line 16598
    :cond_10
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v11, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v11, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 16599
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v4, :cond_12

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$43400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_9

    .line 16602
    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v8

    goto :goto_6

    .line 16600
    :cond_12
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

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

    .line 16604
    :cond_13
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$35100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v11

    if-eq v7, v11, :cond_21

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v11

    if-eq v7, v11, :cond_21

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$35900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v11

    if-eq v7, v11, :cond_21

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$35000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v11

    if-ne v7, v11, :cond_14

    goto/16 :goto_c

    .line 16606
    :cond_14
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    if-eq v7, v11, :cond_1f

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$37300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v11

    if-eq v7, v11, :cond_1f

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$33500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v11

    if-ne v7, v11, :cond_15

    goto/16 :goto_b

    .line 16617
    :cond_15
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$27900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-ne v7, v11, :cond_16

    .line 16618
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v11, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isTopViewVisible()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 16619
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto/16 :goto_8

    .line 16621
    :cond_16
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$43600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    if-ne v7, v4, :cond_18

    .line 16622
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$43700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v13, :cond_17

    .line 16623
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v8, v4

    .line 16625
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    goto/16 :goto_8

    .line 16626
    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    if-ne v7, v4, :cond_19

    .line 16627
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$43800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int v8, v4, v3

    const/16 v4, 0x14

    .line 16629
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    if-le v2, v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_c

    sub-int/2addr v8, v2

    goto/16 :goto_6

    .line 16632
    :cond_19
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v4

    if-eq v7, v4, :cond_1e

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v4

    if-eq v7, v4, :cond_1e

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$43900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v4

    if-ne v7, v4, :cond_1a

    goto :goto_a

    .line 16634
    :cond_1a
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v4

    if-ne v7, v4, :cond_1c

    sub-int/2addr v8, v3

    const/16 v4, 0x14

    .line 16636
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    if-le v2, v11, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_1b

    sub-int/2addr v8, v2

    .line 16639
    :cond_1b
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    goto/16 :goto_8

    .line 16640
    :cond_1c
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v11, :cond_1d

    iget-object v11, v11, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/Components/BotCommandsMenuContainer;

    if-ne v7, v11, :cond_1d

    .line 16641
    iget v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    goto/16 :goto_8

    .line 16642
    :cond_1d
    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/ForwardingPreviewView;

    if-ne v7, v4, :cond_c

    .line 16643
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_6

    :cond_1e
    :goto_a
    const/16 v4, 0x14

    goto :goto_f

    .line 16607
    :cond_1f
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v11, v4, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    sub-int/2addr v8, v11

    .line 16608
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$43500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 16610
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 16611
    iget v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    const/16 v11, 0x33

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v4, v11

    sub-int/2addr v8, v4

    :cond_20
    sub-int/2addr v8, v3

    const/16 v4, 0x14

    .line 16614
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    if-le v2, v11, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v11, :cond_24

    sub-int/2addr v8, v2

    goto :goto_10

    :cond_21
    :goto_c
    const/16 v4, 0x14

    .line 16605
    iget v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    goto :goto_e

    :cond_22
    :goto_d
    const/16 v4, 0x14

    .line 16589
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$43100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v11

    if-nez v11, :cond_24

    .line 16591
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 16592
    iget v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    goto :goto_e

    .line 16594
    :cond_23
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v11, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    :goto_e
    sub-int/2addr v8, v11

    goto :goto_10

    :goto_f
    const/4 v8, 0x0

    :cond_24
    :goto_10
    add-int/2addr v9, v5

    add-int/2addr v10, v8

    .line 16645
    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    :cond_25
    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 16648
    :cond_26
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)V

    .line 16649
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 16650
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 16652
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$23500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 16653
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$23800(Lorg/telegram/ui/ChatActivity;Z)V

    .line 16655
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 22

    move-object/from16 v6, p0

    .line 16232
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 16233
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 16235
    iget v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->lastWidth:I

    const/16 v9, 0x8

    const/16 v10, 0xa

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v0, v7, :cond_e

    .line 16236
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v11}, Lorg/telegram/ui/ChatActivity;->access$40402(Lorg/telegram/ui/ChatActivity;Z)Z

    move/from16 v13, p1

    .line 16237
    iput v13, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->lastWidth:I

    .line 16238
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_1

    .line 16239
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    .line 16240
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

    .line 16241
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, v7, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    if-le v1, v0, :cond_0

    .line 16242
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    xor-int/2addr v1, v11

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$40602(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_0

    .line 16244
    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v12}, Lorg/telegram/ui/ChatActivity;->access$40602(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_0

    .line 16247
    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v12}, Lorg/telegram/ui/ChatActivity;->access$40602(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 16249
    :goto_0
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const/16 v1, 0x28

    if-nez v0, :cond_3

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 16254
    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16255
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 16250
    :cond_3
    :goto_1
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16251
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x60

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 16259
    :cond_4
    :goto_2
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16260
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x42400000    # 48.0f

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->addFrameParams(Landroid/view/View;IIFFFF)V

    .line 16263
    :cond_5
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16264
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 16265
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16267
    :cond_6
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 16268
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_3

    .line 16271
    :cond_7
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 16272
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 16274
    :cond_8
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 16275
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16278
    :cond_9
    :goto_3
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 16279
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$40700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 16281
    :cond_b
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 16282
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    .line 16283
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$40700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_c

    .line 16284
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    .line 16285
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    if-eqz v0, :cond_d

    .line 16286
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(IZ)V

    .line 16289
    :cond_d
    :goto_5
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v12}, Lorg/telegram/ui/ChatActivity;->access$40402(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_6

    :cond_e
    move/from16 v13, p1

    .line 16292
    :goto_6
    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 16293
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    sub-int v14, v8, v0

    .line 16295
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 16296
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    .line 16297
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    sub-int/2addr v14, v15

    .line 16300
    :cond_f
    iget v0, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$41600(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16301
    iget v1, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$41600(Lorg/telegram/ui/ChatActivity;)I

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

    .line 16302
    :goto_7
    iget v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->lastHeight:I

    if-eq v2, v8, :cond_11

    .line 16303
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    .line 16305
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v5

    .line 16306
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$36600(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-lez v2, :cond_12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-gt v5, v2, :cond_12

    .line 16307
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$36600(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$41602(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_9

    .line 16309
    :cond_12
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-gt v5, v2, :cond_14

    .line 16310
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v3

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    :goto_8
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$41602(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_9

    .line 16312
    :cond_14
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v12}, Lorg/telegram/ui/ChatActivity;->access$41602(Lorg/telegram/ui/ChatActivity;I)I

    .line 16315
    :goto_9
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$41600(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setEmojiKeyboardHeight(I)V

    .line 16317
    iget v2, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$41600(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-lt v2, v3, :cond_15

    const/4 v2, 0x1

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    .line 16319
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

    .line 16320
    :goto_b
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_18

    .line 16321
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 16322
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_17

    .line 16323
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 16324
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 16325
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v17

    if-eqz v17, :cond_17

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 16326
    iget-object v4, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_17

    .line 16328
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    iget-object v4, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v11

    sub-float/2addr v4, v11

    iget-object v11, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v10, v11, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v10, v10

    sub-float/2addr v4, v10

    iget v10, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$41600(Lorg/telegram/ui/ChatActivity;)I

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

    .line 16329
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 16330
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

    .line 16340
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->runEmojiPanelAnimation()V

    .line 16343
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v10

    .line 16344
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v21, v5

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 16347
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 16348
    iput v12, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    :goto_e
    const/4 v11, 0x0

    goto :goto_10

    .line 16351
    :cond_1a
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    const/16 v0, 0x31

    .line 16352
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 16354
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 16355
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$41800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$41800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    .line 16356
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$41800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    goto :goto_f

    .line 16357
    :cond_1b
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$41900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$41900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1c

    .line 16358
    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$41900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    goto :goto_f

    .line 16360
    :cond_1c
    iput v12, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    goto :goto_e

    :cond_1d
    :goto_f
    move v11, v0

    .line 16367
    :goto_10
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iput v12, v0, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    .line 16368
    iput v12, v0, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    .line 16369
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 16370
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iput v15, v0, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    const/16 v1, 0xcb

    .line 16371
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    :cond_1e
    const/4 v5, 0x0

    :goto_11
    const/high16 v0, 0x40000000    # 2.0f

    if-ge v5, v10, :cond_40

    .line 16374
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 16376
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v9, :cond_3f

    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eq v1, v3, :cond_3f

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$42000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    if-ne v1, v2, :cond_1f

    goto/16 :goto_20

    .line 16379
    :cond_1f
    iget-object v2, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-ne v1, v2, :cond_20

    .line 16380
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 16381
    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 16382
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_20

    .line 16383
    :cond_20
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v2

    if-ne v1, v2, :cond_22

    .line 16385
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

    .line 16388
    :goto_12
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 16389
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 16390
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->measure(II)V

    :goto_13
    move v12, v4

    move/from16 v19, v5

    goto/16 :goto_21

    :cond_22
    move/from16 v4, v21

    .line 16391
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/16 v3, 0x15

    if-ne v1, v2, :cond_25

    .line 16392
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v19, v14, v11

    .line 16393
    iget-object v9, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$42100(Lorg/telegram/ui/ChatActivity;)Z

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

    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v9, v3, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    add-int v19, v19, v9

    iget v3, v3, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    add-int v19, v19, v3

    .line 16394
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

    .line 16397
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 16398
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_13

    :cond_25
    const/16 v9, 0xa

    .line 16399
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$27900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/16 v19, 0x2

    if-ne v1, v2, :cond_28

    .line 16400
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 16401
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iget v9, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    sub-int v9, v14, v9

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$42200(Lorg/telegram/ui/ChatActivity;)Z

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

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

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

    .line 16402
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 16403
    :cond_28
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eq v1, v0, :cond_3e

    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    if-ne v1, v0, :cond_29

    goto/16 :goto_1f

    .line 16407
    :cond_29
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne v1, v0, :cond_2a

    const/high16 v0, 0x40000000    # 2.0f

    .line 16408
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 16409
    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 16410
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    :cond_2a
    const/high16 v0, 0x40000000    # 2.0f

    .line 16411
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$34900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    if-ne v1, v2, :cond_2b

    .line 16412
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v3, v8, v15

    const/16 v9, 0x30

    .line 16413
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v3, v9

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 16414
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 16415
    :cond_2b
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 16416
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$42300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 16417
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    sub-int v3, v14, v3

    add-int/2addr v3, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v3, v9

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 16418
    :cond_2c
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_2e

    .line 16419
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 16420
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v3, 0x140

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v9, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

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

    .line 16422
    :cond_2d
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

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

    .line 16425
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

    .line 16427
    :cond_2f
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-ne v1, v2, :cond_39

    .line 16428
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 16429
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBannedInline()Z

    move-result v2

    if-eqz v2, :cond_30

    const/high16 v2, 0x40000000    # 2.0f

    .line 16430
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v2, -0x80000000

    invoke-static {v14, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 16433
    :cond_30
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/MentionsContainerView;->setIgnoreLayout(Z)V

    .line 16434
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->getCurrentLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    .line 16435
    instance-of v3, v2, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    if-eqz v3, :cond_34

    .line 16436
    check-cast v2, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getRowsCount(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x66

    .line 16438
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 16439
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v3

    if-nez v3, :cond_31

    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotWebViewSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    move-result-object v3

    if-eqz v3, :cond_32

    :cond_31
    add-int/lit8 v2, v2, 0x22

    .line 16443
    :cond_32
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v14, v3

    if-eqz v2, :cond_33

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_17

    :cond_33
    const/4 v9, 0x0

    :goto_17
    add-int/2addr v3, v9

    int-to-float v2, v2

    const v9, 0x42f4cccc    # 122.399994f

    .line 16444
    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v3, v2

    const/4 v9, 0x0

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    goto :goto_1c

    .line 16446
    :cond_34
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getLastItemCount()I

    move-result v2

    .line 16448
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 16449
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v3

    if-nez v3, :cond_36

    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotWebViewSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    move-result-object v3

    if-eqz v3, :cond_35

    goto :goto_18

    :cond_35
    const/4 v3, 0x0

    goto :goto_19

    :cond_36
    :goto_18
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x24

    :goto_19
    mul-int/lit8 v2, v2, 0x44

    add-int/2addr v3, v2

    goto :goto_1a

    :cond_37
    mul-int/lit8 v2, v2, 0x24

    const/4 v3, 0x0

    add-int/2addr v2, v3

    move v3, v2

    .line 16457
    :goto_1a
    iget-object v2, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v14, v2

    if-eqz v3, :cond_38

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_1b

    :cond_38
    const/4 v3, 0x0

    :goto_1b
    add-int/2addr v3, v2

    .line 16460
    :goto_1c
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 16461
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 16463
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/MentionsContainerView;->setIgnoreLayout(Z)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 16464
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 16466
    :goto_1d
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto/16 :goto_13

    .line 16467
    :cond_39
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    if-ne v1, v0, :cond_3b

    const/high16 v0, 0x40000000    # 2.0f

    .line 16468
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 16469
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    add-int/2addr v0, v14

    .line 16470
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-le v4, v3, :cond_3a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_3a

    add-int/2addr v0, v4

    .line 16472
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setKeyboardSize(I)V

    goto :goto_1e

    .line 16474
    :cond_3a
    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setKeyboardSize(I)V

    :goto_1e
    const/high16 v3, 0x40000000    # 2.0f

    .line 16476
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    :cond_3b
    const/high16 v3, 0x40000000    # 2.0f

    .line 16477
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/ForwardingPreviewView;

    if-ne v1, v0, :cond_3d

    .line 16478
    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 16479
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v2, v8, v2

    .line 16480
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-le v4, v3, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_3c

    add-int/2addr v2, v4

    :cond_3c
    const/high16 v3, 0x40000000    # 2.0f

    .line 16483
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 16484
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    :cond_3d
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v12, v4

    move/from16 v4, p2

    move/from16 v19, v5

    move v5, v9

    .line 16486
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_21

    :cond_3e
    :goto_1f
    move v12, v4

    move/from16 v19, v5

    const/high16 v0, 0x40000000    # 2.0f

    .line 16404
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 16405
    iget v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    sub-int v3, v8, v3

    iget-object v4, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$41600(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 16406
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_21

    :cond_3f
    :goto_20
    move/from16 v19, v5

    move/from16 v12, v21

    :goto_21
    add-int/lit8 v5, v19, 0x1

    move/from16 v21, v12

    const/16 v9, 0x8

    const/4 v12, 0x0

    goto/16 :goto_11

    .line 16489
    :cond_40
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$42400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 16490
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$40402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 16491
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)V

    .line 16492
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 16493
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$42402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 16494
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 16495
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$40402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 16497
    :cond_41
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$42500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_42

    .line 16498
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$42500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    .line 16499
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v6, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 16500
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$42502(Lorg/telegram/ui/ChatActivity;I)I

    .line 16503
    :cond_42
    iget-object v0, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10700(Lorg/telegram/ui/ChatActivity;)V

    .line 16505
    iput v8, v6, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->lastHeight:I

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 16510
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 16513
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 16677
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$44102(Lorg/telegram/ui/ChatActivity;I)I

    .line 16678
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)V

    .line 16679
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    return-void
.end method
