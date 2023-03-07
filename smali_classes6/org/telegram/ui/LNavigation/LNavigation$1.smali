.class Lorg/telegram/ui/LNavigation/LNavigation$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LNavigation/LNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LNavigation/LNavigation;

.field final synthetic val$touchSlop:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/LNavigation/LNavigation;I)V
    .locals 0

    .line 375
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    iput p2, p0, Lorg/telegram/ui/LNavigation/LNavigation$1;->val$touchSlop:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 451
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$300(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x44480000    # 800.0f

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_0

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    const/high16 p4, 0x41700000    # 15.0f

    div-float/2addr p3, p4

    const/4 p4, 0x1

    invoke-virtual {p1, p4, p2, p3}, Lorg/telegram/ui/LNavigation/LNavigation;->closeLastFragment(ZZF)V

    .line 454
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$1600(Lorg/telegram/ui/LNavigation/LNavigation;)V

    return p4

    :cond_0
    return p2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 383
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$000(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$100(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$200(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->val$touchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gez v2, :cond_0

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->val$touchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$300(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$400(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2, v3}, Lorg/telegram/ui/LNavigation/LNavigation;->access$102(Lorg/telegram/ui/LNavigation/LNavigation;Z)Z

    .line 387
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$100(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$400(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$400(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$400(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->isForegroundOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    const/4 v2, 0x0

    .line 388
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v6}, Lorg/telegram/ui/LNavigation/LNavigation;->access$400(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 389
    iget-object v6, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v6}, Lorg/telegram/ui/LNavigation/LNavigation;->access$400(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v6, :cond_5

    .line 391
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 392
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v9

    array-length v9, v9

    if-ne v9, v4, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eq v8, v9, :cond_5

    if-eqz v8, :cond_4

    new-array v9, v4, [I

    .line 395
    fill-array-data v9, :array_0

    goto :goto_2

    :cond_4
    new-array v9, v5, [I

    :goto_2
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    if-eqz v8, :cond_5

    .line 396
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_5

    const/16 v7, 0x9

    .line 398
    :try_start_0
    invoke-virtual {v6, v7, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$300(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-nez v2, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$500(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 407
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float v8, v8, v9

    cmpl-float v2, v2, v8

    if-ltz v2, :cond_b

    iget v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->val$touchSlop:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$600(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v9}, Lorg/telegram/ui/LNavigation/LNavigation;->access$700(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {v2, v8, v1, v9}, Lorg/telegram/ui/LNavigation/LNavigation;->access$800(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    .line 408
    invoke-virtual {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$900(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$1000(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    .line 409
    invoke-virtual {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v2

    if-nez v2, :cond_b

    .line 410
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2, v3}, Lorg/telegram/ui/LNavigation/LNavigation;->access$302(Lorg/telegram/ui/LNavigation/LNavigation;Z)Z

    .line 412
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$1200(Lorg/telegram/ui/LNavigation/LNavigation;)F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8, v7, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v8

    sub-float/2addr v4, v8

    invoke-static {v2, v4}, Lorg/telegram/ui/LNavigation/LNavigation;->access$1102(Lorg/telegram/ui/LNavigation/LNavigation;F)F

    .line 414
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 415
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 418
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$1300(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 419
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$1300(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 421
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 422
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBeginSlide()V

    .line 423
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 425
    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    .line 426
    invoke-virtual {v2, v5, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 427
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBeginSlide()V

    :cond_9
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 430
    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 431
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v5, v3, :cond_a

    .line 432
    iget-object v3, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 434
    :cond_a
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 436
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$1400(Lorg/telegram/ui/LNavigation/LNavigation;)V

    goto :goto_4

    .line 438
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2, v3}, Lorg/telegram/ui/LNavigation/LNavigation;->access$502(Lorg/telegram/ui/LNavigation/LNavigation;Z)Z

    .line 442
    :cond_c
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$300(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 443
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$1100(Lorg/telegram/ui/LNavigation/LNavigation;)F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    iget-object v4, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    invoke-static {v3, v7, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    invoke-static {v2, v1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$1202(Lorg/telegram/ui/LNavigation/LNavigation;F)F

    .line 444
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$1500(Lorg/telegram/ui/LNavigation/LNavigation;)V

    .line 446
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation$1;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$300(Lorg/telegram/ui/LNavigation/LNavigation;)Z

    move-result v1

    return v1

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method
