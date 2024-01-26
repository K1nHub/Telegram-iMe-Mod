.class Lorg/telegram/ui/Components/ShareAlert$3;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
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

.field private lastMeasuredWidth:I

.field private lightStatusBar:Z

.field private final pinnedToTop:Lorg/telegram/ui/Components/AnimatedFloat;

.field private previousTopOffset:I

.field private rect1:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;

.field private toOffsetTop:I

.field private toScrollY:I

.field private topOffset:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 7

    .line 692
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 701
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 702
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->rect1:Landroid/graphics/RectF;

    .line 714
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$3$1;

    invoke-direct {v0, p0, p0}, Lorg/telegram/ui/Components/ShareAlert$3$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$3;Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    .line 1047
    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$200(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$7300(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v0, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->lightStatusBar:Z

    .line 1048
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->pinnedToTop:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ShareAlert$3;)I
    .locals 0

    .line 692
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->fromScrollY:I

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/ShareAlert$3;I)I
    .locals 0

    .line 692
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->fromScrollY:I

    return p1
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ShareAlert$3;)I
    .locals 0

    .line 692
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->toScrollY:I

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/ShareAlert$3;I)I
    .locals 0

    .line 692
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->toScrollY:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ShareAlert$3;)I
    .locals 0

    .line 692
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->topOffset:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ShareAlert$3;)I
    .locals 0

    .line 692
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->previousTopOffset:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ShareAlert$3;)I
    .locals 0

    .line 692
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->fromOffsetTop:I

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/ShareAlert$3;I)I
    .locals 0

    .line 692
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->fromOffsetTop:I

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ShareAlert$3;)I
    .locals 0

    .line 692
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->toOffsetTop:I

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Components/ShareAlert$3;I)I
    .locals 0

    .line 692
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->toOffsetTop:I

    return p1
.end method

.method static synthetic access$3512(Lorg/telegram/ui/Components/ShareAlert$3;I)I
    .locals 1

    .line 692
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->toOffsetTop:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->toOffsetTop:I

    return v0
.end method

.method static synthetic access$3520(Lorg/telegram/ui/Components/ShareAlert$3;I)I
    .locals 1

    .line 692
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->toOffsetTop:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->toOffsetTop:I

    return v0
.end method

