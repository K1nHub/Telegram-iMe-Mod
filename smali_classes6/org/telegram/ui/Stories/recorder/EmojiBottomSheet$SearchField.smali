.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;
.super Landroid/widget/FrameLayout;
.source "EmojiBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchField"
.end annotation


# instance fields
.field private final box:Landroid/widget/FrameLayout;

.field private final categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

.field private final editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field public ignoreTextChange:Z

.field private final inputBox:Landroid/widget/FrameLayout;

.field private isprogress:Z

.field private onSearchQuery:Lorg/telegram/messenger/Utilities$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

.field private final searchImageView:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$Gk0WCk2_SCeaUVh3HmhE5tctuhQ(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XD03CSIbimCXcykR5zN5Ur_aTMY(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->lambda$new$1(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d2L-fj4srV2ELWlCr6Nxz5spRBE(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    .line 1621
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1622
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1624
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->box:Landroid/widget/FrameLayout;

    const/16 v1, 0x12

    .line 1625
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1626
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 1627
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 1628
    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    const/4 v3, -0x1

    const/16 v4, 0x24

    const/16 v5, 0x77

    const/16 v6, 0xa

    const/4 v7, 0x6

    const/16 v8, 0xa

    const/16 v9, 0x8

    .line 1635
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1637
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->inputBox:Landroid/widget/FrameLayout;

    const/16 v4, 0x28

    const/16 v5, 0x33

    const/16 v6, 0x26

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1638
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1640
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageView:Landroid/widget/ImageView;

    .line 1641
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1642
    new-instance v4, Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/SearchStateDrawable;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    const/4 v5, 0x0

    .line 1643
    invoke-virtual {v4, v5, v5}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(IZ)V

    .line 1644
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    invoke-static {v6, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/SearchStateDrawable;->setColor(I)V

    .line 1645
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x33

    const/16 v7, 0x24

    .line 1646
    invoke-static {v7, v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1648
    new-instance v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$2;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v7, 0x41800000    # 16.0f

    .line 1662
    invoke-virtual {v4, v2, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1663
    invoke-static {v6, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1664
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v6, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v6, 0x0

    .line 1665
    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1666
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1667
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1668
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 1669
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    const v2, 0x10000003

    .line 1670
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1671
    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    const-string v5, "Search"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1672
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1673
    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    const/16 v2, 0x14

    .line 1674
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 1675
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v2, -0x2

    .line 1676
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setTranslationY(F)V

    const/4 v5, -0x1

    const/16 v6, 0x28

    const/16 v7, 0x33

    const/16 v10, 0x1c

    const/4 v11, 0x0

    .line 1677
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1678
    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1702
    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$4;

    const/4 v8, 0x0

    move-object v5, v1

    move-object v6, p0

    move-object v7, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$4;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Landroid/content/Context;[Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    .line 1719
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    const/16 p2, 0x10

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setDontOccupyWidth(I)V

    .line 1720
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnScrollIntoOccupiedWidth(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1737
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnCategoryClick(Lorg/telegram/messenger/Utilities$Callback;)V

    const/4 v4, -0x1

    const/16 v5, 0x24

    const/16 v6, 0x33

    const/16 v7, 0x24

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 1764
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1766
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V
    .locals 0

    .line 1605
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear()V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V
    .locals 0

    .line 1605
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton()V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Ljava/lang/String;I)V
    .locals 0

    .line 1605
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 1605
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;
    .locals 0

    .line 1605
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    return-object p0
.end method

.method private clear()V
    .locals 2

    .line 1818
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1819
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    .line 1820
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 2

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1722
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 1724
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 1

    .line 1756
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1757
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    const/4 p1, -0x1

    .line 1758
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    goto :goto_0

    .line 1760
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 1761
    iget-object p1, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->emojis:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getCategoryIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    .line 1767
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1768
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear()V

    .line 1769
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    goto :goto_0

    .line 1770
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    if-nez p1, :cond_1

    .line 1771
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private search(Ljava/lang/String;I)V
    .locals 1

    .line 1812
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->onSearchQuery:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_0

    .line 1813
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateButton()V
    .locals 1

    const/4 v0, 0x0

    .line 1777
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton(Z)V

    return-void
.end method

.method private updateButton(Z)V
    .locals 2

    .line 1791
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->isprogress:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    .line 1792
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isCategoriesShown()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isScrolledIntoOccupiedWidth()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 1793
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    .line 1794
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->isprogress:Z

    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 1801
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x32

    .line 1802
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1800
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setOnSearchQuery(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1808
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->onSearchQuery:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public showProgress(Z)V
    .locals 1

    .line 1782
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->isprogress:Z

    if-eqz p1, :cond_0

    .line 1784
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1786
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton(Z)V

    :goto_0
    return-void
.end method
