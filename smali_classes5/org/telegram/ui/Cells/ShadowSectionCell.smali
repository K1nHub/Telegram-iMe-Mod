.class public Lorg/telegram/ui/Cells/ShadowSectionCell;
.super Landroid/view/View;
.source "ShadowSectionCell.java"


# instance fields
.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {v1, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p4

    invoke-static {p1, v0, p4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 57
    new-instance p4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p4, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 58
    new-instance p3, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v0, 0x0

    invoke-direct {p3, p4, p1, v0, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 60
    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iput p2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-static {p1, v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iput p2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/16 v0, 0xc

    .line 37
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
