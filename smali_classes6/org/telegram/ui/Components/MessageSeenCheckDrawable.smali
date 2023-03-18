.class public Lorg/telegram/ui/Components/MessageSeenCheckDrawable;
.super Ljava/lang/Object;
.source "MessageSeenCheckDrawable.java"


# instance fields
.field private colorKey:Ljava/lang/String;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private lastColor:I

.field private lastDensity:F

.field private lastSpanned:Ljava/lang/CharSequence;

.field private oy:F

.field private resId:I

.field private w:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->w:I

    iput v0, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->h:I

    const v0, 0x40951eb8    # 4.66f

    .line 29
    iput v0, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->oy:F

    .line 32
    iput p1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->resId:I

    .line 33
    iput-object p2, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->colorKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIF)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;-><init>(ILjava/lang/String;)V

    .line 44
    iput p3, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->w:I

    .line 45
    iput p4, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->h:I

    .line 46
    iput p5, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->oy:F

    return-void
.end method


# virtual methods
.method public getSpanned(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->lastSpanned:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    iget v1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->lastDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 51
    iget p1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->lastColor:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->colorKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 52
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->colorKey:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->lastColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 54
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->lastSpanned:Ljava/lang/CharSequence;

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "v "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 60
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    iput v1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->lastDensity:F

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->resId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 62
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->colorKey:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->lastColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 63
    iget p1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->w:I

    if-gtz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 64
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->h:I

    if-gtz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 65
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->oy:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 66
    iget-object v3, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    new-instance p1, Landroid/text/style/ImageSpan;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    invoke-direct {p1, v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v1, 0x1

    const/16 v3, 0x21

    invoke-virtual {v0, p1, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 68
    new-instance p1, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-direct {p1, v4}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 69
    iput-object v0, p0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->lastSpanned:Ljava/lang/CharSequence;

    return-object v0
.end method
