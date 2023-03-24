.class Lorg/telegram/ui/Components/ShareAlert$2;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private fromOffsetTop:I

.field private fromScrollY:I

.field private fullHeight:Z

.field private ignoreLayout:Z

.field private lightStatusBar:Z

.field private previousTopOffset:I

.field private rect1:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;

.field private toOffsetTop:I

.field private toScrollY:I

.field private topOffset:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 1

    .line 528
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 530
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 531
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->rect1:Landroid/graphics/RectF;

    .line 543
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$2$1;

    invoke-direct {v0, p0, p0}, Lorg/telegram/ui/Components/ShareAlert$2$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$2;Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    .line 867
    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "voipgroup_inviteMembersBackground"

    goto :goto_0

    :cond_0
    const-string v0, "dialogBackground"

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$6700(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v0, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->lightStatusBar:Z

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ShareAlert$2;)I
    .locals 0

    .line 528
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->fromScrollY:I

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/ShareAlert$2;I)I
    .locals 0

    .line 528
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->fromScrollY:I

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ShareAlert$2;)I
    .locals 0

    .line 528
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->toScrollY:I

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/ShareAlert$2;I)I
    .locals 0

    .line 528
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->toScrollY:I

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ShareAlert$2;)I
    .locals 0

    .line 528
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->topOffset:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ShareAlert$2;)I
    .locals 0

    .line 528
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->previousTopOffset:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ShareAlert$2;)I
    .locals 0

    .line 528
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->fromOffsetTop:I

    return p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/ShareAlert$2;I)I
    .locals 0

    .line 528
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->fromOffsetTop:I

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ShareAlert$2;)I
    .locals 0

    .line 528
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->toOffsetTop:I

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/ShareAlert$2;I)I
    .locals 0

    .line 528
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->toOffsetTop:I

    return p1
.end method

.method static synthetic access$3412(Lorg/telegram/ui/Components/ShareAlert$2;I)I
    .locals 1

    .line 528
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->toOffsetTop:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->toOffsetTop:I

    return v0
.end method

.method static synthetic access$3420(Lorg/telegram/ui/Components/ShareAlert$2;I)I
    .locals 1

    .line 528
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->toOffsetTop:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->toOffsetTop:I

    return v0
.end method

