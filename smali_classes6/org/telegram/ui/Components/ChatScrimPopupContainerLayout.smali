.class public Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;
.super Landroid/widget/LinearLayout;
.source "ChatScrimPopupContainerLayout.java"


# instance fields
.field private bottomView:Landroid/view/View;

.field private bottomViewReactionsOffset:F

.field private bottomViewYOffset:F

.field private expandSize:F

.field private maxHeight:I

.field private popupLayoutLeftOffset:F

.field private popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private progressToSwipeBack:F

.field private reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method public static synthetic $r8$lambda$3Sz0i_SjEoQGT59qJMZysWmRDCU(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;Lorg/telegram/ui/Components/PopupSwipeBackLayout;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->lambda$setPopupWindowLayout$1(Lorg/telegram/ui/Components/PopupSwipeBackLayout;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$jsw7WpmMiq_lgfYRjzCpwaV38X0(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->lambda$setPopupWindowLayout$0(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private synthetic lambda$setPopupWindowLayout$0(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getVisibleHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomViewYOffset:F

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updateBottomViewPosition()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setPopupWindowLayout$1(Lorg/telegram/ui/Components/PopupSwipeBackLayout;FF)V
    .locals 0

    .line 142
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 145
    :cond_0
    iput p3, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->progressToSwipeBack:F

    .line 146
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updatePopupTranslation()V

    return-void
.end method

.method private updateBottomViewPosition()V
    .locals 3

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 153
    iget v1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomViewYOffset:F

    iget v2, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->expandSize:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomViewReactionsOffset:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private updatePopupTranslation()V
    .locals 2

    .line 114
    iget v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->progressToSwipeBack:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupLayoutLeftOffset:F

    mul-float/2addr v1, v0

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyViewBottom(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 30
    iget v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->maxHeight:I

    if-eqz v0, :cond_0

    const/high16 p2, -0x80000000

    .line 31
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v1, :cond_13

    .line 34
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupLayoutLeftOffset:F

    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 39
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 40
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    if-le v4, v3, :cond_1

    .line 41
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 43
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 44
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 46
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 p1, 0x40000000    # 2.0f

    .line 47
    invoke-static {v3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 50
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTotalWidth()I

    move-result v4

    .line 51
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v5

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 52
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v6, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v6, v8

    const/16 v8, 0x24

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    if-le v6, v3, :cond_5

    move v6, v3

    .line 56
    :cond_5
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iput v10, v9, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    .line 57
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v9

    const/16 v10, 0x8

    if-eqz v9, :cond_6

    .line 58
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v4, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v4, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    goto :goto_2

    :cond_6
    if-le v4, v6, :cond_9

    .line 61
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    div-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x1

    .line 62
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    mul-int/2addr v9, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    if-gt v9, v4, :cond_8

    .line 63
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getItemsCount()I

    move-result v11

    if-ne v6, v11, :cond_7

    goto :goto_1

    :cond_7
    move v4, v9

    .line 66
    :cond_8
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 68
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    if-ne v4, v3, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_3

    .line 85
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupLayoutLeftOffset:F

    .line 86
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v4, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    .line 87
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 88
    iput v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupLayoutLeftOffset:F

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    .line 91
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updatePopupTranslation()V

    goto :goto_6

    .line 72
    :cond_c
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 73
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v4, v6

    goto :goto_4

    :cond_d
    move v4, v2

    .line 75
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v1, v4

    if-le v1, v3, :cond_e

    .line 76
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v3, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int v4, v3, v1

    :cond_e
    if-gez v4, :cond_f

    goto :goto_5

    :cond_f
    move v2, v4

    .line 81
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 82
    iput v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupLayoutLeftOffset:F

    .line 83
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updatePopupTranslation()V

    .line 93
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updatePopupTranslation()V

    goto :goto_7

    .line 98
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_8

    .line 103
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 106
    :cond_12
    :goto_8
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_9

    .line 108
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 110
    :goto_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->maxHeight:I

    return-void
.end method

.method public setExpandSize(F)V
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 163
    iput p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->expandSize:F

    .line 164
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updateBottomViewPosition()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 158
    iput p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->maxHeight:I

    return-void
.end method

.method public setPopupAlpha(F)V
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setPopupWindowLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 1

    .line 133
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 134
    new-instance v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setOnSizeChangedListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;)V

    .line 140
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->addOnSwipeBackProgressListener(Lorg/telegram/ui/Components/PopupSwipeBackLayout$OnSwipeBackProgressListener;)V

    :cond_0
    return-void
.end method

.method public setReactionsLayout(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setChatScrimView(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;)V

    :cond_0
    return-void
.end method

.method public setReactionsTransitionProgress(F)V
    .locals 3

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setReactionsTransitionProgress(F)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p1, v0

    add-float/2addr v1, v0

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomViewReactionsOffset:F

    .line 182
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updateBottomViewPosition()V

    .line 183
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 184
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method
