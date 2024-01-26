.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;
.source "ActionBarMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReactionFilterView"
.end annotation


# instance fields
.field private attached:Z

.field private reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 2107
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 p1, 0x0

    .line 2109
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 2111
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 2153
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2154
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->attached:Z

    if-nez v0, :cond_1

    .line 2155
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_0

    .line 2156
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    :cond_0
    const/4 v0, 0x1

    .line 2158
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->attached:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 2164
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2165
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->attached:Z

    if-eqz v0, :cond_1

    .line 2166
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_0

    .line 2167
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    :cond_0
    const/4 v0, 0x0

    .line 2169
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->attached:Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2145
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_0

    .line 2146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float v4, v1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->draw(Landroid/graphics/Canvas;FFFFZ)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/16 p1, 0x31

    .line 2140
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 p2, 0x20

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setData(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 9

    .line 2115
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_reactionCount;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_reactionCount;-><init>()V

    const/4 v8, 0x1

    .line 2116
    iput v8, v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    .line 2117
    iget-object p1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->toTLReaction()Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object p1

    iput-object p1, v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 2119
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView$1;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;ILandroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    const v0, 0x423151ec    # 44.33f

    .line 2130
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 2131
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    const/16 v0, 0x1c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    .line 2132
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-boolean v8, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    .line 2133
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->attached:Z

    if-eqz v0, :cond_0

    .line 2134
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    :cond_0
    return-void
.end method
