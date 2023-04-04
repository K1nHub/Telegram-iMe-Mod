.class public Lorg/telegram/ui/Cells/ShadowSectionCell;
.super Landroid/view/View;
.source "ShadowSectionCell.java"


# instance fields
.field private backgroundColor:I

.field private bottom:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private size:I

.field private top:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    .line 63
    iput-object p4, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 64
    iput p3, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->backgroundColor:I

    .line 65
    iput p2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->updateBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    .line 52
    iput-object p3, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 53
    iput p2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->updateBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/16 v0, 0xc

    .line 43
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private getBackgroundResId()I
    .locals 2

    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    if-eqz v1, :cond_0

    .line 99
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    return v0

    :cond_0
    if-eqz v0, :cond_1

    .line 101
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    return v0

    .line 102
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    if-eqz v0, :cond_2

    .line 103
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    return v0

    .line 105
    :cond_2
    sget v0, Lorg/telegram/messenger/R$drawable;->transparent:I

    return v0
.end method

.method private updateBackground()V
    .locals 4

    .line 78
    iget v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->backgroundColor:I

    const-string v1, "windowBackgroundGrayShadow"

    if-nez v0, :cond_1

    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->getBackgroundResId()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    if-nez v2, :cond_2

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->getBackgroundResId()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->backgroundColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 90
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/4 v0, 0x1

    .line 91
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 92
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 111
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

.method public setTopBottom(ZZ)V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    if-eq v0, p2, :cond_1

    .line 71
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    .line 72
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->updateBackground()V

    :cond_1
    return-void
.end method
