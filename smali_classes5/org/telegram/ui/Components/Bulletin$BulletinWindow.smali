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


# instance fields
.field private final container:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$S8yvl9_xVag8SbJ-Zj_m6_F43Po(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1681
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1682
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;-><init>(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1699
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt p1, v2, :cond_1

    .line 1700
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1701
    new-instance v4, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 v4, 0x1e

    if-lt p1, v4, :cond_0

    const/16 v4, 0x700

    .line 1711
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x500

    .line 1713
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 1717
    :cond_1
    :goto_0
    new-instance v4, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$2;-><init>(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;)V

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 1730
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1731
    sget v4, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    const/4 v4, 0x0

    .line 1732
    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1733
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1734
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v5, 0x33

    .line 1735
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    .line 1736
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1737
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x8

    .line 1738
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v6, 0x13

    if-lt p1, v6, :cond_2

    const/high16 v6, 0xc000000

    or-int/2addr v5, v6

    .line 1740
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1742
    :cond_2
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-lt p1, v2, :cond_3

    const v2, -0x7ffeff00

    or-int/2addr v2, v5

    .line 1744
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1748
    :cond_3
    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1749
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_4

    .line 1751
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1753
    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string/jumbo p1, "windowBackgroundGray"

    .line 1754
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v1, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1674
    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private applyInsets(Landroid/view/WindowInsets;)V
    .locals 4

    .line 1760
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1762
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 1763
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1764
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 1765
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    .line 1761
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1702
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->applyInsets(Landroid/view/WindowInsets;)V

    .line 1703
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1704
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    .line 1705
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1

    .line 1707
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public static make(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    .line 1676
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;-><init>(Landroid/content/Context;)V

    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Landroid/widget/FrameLayout;

    return-object p0
.end method
