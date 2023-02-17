.class final Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;
.super Landroid/widget/FrameLayout;
.source "LNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LNavigation/LNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FragmentHolderView"
.end annotation


# instance fields
.field private backgroundColor:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private fragmentPanTranslationOffset:I

.field final synthetic this$0:Lorg/telegram/ui/LNavigation/LNavigation;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/content/Context;)V
    .locals 0

    .line 2238
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    .line 2239
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2235
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 2240
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 2232
    iget-object p0, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 2319
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2320
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawOverlay(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 2325
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 2326
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 2330
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2332
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p2, :cond_1

    goto :goto_1

    .line 2336
    :cond_1
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2337
    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getCastShadows()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2338
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 2339
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2345
    :goto_2
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 2347
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2348
    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v4}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2000(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 2349
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2350
    iget-object v5, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v5}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2000(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/graphics/Path;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v4, v7, v6, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2351
    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v4}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2000(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2353
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v3, :cond_6

    .line 2355
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    if-eqz v0, :cond_7

    .line 2357
    iget-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p3}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2100(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 2358
    iget-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p3}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2100(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v0}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2100(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p3, v1, v2, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2359
    iget-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p3}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2100(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return p2
.end method

.method public invalidateBackgroundColor()V
    .locals 2

    .line 2244
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2247
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const-string v1, "windowBackgroundWhite"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2245
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2307
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2308
    iget v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->fragmentPanTranslationOffset:I

    if-eqz v0, :cond_1

    const-string v0, "windowBackgroundWhite"

    .line 2309
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 2310
    iget v2, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->backgroundColor:I

    if-eq v2, v1, :cond_0

    .line 2311
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->backgroundColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/4 v3, 0x0

    .line 2313
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->fragmentPanTranslationOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 2280
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p4

    if-ge p2, p4, :cond_1

    .line 2281
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 2282
    instance-of p5, p4, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p5, :cond_0

    .line 2283
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p4, p1, p1, p3, p5}, Landroid/view/View;->layout(IIII)V

    .line 2284
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2287
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 2288
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 2289
    instance-of p4, p2, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez p4, :cond_3

    .line 2290
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2291
    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 2292
    iget p5, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p5

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p4, v2

    invoke-virtual {p2, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 2294
    :cond_2
    iget p5, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p5

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p4, p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p4, v2

    invoke-virtual {p2, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 2253
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2254
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 2257
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2258
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2259
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_0

    .line 2260
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    .line 2261
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2264
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2265
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2266
    instance-of v3, v5, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v3, :cond_3

    .line 2267
    invoke-virtual {v5}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move v8, p2

    .line 2268
    invoke-virtual/range {v4 .. v9}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v10

    .line 2270
    invoke-virtual/range {v4 .. v9}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2274
    :cond_4
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 2366
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v0, 0x0

    .line 2367
    iput v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->fragmentPanTranslationOffset:I

    .line 2368
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2370
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-nez p1, :cond_0

    .line 2373
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->invalidateBackgroundColor()V

    return-void

    .line 2377
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2379
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 2380
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setFragmentView(Landroid/view/View;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 2382
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 2383
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2385
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2387
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2200(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2388
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 2390
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2391
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 2393
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2395
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2398
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->invalidateBackgroundColor()V

    return-void
.end method

.method public setFragmentPanTranslationOffset(I)V
    .locals 0

    .line 2301
    iput p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->fragmentPanTranslationOffset:I

    .line 2302
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
