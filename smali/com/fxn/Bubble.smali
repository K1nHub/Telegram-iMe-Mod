.class public final Lcom/fxn/Bubble;
.super Landroid/widget/FrameLayout;
.source "Bubble.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBubble.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Bubble.kt\ncom/fxn/Bubble\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,133:1\n1#2:134\n254#3,2:135\n254#3,2:137\n*S KotlinDebug\n*F\n+ 1 Bubble.kt\ncom/fxn/Bubble\n*L\n31#1:135,2\n112#1:137,2\n*E\n"
.end annotation


# instance fields
.field private badgeNotification:Landroid/view/View;

.field private container:Landroid/widget/LinearLayout;

.field private final dpAsPixels:I

.field private final dpAsPixelsIcons:I

.field private final dpAsPixelsVertical:I

.field private final dpAsicon_padding:I

.field private icon:Landroid/widget/ImageView;

.field private iconWrapper:Landroid/widget/FrameLayout;

.field private item:Lcom/fxn/parser/MenuItem;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fxn/parser/MenuItem;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    .line 23
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/fxn/Bubble;->icon:Landroid/widget/ImageView;

    .line 24
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/fxn/Bubble;->iconWrapper:Landroid/widget/FrameLayout;

    .line 25
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v1, -0x10000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    const/4 v1, 0x7

    .line 27
    invoke-static {v1, p1}, Lcom/fxn/util/UtilsKt;->dpToPx(ILandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 26
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v1, p1}, Lcom/fxn/util/UtilsKt;->dpToPx(ILandroid/content/Context;)I

    move-result v2

    invoke-static {v1, p1}, Lcom/fxn/util/UtilsKt;->dpToPx(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800035

    .line 29
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 28
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v0, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {v0}, Lcom/fxn/parser/MenuItem;->getBadgeVisible()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 135
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iput-object p2, p0, Lcom/fxn/Bubble;->badgeNotification:Landroid/view/View;

    .line 33
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/fxn/Bubble;->title:Landroid/widget/TextView;

    .line 34
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/fxn/Bubble;->container:Landroid/widget/LinearLayout;

    .line 36
    iget-object p2, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {p2}, Lcom/fxn/parser/MenuItem;->getHorizontal_padding()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/fxn/Bubble;->dpAsPixels:I

    .line 37
    iget-object v0, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {v0}, Lcom/fxn/parser/MenuItem;->getVertical_padding()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/fxn/Bubble;->dpAsPixelsVertical:I

    .line 38
    iget-object v3, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {v3}, Lcom/fxn/parser/MenuItem;->getIcon_size()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/fxn/Bubble;->dpAsPixelsIcons:I

    .line 39
    iget-object v4, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {v4}, Lcom/fxn/parser/MenuItem;->getIcon_padding()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/fxn/Bubble;->dpAsicon_padding:I

    .line 42
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0x11

    .line 47
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 42
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v5, p0, Lcom/fxn/Bubble;->container:Landroid/widget/LinearLayout;

    .line 52
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    invoke-virtual {v5, p2, v0, p2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 54
    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 51
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 57
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    iget-object p2, p0, Lcom/fxn/Bubble;->iconWrapper:Landroid/widget/FrameLayout;

    .line 62
    iget-object v0, p0, Lcom/fxn/Bubble;->icon:Landroid/widget/ImageView;

    .line 63
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    .line 64
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lcom/fxn/Bubble;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/fxn/Bubble;->badgeNotification:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 72
    iget-object p2, p0, Lcom/fxn/Bubble;->title:Landroid/widget/TextView;

    .line 74
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    invoke-virtual {p2, v4, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x1

    .line 77
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 73
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 81
    iget-object v0, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {v0}, Lcom/fxn/parser/MenuItem;->getTitle_size()F

    move-result v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 82
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {v0}, Lcom/fxn/parser/MenuItem;->getCustom_font()I

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {v0}, Lcom/fxn/parser/MenuItem;->getCustom_font()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not get typeface: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BubbleTabBar"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {p1}, Lcom/fxn/parser/MenuItem;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 92
    iget-object p1, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {p1}, Lcom/fxn/parser/MenuItem;->getEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fxn/Bubble;->setEnabled(Z)V

    .line 93
    iget-object p1, p0, Lcom/fxn/Bubble;->title:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {p2}, Lcom/fxn/parser/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/fxn/Bubble;->title:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {p2}, Lcom/fxn/parser/MenuItem;->getIconColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object p1, p0, Lcom/fxn/Bubble;->icon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {p2}, Lcom/fxn/parser/MenuItem;->getIcon()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/fxn/Bubble;->icon:Landroid/widget/ImageView;

    .line 98
    iget-object p2, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {p2}, Lcom/fxn/parser/MenuItem;->getIconColor()I

    move-result p2

    .line 99
    iget-object v0, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {v0}, Lcom/fxn/parser/MenuItem;->getDisabled_icon_color()I

    move-result v0

    .line 97
    invoke-static {p1, p2, v0}, Lcom/fxn/util/UtilsKt;->setColorStateListAnimator(Landroid/widget/ImageView;II)V

    goto :goto_2

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/fxn/Bubble;->icon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {p2}, Lcom/fxn/parser/MenuItem;->getDisabled_icon_color()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :goto_2
    iget-object p1, p0, Lcom/fxn/Bubble;->container:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/fxn/Bubble;->iconWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object p1, p0, Lcom/fxn/Bubble;->container:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/fxn/Bubble;->title:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object p1, p0, Lcom/fxn/Bubble;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getItem()Lcom/fxn/parser/MenuItem;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    return-object v0
.end method

.method public final setBadgeVisible(Z)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/fxn/Bubble;->badgeNotification:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 137
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/fxn/Bubble;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/fxn/Bubble;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public final setItem(Lcom/fxn/parser/MenuItem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/fxn/Bubble;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fxn/Bubble;->container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {v1}, Lcom/fxn/parser/MenuItem;->getTabBackground()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/fxn/util/UtilsKt;->expand(Landroid/widget/TextView;Landroid/widget/LinearLayout;I)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/fxn/Bubble;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fxn/Bubble;->container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/fxn/Bubble;->item:Lcom/fxn/parser/MenuItem;

    invoke-virtual {v1}, Lcom/fxn/parser/MenuItem;->getTabBackground()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/fxn/util/UtilsKt;->collapse(Landroid/widget/TextView;Landroid/widget/LinearLayout;I)V

    :goto_0
    return-void
.end method
