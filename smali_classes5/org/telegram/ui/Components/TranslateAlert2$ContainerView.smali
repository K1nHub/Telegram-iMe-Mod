.class Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;
.super Landroid/widget/FrameLayout;
.source "TranslateAlert2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TranslateAlert2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private bgPath:Landroid/graphics/Path;

.field private lightStatusBarFull:Ljava/lang/Boolean;

.field final synthetic this$0:Lorg/telegram/ui/Components/TranslateAlert2;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V
    .locals 1

    .line 943
    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    .line 944
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 950
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPath:Landroid/graphics/Path;

    .line 951
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPaint:Landroid/graphics/Paint;

    const-string v0, "dialogBackground"

    .line 946
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3400(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 947
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->applyDefaultShadow(Landroid/graphics/Paint;)V

    return-void
.end method

.method private updateLightStatusBar(Z)V
    .locals 2

    .line 971
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->lightStatusBarFull:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_3

    .line 972
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->lightStatusBarFull:Ljava/lang/Boolean;

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 975
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    const-string v1, "dialogBackground"

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3600(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 976
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    const-string v1, "actionBarDefault"

    .line 977
    invoke-static {p1, v1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3700(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result p1

    const/high16 v1, 0x33000000

    .line 976
    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    .line 973
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v1, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->access$000(Lorg/telegram/ui/Components/TranslateAlert2;)F

    move-result v0

    const/16 v1, 0xc

    .line 957
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    div-float v2, v0, v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    .line 958
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3500(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->setTranslationY(F)V

    .line 959
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->updateLightStatusBar(Z)V

    .line 961
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 962
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 963
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 964
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 966
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 991
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 992
    new-instance v0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView$1;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1002
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1003
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 986
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