.method private onMeasureInternal(II)V
    .locals 12

    .line 699
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 700
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 702
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$6200(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 705
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isWaitingForKeyboardOpen()Z

    move-result v2

    const/16 v3, 0x14

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 706
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 707
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    .line 708
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 711
    :cond_0
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 712
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    const/high16 v4, 0x40000000    # 2.0f

    if-ltz v2, :cond_4

    .line 713
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_2

    .line 715
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$6300(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v5

    goto :goto_0

    .line 718
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result p2

    :goto_0
    sub-int/2addr v1, p2

    .line 721
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 723
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v5

    .line 724
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$4000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 725
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$4000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$4400(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 727
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$4400(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 731
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    .line 732
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 733
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 734
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4400(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 735
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4400(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 739
    :cond_5
    :goto_2
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 741
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    :goto_3
    if-ge v5, v2, :cond_d

    .line 743
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 744
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v3, :cond_6

    goto/16 :goto_6

    .line 747
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 748
    sget-boolean v6, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v6, :cond_8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    .line 755
    :cond_7
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 749
    :cond_8
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 750
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0xc8

    goto :goto_5

    :cond_9
    const/16 v8, 0x140

    :goto_5
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v9, v1, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 752
    :cond_a
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v8, v1, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/view/View;->measure(II)V

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v10, p2

    .line 758
    invoke-virtual/range {v6 .. v11}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_c
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_d
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 930
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 931
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3500(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$3500(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v3

    add-float/2addr v2, v3

    const/16 v3, 0x32

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 932
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 933
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 638
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setResizableView(Landroid/widget/FrameLayout;)V

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onAttach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 645
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 871
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$3500(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 873
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$6800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->topOffset:I

    add-int/2addr v0, v1

    .line 874
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$7000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0xd

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->topOffset:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$6902(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v1

    .line 875
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0x3c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$7100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    add-int/2addr v2, v3

    .line 878
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$7200(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v3, v7, :cond_1

    .line 879
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v3

    add-int/2addr v0, v3

    sub-int/2addr v2, v3

    .line 883
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->fullHeight:Z

    if-eqz v3, :cond_1

    .line 884
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$7300(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    add-int/2addr v3, v1

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v8, v7, 0x2

    if-ge v3, v8, :cond_0

    mul-int/lit8 v3, v7, 0x2

    sub-int/2addr v3, v1

    .line 885
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert;->access$7400(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v8

    sub-int/2addr v3, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v2, v3

    mul-int/2addr v3, v6

    int-to-float v3, v3

    .line 888
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v4, v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 890
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ShareAlert;->access$7500(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v7

    add-int/2addr v7, v1

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v7, v8, :cond_2

    sub-int v7, v8, v1

    .line 891
    iget-object v9, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ShareAlert;->access$7600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v9

    sub-int/2addr v7, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    move v7, v5

    .line 896
    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert;->access$7700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v5, v1, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 897
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$7700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v2, v3, v4

    if-eqz v2, :cond_4

    .line 900
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "voipgroup_inviteMembersBackground"

    goto :goto_2

    :cond_3
    const-string v8, "dialogBackground"

    :goto_2
    invoke-static {v4, v8}, Lorg/telegram/ui/Components/ShareAlert;->access$7800(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->rect1:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$7900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    int-to-float v4, v4

    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert;->access$8000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ShareAlert;->access$8100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ShareAlert;->access$8200(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v10

    add-int/2addr v10, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v10, v1

    int-to-float v1, v10

    invoke-virtual {v2, v4, v8, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 902
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->rect1:Landroid/graphics/RectF;

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    const/16 v1, 0x24

    .line 905
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 906
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->rect1:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/2addr v3, v6

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    div-int/2addr v8, v6

    int-to-float v1, v8

    const/4 v8, 0x4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 907
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "voipgroup_scrollUp"

    goto :goto_3

    :cond_5
    const-string v2, "key_sheet_scrollUp"

    :goto_3
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$8300(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->rect1:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 910
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 911
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v0

    .line 912
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->lightStatusBar:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    int-to-float v1, v7

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v5

    :goto_4
    and-int/lit16 v3, v0, 0x2000

    if-lez v3, :cond_7

    move v5, v2

    :cond_7
    if-eq v1, v5, :cond_9

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x2000

    goto :goto_5

    :cond_8
    and-int/lit16 v0, v0, -0x2001

    .line 920
    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 924
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 925
    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->topOffset:I

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->previousTopOffset:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 840
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->fullHeight:Z

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-nez v0, :cond_0

    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->topOffset:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 842
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    return v1

    .line 846
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$2700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 847
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    return v1

    .line 851
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 765
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    .line 767
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    .line 769
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$6400(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    .line 772
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v1

    .line 774
    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    :goto_1
    if-ge v2, p1, :cond_b

    .line 777
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 778
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    goto/16 :goto_7

    .line 781
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 783
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 784
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 789
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    const/16 v7, 0x33

    :cond_3
    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    const/4 v9, 0x5

    if-eq v8, v9, :cond_4

    .line 806
    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_3

    :cond_4
    sub-int v8, p4, p2

    sub-int/2addr v8, v5

    .line 802
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ShareAlert;->access$6500(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v9

    goto :goto_2

    :cond_5
    sub-int v8, p4, p2

    sub-int/2addr v8, v5

    .line 799
    div-int/lit8 v8, v8, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v8, v9

    :goto_3
    const/16 v9, 0x10

    if-eq v7, v9, :cond_8

    const/16 v9, 0x30

    if-eq v7, v9, :cond_7

    const/16 v9, 0x50

    if-eq v7, v9, :cond_6

    .line 820
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_6
    sub-int v7, p5, v1

    sub-int/2addr v7, p3

    sub-int/2addr v7, v6

    .line 817
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 811
    :cond_7
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    add-int/2addr v4, v7

    iget v7, p0, Lorg/telegram/ui/Components/ShareAlert$2;->topOffset:I

    add-int/2addr v4, v7

    goto :goto_5

    :cond_8
    sub-int v7, p5, v1

    .line 814
    iget v9, p0, Lorg/telegram/ui/Components/ShareAlert$2;->topOffset:I

    add-int/2addr v9, p3

    sub-int/2addr v7, v9

    sub-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v9

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_4
    sub-int v4, v7, v4

    .line 823
    :goto_5
    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 824
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 825
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto :goto_6

    .line 827
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    :goto_6
    sub-int/2addr v4, v7

    :cond_a
    add-int/2addr v5, v8

    add-int/2addr v6, v4

    .line 830
    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 833
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    .line 834
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$6600(Lorg/telegram/ui/Components/ShareAlert;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 652
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    .line 653
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 655
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 658
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2300(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixGap(Z)V

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$5300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixGap(Z)V

    .line 660
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$5400(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 661
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$5500(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$5600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    invoke-virtual {p0, v0, v1, v4, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 663
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 665
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    .line 667
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v4, 0x67

    .line 668
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v6, 0x30

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v1, v1

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v1, v7

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    const/4 v8, 0x2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    mul-int/2addr v1, v9

    add-int/2addr v5, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    add-int/2addr v5, v1

    .line 669
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$5800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v9, 0x8

    if-eq v1, v9, :cond_4

    .line 670
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ShareAlert;->access$5900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->getItemCount()I

    move-result v10

    sub-int/2addr v10, v2

    int-to-float v10, v10

    div-float/2addr v10, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    mul-int/2addr v7, v4

    add-int/2addr v1, v7

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$6000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    add-int/2addr v1, v4

    if-le v1, v5, :cond_4

    .line 672
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$5800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    :cond_4
    if-ge v5, v0, :cond_5

    move v0, v3

    goto :goto_3

    .line 675
    :cond_5
    div-int/lit8 v1, v0, 0x5

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    :goto_3
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 676
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 677
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 678
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v3, v0, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 679
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$5800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v3, v0, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 680
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 683
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$6100(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    if-eq v1, v0, :cond_7

    .line 684
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$3700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 686
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    :cond_7
    if-lt v5, p2, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v3

    .line 688
    :goto_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->fullHeight:Z

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_5

    :cond_9
    sub-int v0, p2, v5

    .line 689
    :goto_5
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->topOffset:I

    .line 690
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ShareAlert;->access$1700(Lorg/telegram/ui/Components/ShareAlert;Z)V

    .line 692
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 694
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 695
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$2;->onMeasureInternal(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 861
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 864
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
