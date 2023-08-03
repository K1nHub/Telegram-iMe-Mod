.class public Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;
.super Landroid/view/View;
.source "ChatAttachAlertBotWebViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebProgressView"
.end annotation


# instance fields
.field private final LOAD_PROGRESS_PROPERTY:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/ui/Components/SimpleFloatPropertyCompat<",
            "Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;",
            ">;"
        }
    .end annotation
.end field

.field private bluePaint:Landroid/graphics/Paint;

.field private loadProgress:F

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public static synthetic $r8$lambda$j-O_PsiVwUIlCsAvpIsQGPWYN_w(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;)F
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->lambda$new$0(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;)F

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 991
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 983
    new-instance p1, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView$$ExternalSyntheticLambda0;

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView$$ExternalSyntheticLambda1;

    const-string v2, "loadProgress"

    invoke-direct {p1, v2, v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->LOAD_PROGRESS_PROPERTY:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    .line 985
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->bluePaint:Landroid/graphics/Paint;

    .line 992
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 994
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->bluePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 996
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->bluePaint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 997
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->bluePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;)F
    .locals 0

    .line 983
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->loadProgress:F

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1038
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1040
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->bluePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    .line 1041
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->loadProgress:F

    mul-float v5, v0, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->bluePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1006
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1008
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->LOAD_PROGRESS_PROPERTY:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43c80000    # 400.0f

    .line 1010
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1011
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 1009
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1016
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    .line 1019
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public setLoadProgress(F)V
    .locals 0

    .line 1032
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->loadProgress:F

    .line 1033
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLoadProgressAnimated(F)V
    .locals 2

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 1024
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgress(F)V

    return-void

    .line 1027
    :cond_0
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1028
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method
