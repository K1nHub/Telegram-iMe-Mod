.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;
.super Landroid/widget/FrameLayout;
.source "LimitReachedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoostFeatureCell"
.end annotation


# instance fields
.field public feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

.field private final imageView:Landroid/widget/ImageView;

.field public level:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

.field private final levelLayout:Landroid/widget/FrameLayout;

.field private final levelTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2093
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2094
    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2096
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2098
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->imageView:Landroid/widget/ImageView;

    .line 2099
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2100
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2101
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    or-int/lit8 v10, v4, 0x10

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/16 v13, 0x18

    const/4 v14, 0x0

    const/16 v8, 0x18

    const/16 v9, 0x18

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2103
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, 0x1

    .line 2104
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setWidthWrapContent(Z)V

    .line 2105
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v8, 0xe

    .line 2106
    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    const/4 v9, -0x2

    const/4 v10, -0x2

    .line 2107
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    or-int/lit8 v6, v6, 0x10

    const/16 v7, 0x1e

    const/16 v12, 0x3c

    if-eqz v11, :cond_2

    move v13, v7

    goto :goto_2

    :cond_2
    move v13, v12

    :goto_2
    const/4 v14, 0x0

    if-eqz v11, :cond_3

    move v7, v12

    :cond_3
    const/4 v15, 0x0

    move v11, v6

    move v12, v13

    move v13, v14

    move v14, v7

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2109
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v6, -0x1

    .line 2110
    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 2111
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setWidthWrapContent(Z)V

    const-string v4, "fonts/rmedium.ttf"

    .line 2112
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2113
    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 2114
    new-instance v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell$1;

    move-object/from16 v7, p1

    invoke-direct {v4, v0, v1, v7, v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;Landroid/content/Context;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelLayout:Landroid/widget/FrameLayout;

    .line 2144
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/16 v1, 0x11

    const/4 v2, -0x2

    .line 2145
    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2146
    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 2080
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 2207
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->level:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    if-eqz p2, :cond_0

    const/16 p2, 0x31

    goto :goto_0

    :cond_0
    const/16 p2, 0x24

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;)V
    .locals 9

    .line 2150
    instance-of v0, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2151
    check-cast p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->level:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    .line 2152
    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    .line 2154
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2155
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2156
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2157
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->level:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;->isFirst:Z

    if-eqz v1, :cond_0

    const-string v1, "BoostLevelUnlocks"

    goto :goto_0

    :cond_0
    const-string v1, "BoostLevel"

    :goto_0
    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;->lvl:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_3

    :cond_1
    if-eqz p1, :cond_a

    .line 2159
    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->level:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    .line 2160
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    .line 2161
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2162
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->iconResId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2163
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2164
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object v0, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKeyPlural:Ljava/lang/String;

    const/16 v1, 0x21

    const-string v4, "fonts/rmedium.ttf"

    const-string v5, ""

    if-eqz v0, :cond_6

    .line 2165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKeyPlural:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countPlural:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getStringParamForNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2166
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "LOC_ERR"

    .line 2167
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2168
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKeyPlural:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_other"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-nez p1, :cond_4

    move-object p1, v5

    .line 2174
    :cond_4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v6, "%d"

    .line 2175
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_5

    .line 2176
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2177
    new-instance p1, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget v8, v8, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countPlural:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2178
    new-instance v5, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {p1, v5, v3, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v6, 0x2

    .line 2179
    invoke-virtual {v0, v6, v1, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2181
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    .line 2183
    :cond_6
    iget p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKey:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move-object v5, p1

    .line 2187
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countValue:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 2189
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, "%s"

    .line 2190
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    .line 2191
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2192
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countValue:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2193
    new-instance v6, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v5, v6, v3, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v0, 0x2

    .line 2194
    invoke-virtual {p1, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2196
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    .line 2198
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 2201
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    :goto_3
    return-void
.end method