.method private onMeasureInternal(II)V
    .locals 12

    .line 879
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 880
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 882
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$6800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 885
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

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

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 886
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 887
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    .line 888
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 891
    :cond_0
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 892
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    const/high16 v4, 0x40000000    # 2.0f

    if-ltz v2, :cond_4

    .line 893
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_2

    .line 895
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$6900(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v5

    goto :goto_0

    .line 898
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result p2

    :goto_0
    sub-int/2addr v1, p2

    .line 901
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 903
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v5

    .line 904
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$4100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 905
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$4100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 906
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$4700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 907
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$4700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 911
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    .line 912
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 913
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 914
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 915
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 919
    :cond_5
    :goto_2
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 921
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    :goto_3
    if-ge v5, v2, :cond_d

    .line 923
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 924
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v3, :cond_6

    goto/16 :goto_6

    .line 927
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 928
    sget-boolean v6, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v6, :cond_8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    .line 935
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

    .line 929
    :cond_8
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 930
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

    .line 932
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

    .line 938
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

    .line 1118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v3

    add-float/2addr v2, v3

    const/16 v3, 0x32

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1120
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 809
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setResizableView(Landroid/widget/FrameLayout;)V

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onAttach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 816
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1052
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$7400(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->topOffset:I

    add-int/2addr v0, v2

    .line 1055
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$7600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0xd

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->topOffset:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ShareAlert;->access$7502(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v2

    .line 1056
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/16 v4, 0x3c

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$7700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1060
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$7800(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v4, v7, :cond_1

    .line 1061
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    .line 1062
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->fullHeight:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$7900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    add-int/2addr v1, v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v1, v4, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v6

    .line 1063
    :goto_0
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$8000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    neg-int v4, v4

    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$3;->pinnedToTop:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    invoke-static {v2, v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    .line 1080
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$8100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v4, v6, v2, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1081
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$8100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_3

    const/16 v3, 0x24

    .line 1091
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 1092
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->rect1:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v3

    const/4 v8, 0x2

    div-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v9, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    div-int/2addr v10, v8

    int-to-float v3, v10

    const/4 v10, 0x4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v0, v10

    int-to-float v0, v0

    invoke-virtual {v4, v7, v9, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1093
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$200(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_scrollUp:I

    goto :goto_1

    :cond_2
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    :goto_1
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ShareAlert;->access$8200(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1094
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1095
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->rect1:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1098
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7

    .line 1099
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v0

    .line 1100
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->lightStatusBar:Z

    if-eqz v1, :cond_4

    int-to-float v1, v6

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    move v1, v6

    :goto_2
    and-int/lit16 v2, v0, 0x2000

    if-lez v2, :cond_5

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_3
    if-eq v1, v5, :cond_7

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x2000

    goto :goto_4

    :cond_6
    and-int/lit16 v0, v0, -0x2001

    .line 1108
    :goto_4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 1112
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1113
    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->topOffset:I

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->previousTopOffset:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1020
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->fullHeight:Z

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-nez v0, :cond_0

    .line 1021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert$3;->topOffset:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 1022
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    return v1

    .line 1026
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 1027
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    return v1

    .line 1031
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 945
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    .line 947
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    .line 949
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$7000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    .line 952
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v1

    .line 954
    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    :goto_1
    if-ge v2, p1, :cond_b

    .line 957
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 958
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    goto/16 :goto_7

    .line 961
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 963
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 964
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 969
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

    .line 986
    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_3

    :cond_4
    sub-int v8, p4, p2

    sub-int/2addr v8, v5

    .line 982
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ShareAlert;->access$7100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v9

    goto :goto_2

    :cond_5
    sub-int v8, p4, p2

    sub-int/2addr v8, v5

    .line 979
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

    .line 1000
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_6
    sub-int v7, p5, v1

    sub-int/2addr v7, p3

    sub-int/2addr v7, v6

    .line 997
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 991
    :cond_7
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    add-int/2addr v4, v7

    iget v7, p0, Lorg/telegram/ui/Components/ShareAlert$3;->topOffset:I

    add-int/2addr v4, v7

    goto :goto_5

    :cond_8
    sub-int v7, p5, v1

    .line 994
    iget v9, p0, Lorg/telegram/ui/Components/ShareAlert$3;->topOffset:I

    add-int/2addr v9, p3

    sub-int/2addr v7, v9

    sub-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v9

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_4
    sub-int v4, v7, v4

    .line 1003
    :goto_5
    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1004
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1005
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto :goto_6

    .line 1007
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

    .line 1010
    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1013
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    .line 1014
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$7200(Lorg/telegram/ui/Components/ShareAlert;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 823
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    .line 824
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 826
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 829
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 830
    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->lastMeasuredWidth:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 831
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$5800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/MessagePreviewView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$5800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/MessagePreviewView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MessagePreviewView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$5800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/MessagePreviewView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 834
    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->lastMeasuredWidth:I

    .line 838
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2400(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x1

    if-gtz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixGap(Z)V

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$5900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixGap(Z)V

    .line 840
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$6000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 841
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$6100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$6200(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 843
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 845
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    .line 847
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$2200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v4, 0x67

    .line 848
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

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$6300(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    add-int/2addr v5, v1

    .line 849
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$6400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v9, 0x8

    if-eq v1, v9, :cond_6

    .line 850
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ShareAlert;->access$6500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->getItemCount()I

    move-result v10

    sub-int/2addr v10, v3

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

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$6600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    add-int/2addr v1, v4

    if-le v1, v5, :cond_6

    .line 852
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$6400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    :cond_6
    if-ge v5, v0, :cond_7

    move v0, v2

    goto :goto_3

    .line 855
    :cond_7
    div-int/lit8 v1, v0, 0x5

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    :goto_3
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 856
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    if-eq v1, v0, :cond_8

    .line 857
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 858
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v2, v0, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 859
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$6400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v2, v0, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 860
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 863
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$6700(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    if-eq v1, v0, :cond_9

    .line 864
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$3800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 866
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    :cond_9
    if-lt v5, p2, :cond_a

    move v0, v3

    goto :goto_4

    :cond_a
    move v0, v2

    .line 868
    :goto_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->fullHeight:Z

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_5

    :cond_b
    sub-int v0, p2, v5

    .line 869
    :goto_5
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->topOffset:I

    .line 870
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$1800(Lorg/telegram/ui/Components/ShareAlert;Z)V

    .line 872
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    .line 874
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 875
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$3;->onMeasureInternal(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

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

    .line 1041
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$3;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1044
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
