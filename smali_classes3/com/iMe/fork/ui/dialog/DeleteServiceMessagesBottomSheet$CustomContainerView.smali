.class public final Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;
.super Landroid/widget/FrameLayout;
.source "DeleteServiceMessagesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CustomContainerView"
.end annotation


# instance fields
.field private fullHeight:Z

.field private lastNotifyWidth:I

.field private final rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 685
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 690
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 691
    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingLeft$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 758
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 759
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v3}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v3

    add-int/2addr v2, v3

    .line 762
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v3

    add-int/2addr v0, v3

    sub-int/2addr v2, v3

    .line 765
    iget-boolean v3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->fullHeight:Z

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    if-eqz v3, :cond_2

    .line 766
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v3}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v3

    add-int/2addr v3, v1

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v8, v7, 0x2

    if-ge v3, v8, :cond_0

    mul-int/lit8 v3, v7, 0x2

    sub-int/2addr v3, v1

    .line 769
    iget-object v8, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v8}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v8

    sub-int/2addr v3, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v2, v3

    mul-int/2addr v3, v6

    int-to-float v3, v3

    .line 774
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v5, v3

    goto :goto_0

    :cond_0
    move v3, v5

    .line 776
    :goto_0
    iget-object v7, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v7}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v7

    add-int/2addr v7, v1

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v7, v8, :cond_1

    sub-int v7, v8, v1

    .line 779
    iget-object v9, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v9}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v9

    sub-int/2addr v7, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v4

    move v3, v5

    .line 783
    :goto_1
    iget-object v8, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v8}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getShadowDrawable$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v4, v1, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 784
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getShadowDrawable$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpg-float v2, v3, v5

    if-nez v2, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-nez v4, :cond_4

    .line 786
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 787
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v4}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingLeft$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v5}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v9}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingLeft$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 788
    iget-object v9, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v9}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v9

    add-int/2addr v9, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v9, v1

    int-to-float v1, v9

    .line 787
    invoke-virtual {v2, v4, v5, v8, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 790
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    const/16 v2, 0xc

    .line 791
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 792
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 793
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    .line 789
    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    const/16 v1, 0x24

    .line 796
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 797
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v1, v8

    div-float/2addr v1, v4

    const/4 v4, 0x4

    .line 798
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    .line 797
    invoke-virtual {v2, v3, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 799
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 801
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    .line 802
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 803
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    .line 804
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    .line 800
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez v7, :cond_5

    .line 807
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0xff

    .line 810
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 811
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 812
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 808
    invoke-static {v1, v2, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 814
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 816
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingLeft$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v0

    int-to-float v2, v0

    .line 817
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v7

    int-to-float v3, v0

    .line 818
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingLeft$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 819
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v0

    .line 820
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 815
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 698
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 701
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 741
    iget v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    .line 742
    iput v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->lastNotifyWidth:I

    .line 743
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getListAdapter(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 745
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 746
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$updateLayout(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 707
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 708
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Z)V

    .line 710
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingLeft$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v0

    .line 711
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 712
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v3}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingLeft$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v3

    const/4 v4, 0x0

    .line 709
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 715
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0, v4}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Z)V

    .line 716
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$setItemWidth$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;I)V

    const/16 v0, 0x76

    .line 718
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v2, Lcom/iMe/fork/enums/ServiceMessageType;->Companion:Lcom/iMe/fork/enums/ServiceMessageType$Companion;

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v3}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$isChannel$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/ServiceMessageType$Companion;->getValues(Z)[Lcom/iMe/fork/enums/ServiceMessageType;

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x64

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 720
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v2

    int-to-double v2, v0

    int-to-float v5, p2

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v7, 0x400999999999999aL    # 3.2

    mul-double/2addr v5, v7

    cmpg-double v2, v2, v5

    if-gez v2, :cond_0

    move v2, v4

    goto :goto_0

    .line 721
    :cond_0
    div-int/lit8 v2, p2, 0x5

    mul-int/lit8 v2, v2, 0x2

    :goto_0
    if-eqz v2, :cond_1

    if-ge v0, p2, :cond_1

    sub-int v3, p2, v0

    sub-int/2addr v2, v3

    :cond_1
    if-nez v2, :cond_2

    .line 726
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I

    move-result v2

    .line 728
    :cond_2
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v3}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getListView(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 729
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v3, v1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Z)V

    .line 730
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v3}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getListView(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object v3

    const/16 v5, 0xe

    invoke-virtual {v3, v4, v2, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 731
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v2, v4}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Z)V

    :cond_3
    if-lt v0, p2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    .line 733
    :goto_1
    iput-boolean v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->fullHeight:Z

    .line 736
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 734
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

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

    .line 750
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 753
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
