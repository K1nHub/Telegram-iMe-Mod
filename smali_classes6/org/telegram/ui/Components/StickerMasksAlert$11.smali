.class Lorg/telegram/ui/Components/StickerMasksAlert$11;
.super Landroid/widget/ImageView;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksAlert;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V
    .locals 0

    .line 798
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 4

    .line 801
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 802
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 803
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const p1, -0x914513

    goto :goto_0

    :cond_0
    const p1, 0x1effffff

    :goto_0
    const/16 v1, 0x1e

    .line 805
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_1
    return-void
.end method
