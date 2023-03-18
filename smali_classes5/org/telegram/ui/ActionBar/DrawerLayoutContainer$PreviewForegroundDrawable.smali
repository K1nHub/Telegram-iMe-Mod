.class Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerLayoutContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewForegroundDrawable"
.end annotation


# instance fields
.field private final bottomDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final topDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 831
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 832
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;->topDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x1

    .line 833
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const-string v3, "actionBarDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/4 v2, 0x6

    .line 834
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 835
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;->bottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    const-string v3, "divider"

    .line 836
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 837
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 842
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 844
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 845
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 846
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;->topDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 847
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 849
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 850
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;->bottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 852
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 857
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;->topDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;->bottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;->topDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$PreviewForegroundDrawable;->bottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
