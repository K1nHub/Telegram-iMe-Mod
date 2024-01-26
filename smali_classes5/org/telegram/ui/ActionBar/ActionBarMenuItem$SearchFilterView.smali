.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;
.super Landroid/widget/FrameLayout;
.source "ActionBarMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchFilterView"
.end annotation


# instance fields
.field avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field closeIconView:Landroid/widget/ImageView;

.field data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

.field removeSelectionRunnable:Ljava/lang/Runnable;

.field protected final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field selectAnimator:Landroid/animation/ValueAnimator;

.field private selectedForDelete:Z

.field private selectedProgress:F

.field shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field thumbDrawable:Landroid/graphics/drawable/Drawable;

.field titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$A8Y57CEby4kiZAfquWMXzp8v1TE(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->lambda$setSelectedForDelete$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 2199
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2187
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->removeSelectionRunnable:Ljava/lang/Runnable;

    .line 2200
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2201
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x20

    .line 2202
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2204
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    .line 2205
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2206
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    const/16 v0, 0x18

    const/16 v1, 0x18

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2208
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    const/4 p1, 0x1

    const/high16 v0, 0x41600000    # 14.0f

    .line 2209
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2210
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v3, 0x26

    const/16 v5, 0x10

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x1c

    .line 2211
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const p2, -0xbb906c

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ShapeDrawable;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 2212
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2213
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->updateColors()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)V
    .locals 0

    .line 2174
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->updateColors()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)Z
    .locals 0

    .line 2174
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedForDelete:Z

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;F)F
    .locals 0

    .line 2174
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    return p1
.end method

.method private synthetic lambda$setSelectedForDelete$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2297
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    .line 2298
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->updateColors()V

    return-void
.end method

.method private updateColors()V
    .locals 8

    .line 2217
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v0

    .line 2218
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v2

    .line 2219
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v3

    .line 2220
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarIconBlue:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v5

    .line 2221
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    invoke-static {v0, v2, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2222
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    invoke-static {v3, v5, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2223
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2225
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2226
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    const v3, 0x3f51eb85    # 0.82f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2227
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2229
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2230
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2231
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2233
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2235
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    if-eqz v0, :cond_1

    iget v1, v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 2236
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->setData(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 2238
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public getFilter()Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;
    .locals 1

    .line 2314
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 2318
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public setData(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 10

    .line 2242
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 2243
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x20

    .line 2244
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget v2, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->iconResFilled:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2245
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2246
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarIconBlue:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2247
    iget v1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/16 v4, 0x10

    const/4 v6, 0x4

    if-ne v1, v6, :cond_2

    .line 2248
    iget-object p1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->chat:Lorg/telegram/tgnet/TLObject;

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_1

    .line 2249
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 2250
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    .line 2251
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sget v0, Lorg/telegram/messenger/R$drawable;->chats_saved:I

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object p1

    .line 2252
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 2253
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundSaved:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2254
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2255
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2257
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2258
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2260
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_4

    .line 2261
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2262
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2263
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    if-ne v1, p1, :cond_3

    .line 2266
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sget v0, Lorg/telegram/messenger/R$drawable;->chats_archive:I

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object p1

    .line 2267
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 2268
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchived:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2269
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2270
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2272
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2278
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2280
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2281
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->setSelectedForDelete(Z)V

    :goto_0
    return-void
.end method

.method public setSelectedForDelete(Z)V
    .locals 3

    .line 2286
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedForDelete:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2289
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->removeSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2290
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedForDelete:Z

    .line 2291
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 2292
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 2293
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2295
    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    aput v2, v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectAnimator:Landroid/animation/ValueAnimator;

    .line 2296
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2300
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2307
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2308
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedForDelete:Z

    if-eqz p1, :cond_3

    .line 2309
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->removeSelectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method
