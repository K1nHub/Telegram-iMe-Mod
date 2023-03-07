.class Lorg/telegram/ui/PhotoPickerActivity$5;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "PhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field private lastItemSize:I

.field private lastNotifyWidth:I

.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method public static synthetic $r8$lambda$bYZ-uQLlaT3KObzHWjfPVvWUGbc(Lorg/telegram/ui/PhotoPickerActivity$5;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity$5;->lambda$onMeasure$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 1

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1400(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onMeasureInternal(II)V
    .locals 12

    .line 650
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 651
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 653
    invoke-virtual {p0, v6, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 655
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v1

    .line 656
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 v4, 0x14

    .line 657
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    if-gt v2, v5, :cond_1

    .line 658
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v5, v2, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v5, :cond_1

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 659
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v2

    sub-int/2addr v0, v2

    .line 660
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v9, v0

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, p2

    move v9, v0

    .line 663
    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-le v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 664
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->ignoreLayout:Z

    .line 665
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    .line 666
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->ignoreLayout:Z

    .line 669
    :cond_2
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2800(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 675
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_b

    .line 677
    invoke-virtual {p0, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 678
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    goto/16 :goto_5

    .line 681
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 682
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 689
    :cond_5
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 683
    :cond_6
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 684
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0xc8

    goto :goto_4

    :cond_7
    const/16 v2, 0x140

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v3, v9, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 686
    :cond_8
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v2, v9, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, v8

    .line 692
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_a
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_b
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9

    .line 699
    iget p1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->lastNotifyWidth:I

    sub-int/2addr p4, p2

    if-eq p1, p4, :cond_1

    .line 700
    iput p4, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->lastNotifyWidth:I

    .line 701
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1400(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 702
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1400(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 704
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 705
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 708
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    .line 710
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p2

    .line 711
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v2, v1, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_3

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-gt p2, v1, :cond_3

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 712
    :goto_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    :goto_2
    if-ge v0, p1, :cond_d

    .line 715
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 716
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    goto/16 :goto_8

    .line 719
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 721
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 722
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 727
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    const/16 v6, 0x33

    :cond_5
    and-int/lit8 v7, v6, 0x7

    and-int/lit8 v6, v6, 0x70

    and-int/lit8 v7, v7, 0x7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_6

    .line 744
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_4

    :cond_6
    sub-int v7, p4, v4

    .line 740
    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v8

    goto :goto_3

    :cond_7
    sub-int v7, p4, v4

    .line 737
    div-int/lit8 v7, v7, 0x2

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_3
    sub-int/2addr v7, v8

    :goto_4
    const/16 v8, 0x10

    if-eq v6, v8, :cond_a

    const/16 v8, 0x30

    if-eq v6, v8, :cond_9

    const/16 v8, 0x50

    if-eq v6, v8, :cond_8

    .line 758
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_8
    sub-int v6, p5, v1

    sub-int/2addr v6, p3

    sub-int/2addr v6, v5

    .line 755
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 749
    :cond_9
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_6

    :cond_a
    sub-int v6, p5, v1

    sub-int/2addr v6, p3

    sub-int/2addr v6, v5

    .line 752
    div-int/lit8 v6, v6, 0x2

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_5
    sub-int v3, v6, v3

    .line 761
    :goto_6
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v6, v6, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v6, :cond_c

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 762
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 763
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    goto :goto_7

    .line 765
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    :goto_7
    sub-int/2addr v3, v6

    :cond_c
    add-int/2addr v4, v7

    add-int/2addr v5, v3

    .line 768
    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 771
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 621
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 623
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 624
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$2602(Lorg/telegram/ui/PhotoPickerActivity;I)I

    goto :goto_0

    .line 626
    :cond_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v3, v1, :cond_1

    .line 627
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$2602(Lorg/telegram/ui/PhotoPickerActivity;I)I

    goto :goto_0

    .line 629
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$2602(Lorg/telegram/ui/PhotoPickerActivity;I)I

    :goto_0
    const/4 v1, 0x1

    .line 632
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->ignoreLayout:Z

    .line 633
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$2600(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v3

    div-int/2addr v0, v3

    invoke-static {v2, v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2702(Lorg/telegram/ui/PhotoPickerActivity;I)I

    .line 635
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->lastItemSize:I

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$2700(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2700(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->lastItemSize:I

    .line 637
    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoPickerActivity$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoPickerActivity$5;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 639
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1200(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1300(Lorg/telegram/ui/PhotoPickerActivity;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_1

    .line 642
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1300(Lorg/telegram/ui/PhotoPickerActivity;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$2700(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$2600(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v3

    mul-int v2, v2, v3

    const/4 v3, 0x5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v4}, Lorg/telegram/ui/PhotoPickerActivity;->access$2600(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v4

    sub-int/2addr v4, v1

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :goto_1
    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->ignoreLayout:Z

    const/high16 v0, 0x40000000    # 2.0f

    .line 646
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity$5;->onMeasureInternal(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 776
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 779
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
