.class public Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;
.super Landroid/widget/FrameLayout;
.source "ActionBarPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GapView"
.end annotation


# instance fields
.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field shadowDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const-string v0, "actionBarDefaultSubmenuSeparator"

    .line 1072
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)V
    .locals 2

    .line 1076
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1077
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1079
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p1, v0, v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1080
    invoke-static {p3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1089
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1092
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1084
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method
