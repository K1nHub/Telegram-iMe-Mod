.class public final Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;
.super Landroid/widget/FrameLayout;
.source "ForwardCloudBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/dialog/ForwardCloudBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CustomContainerView"
.end annotation


# instance fields
.field private fullHeight:Z

.field private final rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;


# direct methods
.method public constructor <init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iput-object p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 283
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 287
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 288
    invoke-static {p1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    invoke-static {p1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result p1

    invoke-virtual {p0, v0, p2, p1, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getScrollOffsetY$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    iget-object v1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getScrollOffsetY$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v1

    iget-object v2, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v2}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 342
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0x24

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v4}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v4

    add-int/2addr v2, v4

    .line 345
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v4

    add-int/2addr v0, v4

    .line 347
    iget-boolean v4, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->fullHeight:Z

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    if-eqz v4, :cond_1

    .line 348
    iget-object v4, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v4}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v4

    add-int/2addr v4, v1

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v9, v8, 0x2

    if-ge v4, v9, :cond_0

    mul-int/lit8 v4, v8, 0x2

    sub-int/2addr v4, v1

    .line 349
    iget-object v9, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v9}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v9

    sub-int/2addr v4, v9

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr v2, v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 352
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v8, v8

    div-float/2addr v4, v8

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v4, v6, v4

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 354
    :goto_0
    iget-object v8, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v8}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v8

    add-int/2addr v8, v1

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v8, v9, :cond_2

    sub-int v8, v9, v1

    .line 355
    iget-object v10, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v10}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    :cond_2
    const/4 v8, 0x0

    .line 358
    :goto_1
    iget-object v9, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v9}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getShadowDrawable$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9, v5, v1, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 359
    iget-object v2, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v2}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getShadowDrawable$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpg-float v2, v4, v6

    if-nez v2, :cond_3

    const/4 v5, 0x1

    :cond_3
    const-string v2, "dialogBackground"

    if-nez v5, :cond_4

    .line 361
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    iget-object v5, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v6}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v6

    int-to-float v6, v6

    iget-object v9, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v9}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v11}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v11}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v11

    add-int/2addr v11, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v11, v1

    int-to-float v1, v11

    invoke-virtual {v5, v6, v9, v10, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 363
    iget-object v1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 365
    :cond_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 366
    iget-object v3, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v1, v9

    div-float/2addr v1, v5

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {v3, v4, v6, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 367
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const-string v1, "key_sheet_scrollUp"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez v8, :cond_5

    .line 370
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xff

    .line 371
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

    .line 372
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    int-to-float v2, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v8

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

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

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getScrollOffsetY$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getScrollOffsetY$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 295
    iget-object p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 298
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 328
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 329
    iget-object p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {p1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$updateLayout(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 306
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 307
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$setIgnoreLayout$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Z)V

    .line 308
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v3, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v3}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 309
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0, v4}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$setIgnoreLayout$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Z)V

    const/16 v0, 0x30

    .line 310
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v3, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v3}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v3

    const/16 v3, 0x3d

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget-object v5, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v5}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getListAdapter(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Lorg/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v1

    mul-int v3, v3, v5

    add-int/2addr v2, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v2, v0

    int-to-double v5, v2

    int-to-float v0, p2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v0, v3

    float-to-double v7, v0

    const-wide v9, 0x400999999999999aL    # 3.2

    mul-double v7, v7, v9

    cmpg-double v0, v5, v7

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :cond_0
    div-int/lit8 v0, p2, 0x5

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    if-eqz v0, :cond_1

    if-ge v2, p2, :cond_1

    sub-int v3, p2, v2

    sub-int/2addr v0, v3

    :cond_1
    if-nez v0, :cond_2

    .line 316
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    .line 318
    :cond_2
    iget-object v3, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v3}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getListView(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 319
    iget-object v3, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v3, v1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$setIgnoreLayout$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Z)V

    .line 320
    iget-object v3, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v3}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getListView(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v3

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v6, v0, v5, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 321
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0, v4}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$setIgnoreLayout$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Z)V

    :cond_3
    if-lt v2, p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 323
    :goto_1
    iput-boolean v1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->fullHeight:Z

    .line 324
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

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

    .line 302
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

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

    .line 333
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->access$getIgnoreLayout$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
