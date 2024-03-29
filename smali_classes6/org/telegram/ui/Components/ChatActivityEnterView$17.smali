.class Lorg/telegram/ui/Components/ChatActivityEnterView$17;
.super Landroid/widget/FrameLayout;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final bottomGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final clipGradient:Landroid/graphics/LinearGradient;

.field private final clipMatrix:Landroid/graphics/Matrix;

.field private final gradientPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private final topGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 9

    .line 2661
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2682
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->gradientPaint:Landroid/graphics/Paint;

    .line 2683
    new-instance p2, Landroid/graphics/LinearGradient;

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    new-array v6, v0, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipGradient:Landroid/graphics/LinearGradient;

    .line 2684
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipMatrix:Landroid/graphics/Matrix;

    .line 2685
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x118

    move-object v1, v0

    move-object v2, p0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->topGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 2686
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->bottomGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 2688
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2689
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        -0x1
        0xffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2747
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v1, 0x1

    if-eqz v9, :cond_3

    .line 2694
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-ne v9, v2, :cond_3

    .line 2695
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->topGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->canScrollVertically(I)Z

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v10

    .line 2696
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->bottomGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->canScrollVertically(I)Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v11

    const/4 v12, 0x0

    cmpg-float v1, v10, v12

    if-gtz v1, :cond_0

    cmpg-float v1, v11, v12

    if-gtz v1, :cond_0

    .line 2698
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2700
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getX()F

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    const/4 v13, 0x5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getY()F

    move-result v1

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    const/4 v14, 0x2

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 2701
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 2702
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    cmpl-float v2, v10, v12

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    .line 2705
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 2706
    invoke-virtual {v6}, Landroid/widget/EditText;->getX()F

    move-result v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 2707
    invoke-virtual {v7}, Landroid/widget/EditText;->getY()F

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v15, v9, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    int-to-float v15, v15

    add-float/2addr v7, v15

    iget-object v9, v9, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 2708
    invoke-virtual {v9}, Landroid/widget/EditText;->getX()F

    move-result v9

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v15, v15, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v15}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v9, v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v9, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v15, v15, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 2709
    invoke-virtual {v15}, Landroid/widget/EditText;->getY()F

    move-result v15

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v14, v14, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    int-to-float v14, v14

    add-float/2addr v15, v14

    const/16 v14, 0xd

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v15, v14

    .line 2705
    invoke-virtual {v2, v6, v7, v9, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2711
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 2712
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v4

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2713
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipMatrix:Landroid/graphics/Matrix;

    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2714
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipGradient:Landroid/graphics/LinearGradient;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 2715
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->gradientPaint:Landroid/graphics/Paint;

    mul-float/2addr v10, v3

    float-to-int v7, v10

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2716
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    cmpl-float v2, v11, v12

    if-lez v2, :cond_2

    .line 2720
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 2721
    invoke-virtual {v6}, Landroid/widget/EditText;->getX()F

    move-result v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 2722
    invoke-virtual {v7}, Landroid/widget/EditText;->getY()F

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v9, v9, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v9}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    const/16 v9, 0xf

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v9, v9, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 2723
    invoke-virtual {v9}, Landroid/widget/EditText;->getX()F

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v10, v10, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v10}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v10, v10, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 2724
    invoke-virtual {v10}, Landroid/widget/EditText;->getY()F

    move-result v10

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v12, v12, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v12}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    const/4 v12, 0x2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    .line 2720
    invoke-virtual {v2, v6, v7, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2726
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 2727
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v4

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2728
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2729
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipMatrix:Landroid/graphics/Matrix;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2730
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipGradient:Landroid/graphics/LinearGradient;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->clipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 2731
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->gradientPaint:Landroid/graphics/Paint;

    mul-float/2addr v11, v3

    float-to-int v3, v11

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2732
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2735
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2736
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return v1

    .line 2739
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawRecordedAudioPanelInParent:Z

    if-eqz v3, :cond_4

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-ne v9, v2, :cond_4

    return v1

    .line 2742
    :cond_4
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2664
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2665
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2666
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p2

    const/16 p3, 0x30

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x60

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 2667
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageView;->getTop()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageView;->getBottom()I

    move-result p5

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2669
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 2670
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 2671
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 2672
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    if-eqz p3, :cond_2

    .line 2674
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p3, p4

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 2675
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 p3, 0x96

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2678
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$17;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2752
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
