.class public abstract Lorg/telegram/ui/Components/Bulletin$Layout;
.super Landroid/widget/FrameLayout;
.source "Bulletin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Layout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition;,
        Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;,
        Lorg/telegram/ui/Components/Bulletin$Layout$Transition;,
        Lorg/telegram/ui/Components/Bulletin$Layout$Callback;
    }
.end annotation


# static fields
.field public static final IN_OUT_OFFSET_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lorg/telegram/ui/Components/Bulletin$Layout;",
            ">;"
        }
    .end annotation
.end field

.field public static final IN_OUT_OFFSET_Y2:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lorg/telegram/ui/Components/Bulletin$Layout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field background:Landroid/graphics/drawable/Drawable;

.field protected bulletin:Lorg/telegram/ui/Components/Bulletin;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Bulletin$Layout$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private clipGradient:Landroid/graphics/LinearGradient;

.field private clipMatrix:Landroid/graphics/Matrix;

.field private clipPaint:Landroid/graphics/Paint;

.field delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

.field public inOutOffset:F

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private top:Z

.field public transitionRunningEnter:Z

.field public transitionRunningExit:Z

.field private wideScreenGravity:I

.field private wideScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 661
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$Layout$1;

    const-string v1, "offsetY"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Bulletin$Layout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/Bulletin$Layout;->IN_OUT_OFFSET_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 673
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$Layout$2;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Bulletin$Layout$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/Bulletin$Layout;->IN_OUT_OFFSET_Y2:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 648
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 627
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    const/4 p1, -0x2

    .line 641
    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenWidth:I

    const/4 p1, 0x1

    .line 643
    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenGravity:I

    .line 649
    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 p1, 0x30

    .line 650
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 651
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->setBackground(I)V

    .line 652
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updateSize()V

    const/16 p1, 0x8

    .line 653
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 p1, 0x0

    .line 654
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Bulletin$Layout;II)V
    .locals 0

    .line 625
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->setWideScreenParams(II)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Bulletin$Layout;Z)V
    .locals 0

    .line 625
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->setTop(Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Bulletin$Layout;)Z
    .locals 0

    .line 625
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Bulletin$Layout;Z)Z
    .locals 0

    .line 625
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->isNeedSwipeAlphaAnimation(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/Bulletin$Layout;F)V
    .locals 0

    .line 625
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->setInOutOffset(F)V

    return-void
.end method

.method private isNeedSwipeAlphaAnimation(Z)Z
    .locals 4

    .line 726
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->isWideScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenGravity:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x5

    if-eqz p1, :cond_3

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    if-eq v0, v3, :cond_4

    move v1, v2

    :cond_4
    :goto_0
    return v1
.end method

.method private isWideScreen()Z
    .locals 2

    .line 703
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setInOutOffset(F)V
    .locals 0

    .line 995
    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->inOutOffset:F

    .line 996
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updatePosition()V

    return-void
.end method

.method private setTop(Z)V
    .locals 0

    .line 693
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    .line 694
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updateSize()V

    return-void
.end method

.method private setWideScreenParams(II)V
    .locals 2

    .line 709
    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenWidth:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 710
    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenWidth:I

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 714
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenGravity:I

    if-eq v0, p2, :cond_1

    .line 715
    iput p2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenGravity:I

    goto :goto_1

    :cond_1
    move v1, p1

    .line 719
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->isWideScreen()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 720
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updateSize()V

    :cond_2
    return-void
.end method

.method private updateSize()V
    .locals 5

    .line 698
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->isWideScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenWidth:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v2, -0x2

    const/16 v3, 0x30

    const/16 v4, 0x50

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->wideScreenGravity:I

    or-int/2addr v3, v0

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;)V
    .locals 1

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createTransition()Lorg/telegram/ui/Components/Bulletin$Layout$Transition;
    .locals 1

    .line 867
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition;-><init>()V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1005
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-nez v1, :cond_0

    return-void

    .line 1008
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->background:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->isTransitionRunning()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz v1, :cond_7

    .line 1010
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    iget v2, v2, Lorg/telegram/ui/Components/Bulletin;->tag:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/Bulletin$Delegate;->getTopOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    sub-float v10, v1, v2

    .line 1011
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBottomOffset()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    sub-float v11, v1, v2

    .line 1012
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    iget v2, v2, Lorg/telegram/ui/Components/Bulletin;->tag:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/Bulletin$Delegate;->clipWithGradient(I)Z

    move-result v12

    .line 1013
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1014
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v1, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    if-eqz v12, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1016
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1018
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1019
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v12, :cond_6

    .line 1021
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_3

    .line 1022
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipPaint:Landroid/graphics/Paint;

    .line 1023
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1024
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    goto :goto_0

    :cond_2
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    :goto_0
    move-object/from16 v19, v3

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v1

    move/from16 v18, v2

    move-object/from16 v20, v3

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipGradient:Landroid/graphics/LinearGradient;

    .line 1025
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipMatrix:Landroid/graphics/Matrix;

    .line 1026
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1027
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1029
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1030
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1031
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipMatrix:Landroid/graphics/Matrix;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v2, :cond_4

    move v2, v10

    goto :goto_1

    :cond_4
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v11, v2

    :goto_1
    invoke-virtual {v1, v13, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1032
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1033
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 1034
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v5, v10, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 1036
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v11, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->clipPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1038
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1041
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1042
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    .line 1044
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1045
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_3
    return-void

    :array_0
    .array-data 4
        -0x1000000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x1000000
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected getAccessibilityText()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottomOffset()F
    .locals 2

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->access$800(Lorg/telegram/ui/Components/Bulletin;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->access$800(Lorg/telegram/ui/Components/Bulletin;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    iget v0, v0, Lorg/telegram/ui/Components/Bulletin;->lastBottomOffset:I

    :goto_0
    int-to-float v0, v0

    return v0

    .line 834
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v1, :cond_1

    iget v1, v1, Lorg/telegram/ui/Components/Bulletin;->tag:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Bulletin$Delegate;->getBottomOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method public getBulletin()Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 1050
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public isTransitionRunning()Z
    .locals 1

    .line 638
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->transitionRunningEnter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->transitionRunningExit:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAttach(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 3

    .line 753
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 755
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onAttach(Lorg/telegram/ui/Components/Bulletin$Layout;Lorg/telegram/ui/Components/Bulletin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 688
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 689
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updateSize()V

    return-void
.end method

.method protected onDetach()V
    .locals 3

    const/4 v0, 0x0

    .line 761
    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 763
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onDetach(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onEnterTransitionEnd()V
    .locals 3

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 791
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onEnterTransitionEnd(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onEnterTransitionStart()V
    .locals 3

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 784
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onEnterTransitionStart(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onExitTransitionEnd()V
    .locals 3

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 805
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onExitTransitionEnd(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onExitTransitionStart()V
    .locals 3

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 798
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onExitTransitionStart(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHide()V
    .locals 3

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 777
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onHide(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 3

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 770
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/ui/Components/Bulletin$Layout$Callback;->onShow(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;)V
    .locals 1

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setBackground(I)V
    .locals 1

    const/16 v0, 0xa

    .line 658
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->background:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public updatePosition()V
    .locals 3

    .line 820
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 821
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v2, :cond_1

    .line 822
    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v2, :cond_0

    iget v2, v2, Lorg/telegram/ui/Components/Bulletin;->tag:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/Bulletin$Delegate;->getTopOffset(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_1

    .line 824
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBottomOffset()F

    move-result v0

    add-float/2addr v1, v0

    :cond_2
    :goto_1
    neg-float v0, v1

    .line 827
    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->inOutOffset:F

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
