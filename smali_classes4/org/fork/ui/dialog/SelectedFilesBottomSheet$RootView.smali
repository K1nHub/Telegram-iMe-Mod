.class final Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;
.super Landroid/widget/FrameLayout;
.source "SelectedFilesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/dialog/SelectedFilesBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootView"
.end annotation


# instance fields
.field private fullHeight:Z

.field private lastNotifyWidth:I

.field private final rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method public constructor <init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 278
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getScrollOffsetY$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingTop$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    iget-object v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getScrollOffsetY$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v1

    iget-object v2, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingTop$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 336
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v3}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingTop$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v3

    add-int/2addr v2, v3

    .line 339
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v3

    add-int/2addr v0, v3

    sub-int/2addr v2, v3

    .line 342
    iget-boolean v3, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->fullHeight:Z

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    if-eqz v3, :cond_1

    .line 343
    iget-object v3, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v3}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingTop$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v3

    add-int/2addr v3, v1

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v8, v7, 0x2

    if-ge v3, v8, :cond_0

    mul-int/lit8 v3, v7, 0x2

    sub-int/2addr v3, v1

    .line 344
    iget-object v8, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v8}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingTop$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v8

    sub-int/2addr v3, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v2, v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 347
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v5, v3

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 349
    :goto_0
    iget-object v7, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v7}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingTop$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v7

    add-int/2addr v7, v1

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v7, v8, :cond_2

    sub-int v7, v8, v1

    .line 350
    iget-object v9, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v9}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingTop$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v9

    sub-int/2addr v7, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :cond_2
    const/4 v7, 0x0

    .line 354
    :goto_1
    iget-object v8, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v8}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getShadowDrawable$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v4, v1, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 355
    iget-object v2, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getShadowDrawable$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpg-float v2, v3, v5

    if-nez v2, :cond_3

    const/4 v4, 0x1

    :cond_3
    const-string v2, "dialogBackground"

    if-nez v4, :cond_4

    .line 358
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v5, v2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-object v4, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v5}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingLeft$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v8}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingTop$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v10}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingLeft$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v10}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingTop$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v10

    add-int/2addr v10, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v10, v1

    int-to-float v1, v10

    invoke-virtual {v4, v5, v8, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 360
    iget-object v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->rect:Landroid/graphics/RectF;

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    const/16 v1, 0x24

    .line 363
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 364
    iget-object v3, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/2addr v4, v6

    int-to-float v4, v4

    int-to-float v5, v0

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

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 365
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    const-string v3, "key_sheet_scrollUp"

    invoke-static {v1, v3}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 366
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->rect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez v7, :cond_5

    .line 369
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0, v2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getThemedColor(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xff

    .line 370
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 371
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingLeft$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v0

    int-to-float v2, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v7

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingLeft$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getScrollOffsetY$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getScrollOffsetY$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 285
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    goto :goto_0

    .line 288
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 318
    iget v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    .line 319
    iput v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->lastNotifyWidth:I

    .line 320
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getListAdapter(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 322
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 323
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {p1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$updateLayout(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 294
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 295
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$setIgnoreLayout$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Z)V

    .line 296
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 297
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0, v2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$setIgnoreLayout$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Z)V

    .line 298
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0, v3}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$setItemWidth$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;I)V

    .line 299
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getFiles$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x3c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int v0, v0, v3

    const/16 v3, 0x6e

    .line 300
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingTop$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v0

    add-int/2addr v3, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    .line 301
    div-int/lit8 v4, p2, 0x5

    int-to-float v5, v4

    const v6, 0x404ccccd    # 3.2f

    mul-float v5, v5, v6

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    mul-int/lit8 v4, v4, 0x2

    :goto_0
    if-eqz v4, :cond_1

    if-ge v3, p2, :cond_1

    sub-int v0, p2, v3

    sub-int/2addr v4, v0

    :cond_1
    if-nez v4, :cond_2

    .line 306
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getBackgroundPaddingTop$p$s652855256(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)I

    move-result v4

    .line 308
    :cond_2
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getListView(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Lorg/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 309
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0, v1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$setIgnoreLayout$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Z)V

    .line 310
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getListView(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Lorg/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 311
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0, v2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$setIgnoreLayout$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Z)V

    :cond_3
    if-lt v3, p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 313
    :goto_1
    iput-boolean v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->fullHeight:Z

    .line 314
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

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

    .line 327
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$RootView;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getIgnoreLayout$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
