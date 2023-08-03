.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;
.super Landroid/widget/FrameLayout;
.source "EmojiBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field private final backgroundBlurPaint:Landroid/graphics/Paint;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapMatrix:Landroid/graphics/Matrix;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private final handlePaint:Landroid/graphics/Paint;

.field private final handleRect:Landroid/graphics/RectF;

.field private final isActionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V
    .locals 7

    .line 917
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    .line 918
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 907
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    .line 908
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundBlurPaint:Landroid/graphics/Paint;

    .line 909
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handlePaint:Landroid/graphics/Paint;

    .line 914
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->isActionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 915
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handleRect:Landroid/graphics/RectF;

    return-void
.end method

.method private setupBlurBitmap()V
    .locals 4

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback2;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 932
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x10

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x10

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 933
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback2;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x8

    .line 934
    invoke-static {v0, v1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 935
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundBlurPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 938
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    .line 940
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 941
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 942
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const v1, 0x3f733333    # 0.95f

    goto :goto_0

    :cond_0
    const v1, 0x3f59999a    # 0.85f

    :goto_0
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    .line 984
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3602(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F

    const/4 v1, 0x0

    .line 985
    aget-object v3, v0, v1

    instance-of v3, v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    .line 986
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    aget-object v5, v0, v1

    check-cast v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->top()F

    move-result v5

    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    aget-object v7, v0, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v4, v6

    invoke-static {v6, v4, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v3, v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3616(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F

    .line 987
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 988
    aget-object v1, v0, v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->updateTops()V

    :cond_1
    const/4 v1, 0x1

    .line 991
    aget-object v3, v0, v1

    instance-of v3, v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    if-eqz v3, :cond_2

    .line 992
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    aget-object v5, v0, v1

    check-cast v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->top()F

    move-result v5

    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    aget-object v7, v0, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v4, v6

    invoke-static {v6, v4, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v3, v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3616(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F

    .line 993
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 994
    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->updateTops()V

    .line 997
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->isActionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    .line 998
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    invoke-static {v5, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    .line 999
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v8, v3

    int-to-float v3, v8

    invoke-virtual {v5, v6, v1, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1000
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    const/16 v6, 0xe

    if-eqz v3, :cond_4

    .line 1001
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 1002
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v3, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1003
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v3, v2, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1004
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1005
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v3, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    sub-float/2addr v4, v0

    .line 1007
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handleRect:Landroid/graphics/RectF;

    .line 1009
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    const/16 v3, 0x24

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    const v7, 0x411a8f5c    # 9.66f

    .line 1010
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    .line 1011
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v8, v3

    int-to-float v3, v8

    div-float/2addr v3, v6

    const v6, 0x415a8f5c    # 13.66f

    .line 1012
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    .line 1008
    invoke-virtual {v0, v2, v7, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1014
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handlePaint:Landroid/graphics/Paint;

    const v1, 0x51838383

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1015
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42a20000    # 81.0f

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1016
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handleRect:Landroid/graphics/RectF;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1017
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1018
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 1019
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1020
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 947
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 948
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 951
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundBlurPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 923
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 924
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->setupBlurBitmap()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 962
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 963
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v0, p2

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    const/16 v2, 0x15e

    .line 964
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f0ccccd    # 0.55f

    div-float/2addr v2, v3

    mul-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 970
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$2302(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F

    .line 971
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 972
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    move-result-object v0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 976
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1026
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 1029
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 956
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 957
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
