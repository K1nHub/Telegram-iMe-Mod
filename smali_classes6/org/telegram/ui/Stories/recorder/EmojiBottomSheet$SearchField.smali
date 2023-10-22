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

.field private final clear:Landroid/widget/ImageView;

.field private clearVisible:Z

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

.method public static synthetic $r8$lambda$lIhByHsTV4jwG4D4-AURdU7OJoA(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 2163
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2164
    iput-object v8, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2166
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->box:Landroid/widget/FrameLayout;

    const/16 v0, 0x12

    .line 2167
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v10, 0x1

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2169
    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 2170
    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$1;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    const/4 v11, -0x1

    const/16 v12, 0x24

    const/16 v13, 0x77

    const/16 v14, 0xa

    const/4 v15, 0x6

    const/16 v16, 0xa

    const/16 v17, 0x8

    .line 2177
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2179
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->inputBox:Landroid/widget/FrameLayout;

    const/16 v12, 0x28

    const/16 v13, 0x33

    const/16 v14, 0x26

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2180
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2182
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageView:Landroid/widget/ImageView;

    .line 2183
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2184
    new-instance v1, Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/SearchStateDrawable;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    const/4 v2, 0x0

    .line 2185
    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(IZ)V

    .line 2186
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/SearchStateDrawable;->setColor(I)V

    .line 2187
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x33

    const/16 v12, 0x24

    .line 2188
    invoke-static {v12, v12, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2190
    new-instance v13, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$2;

    invoke-direct {v13, v6, v7}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Landroid/content/Context;)V

    iput-object v13, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v1, 0x41800000    # 16.0f

    .line 2211
    invoke-virtual {v13, v10, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 2212
    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2213
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v1, 0x0

    .line 2214
    invoke-virtual {v13, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2215
    invoke-virtual {v13, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2216
    invoke-virtual {v13, v10}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2217
    invoke-virtual {v13, v10}, Landroid/widget/EditText;->setLines(I)V

    .line 2218
    invoke-virtual {v13, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    const v1, 0x10000003

    .line 2219
    invoke-virtual {v13, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2220
    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    const-string v2, "Search"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2221
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2222
    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    const/16 v1, 0x14

    .line 2223
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 2224
    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v1, -0x2

    .line 2225
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13, v1}, Landroid/widget/EditText;->setTranslationY(F)V

    const/4 v14, -0x1

    const/16 v15, 0x28

    const/16 v16, 0x33

    const/16 v18, 0x0

    const/16 v19, 0x1c

    const/16 v20, 0x0

    .line 2226
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2227
    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2271
    new-instance v14, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$4;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Landroid/content/Context;[Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    .line 2288
    invoke-virtual {v13}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setDontOccupyWidth(I)V

    .line 2289
    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda2;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnScrollIntoOccupiedWidth(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 2306
    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda3;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnCategoryClick(Lorg/telegram/messenger/Utilities$Callback;)V

    const/4 v15, -0x1

    const/16 v16, 0x24

    const/16 v17, 0x33

    const/16 v18, 0x24

    const/16 v19, 0x0

    const/16 v21, 0x0

    .line 2333
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v14, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2335
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear:Landroid/widget/ImageView;

    .line 2336
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2337
    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$5;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$5;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;FLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2344
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v2, 0xf

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1, v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 2345
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v1, 0x3f333333    # 0.7f

    .line 2346
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2347
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    const/16 v1, 0x8

    .line 2348
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2349
    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x35

    .line 2350
    invoke-static {v12, v12, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2353
    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda1;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;
    .locals 0

    .line 2145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V
    .locals 0

    .line 2145
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 2145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V
    .locals 0

    .line 2145
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton()V

    return-void
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Ljava/lang/String;I)V
    .locals 0

    .line 2145
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Landroid/widget/ImageView;
    .locals 0

    .line 2145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Z
    .locals 0

    .line 2145
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clearVisible:Z

    return p0
.end method

.method static synthetic access$6702(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Z)Z
    .locals 0

    .line 2145
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clearVisible:Z

    return p1
.end method

.method private clear()V
    .locals 2

    .line 2405
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2406
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    .line 2407
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 2

    .line 2290
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2291
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 2293
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 1

    .line 2325
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2326
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    const/4 p1, -0x1

    .line 2327
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    goto :goto_0

    .line 2329
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 2330
    iget-object p1, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->emojis:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getCategoryIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 2349
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 1

    .line 2354
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2355
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear()V

    .line 2356
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    goto :goto_0

    .line 2357
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    if-nez p1, :cond_1

    .line 2358
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private search(Ljava/lang/String;I)V
    .locals 1

    .line 2399
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->onSearchQuery:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_0

    .line 2400
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateButton()V
    .locals 1

    const/4 v0, 0x0

    .line 2364
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton(Z)V

    return-void
.end method

.method private updateButton(Z)V
    .locals 2

    .line 2378
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

    .line 2379
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

    .line 2380
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    .line 2381
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->isprogress:Z

    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 2388
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x32

    .line 2389
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2387
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

    .line 2395
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->onSearchQuery:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public showProgress(Z)V
    .locals 1

    .line 2369
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->isprogress:Z

    if-eqz p1, :cond_0

    .line 2371
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2373
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton(Z)V

    :goto_0
    return-void
.end method
