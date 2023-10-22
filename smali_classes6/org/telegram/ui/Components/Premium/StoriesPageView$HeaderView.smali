.class Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;
.super Landroid/widget/FrameLayout;
.source "StoriesPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/StoriesPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderView"
.end annotation


# instance fields
.field gradientTools:Lorg/telegram/ui/Components/GradientTools;

.field imageView:Lorg/telegram/ui/Components/BackupImageView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;Landroid/content/Context;)V
    .locals 8

    .line 188
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    .line 189
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x41

    .line 190
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x41

    const/16 v2, 0x41

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 194
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 195
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 196
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 198
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    const/high16 v1, 0x41a00000    # 20.0f

    .line 199
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "fonts/rmedium.ttf"

    .line 200
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 201
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/BaseListPageView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    sget p1, Lorg/telegram/messenger/R$string;->UpgradedStories:I

    const-string v1, "UpgradedStories"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v5, 0x6f

    .line 203
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iput-boolean p2, p1, Lorg/telegram/ui/Components/GradientTools;->isLinear:Z

    .line 206
    iput-boolean p2, p1, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 207
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    .line 208
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    .line 209
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 207
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 211
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p1, p1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 212
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p1, p1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 213
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p1, p1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const p2, 0x40533333    # 3.3f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 219
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x5

    .line 220
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 221
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(Landroid/graphics/RectF;)V

    const/4 v0, 0x7

    int-to-float v2, v0

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-float v4, v2

    mul-float/2addr v4, v3

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    add-float v5, v4, v3

    int-to-float v6, v1

    add-float v9, v4, v6

    sub-float/2addr v5, v6

    .line 230
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v10, v5, v9

    const/4 v11, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v12, v4, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x96

    .line 237
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
