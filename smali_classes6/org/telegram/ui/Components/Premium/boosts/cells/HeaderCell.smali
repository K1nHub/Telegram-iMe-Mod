.class public Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;
.super Landroid/widget/FrameLayout;
.source "HeaderCell.java"


# instance fields
.field private final iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field private final linearLayout:Landroid/widget/LinearLayout;

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

.field private final subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$fbQZBDireKGBks6oXazCSHkjuDo(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->lambda$setGiftLinkToUserText$0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 52
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 55
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    .line 56
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$1;

    invoke-direct {v5, v0, v1, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;Landroid/content/Context;I)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    .line 70
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v7, 0x32

    invoke-static {v7, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 71
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v9, v10, v11}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 73
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    iget-object v6, v5, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iput v8, v6, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    .line 75
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    iput v7, v6, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    .line 76
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    const/16 v6, 0xa0

    .line 77
    invoke-static {v6, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$2;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    .line 99
    iget-object v7, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iput-boolean v4, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useGradient:Z

    const/4 v8, 0x0

    .line 100
    iput-boolean v8, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    .line 101
    iput-boolean v4, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->forceMaxAlpha:Z

    .line 102
    iput-boolean v4, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    .line 103
    invoke-virtual {v7}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    .line 104
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    .line 106
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    const-string v7, "fonts/rmedium.ttf"

    .line 107
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v7, 0x41b00000    # 22.0f

    .line 108
    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v12, 0x1

    const/16 v13, 0x18

    const/4 v14, -0x8

    const/16 v15, 0x18

    const/16 v16, 0x0

    .line 112
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v5, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v9, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v5, v1, v9, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v1, 0x41700000    # 15.0f

    .line 115
    invoke-virtual {v5, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    .line 116
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 119
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v1, 0x2

    .line 120
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    const/4 v9, -0x1

    const/16 v11, 0x11

    const/16 v12, 0x18

    const/16 v13, 0x8

    const/16 v14, 0x18

    const/16 v15, 0x12

    .line 121
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/4 v1, -0x1

    const/16 v2, 0xea

    const/16 v4, 0x30

    .line 124
    invoke-static {v1, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;)Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    return-object p0
.end method

.method private static synthetic lambda$setGiftLinkToUserText$0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 173
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 181
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 182
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getTop()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    .line 183
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    sub-float/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setBoostViaGifsText()V
    .locals 5

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 131
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x6

    .line 141
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 142
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingBoostsViaGifts:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BoostingBoostsViaGifts"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingGetMoreBoost:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BoostingGetMoreBoost"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setGiftLinkText()V
    .locals 5

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingGiftLink:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BoostingGiftLink"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingLinkAllows:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BoostingLinkAllows"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGiftLinkToUserText(JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingGiftLink:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BoostingGiftLink"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    sget v0, Lorg/telegram/messenger/R$string;->BoostingLinkAllowsToUser:I

    const-string v1, "BoostingLinkAllowsToUser"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 168
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p3, 0x2

    .line 170
    invoke-static {p2, v1, p3, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 176
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string p3, "%1$s"

    invoke-static {p3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPaused(Z)V
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    return-void
.end method

.method public setUnclaimedText()V
    .locals 5

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingGiftLink:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BoostingGiftLink"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingLinkAllowsAnyone:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BoostingLinkAllowsAnyone"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUsedGiftLinkText()V
    .locals 5

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingUsedGiftLink:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BoostingUsedGiftLink"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingLinkUsed:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BoostingLinkUsed"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
