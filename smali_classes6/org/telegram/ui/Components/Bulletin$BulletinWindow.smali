.class public Lorg/telegram/ui/Components/Bulletin$BulletinWindow;
.super Landroid/app/Dialog;
.source "Bulletin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BulletinWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;
    }
.end annotation


# instance fields
.field private final container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

.field private params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public static synthetic $r8$lambda$S8yvl9_xVag8SbJ-Zj_m6_F43Po(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Bulletin$Delegate;)V
    .locals 5

    .line 1790
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1791
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;-><init>(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1795
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt p1, v2, :cond_1

    .line 1796
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1797
    new-instance v4, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 v4, 0x1e

    if-lt p1, v4, :cond_0

    const/16 v4, 0x700

    .line 1807
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x500

    .line 1809
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 1813
    :cond_1
    :goto_0
    new-instance v4, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;-><init>(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 1831
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 1832
    sget v0, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    const/4 v0, 0x0

    .line 1833
    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1834
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->params:Landroid/view/WindowManager$LayoutParams;

    .line 1835
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1836
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x33

    .line 1837
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 1838
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1839
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    .line 1840
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v4, 0x13

    if-lt p1, v4, :cond_2

    const/high16 v4, 0xc000000

    or-int/2addr v1, v4

    .line 1842
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1844
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-lt p1, v2, :cond_3

    const v2, -0x7ffeff00

    or-int/2addr v1, v2

    .line 1846
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1850
    :cond_3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_4

    .line 1852
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1854
    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1855
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v0, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-static {p2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;
    .locals 0

    .line 1778
    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1778
    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private applyInsets(Landroid/view/WindowInsets;)V
    .locals 4

    .line 1861
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    if-eqz v0, :cond_0

    .line 1863
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 1864
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1865
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 1866
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    .line 1862
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1798
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->applyInsets(Landroid/view/WindowInsets;)V

    .line 1799
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1800
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    .line 1801
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1

    .line 1803
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public static make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;
    .locals 2

    .line 1785
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    return-object p0
.end method

.method public static make(Landroid/content/Context;Lorg/telegram/ui/Components/Bulletin$Delegate;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;
    .locals 1

    .line 1781
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    return-object p0
.end method
