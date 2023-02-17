.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;
.super Landroid/widget/FrameLayout;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchBox"
.end annotation


# instance fields
.field private box:Landroid/widget/FrameLayout;

.field private categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

.field private clear:Landroid/widget/ImageView;

.field private delayedToggle:Ljava/lang/Runnable;

.field private input:Lorg/telegram/ui/Components/EditTextCaption;

.field private inputBox:Landroid/widget/FrameLayout;

.field private inputBoxGradient:Landroid/view/View;

.field private inputBoxShown:Z

.field private search:Landroid/widget/ImageView;

.field private searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method public static synthetic $r8$lambda$-hjuoi5fP5MG7X5IzUGJpAySoAw(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$new$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CDD4eCZOgkTTQs5H3h257ywSPmU(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L9eg6P9enPAX-h90CknbxdywIpM(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZE0VICiielzQ7hRoluL7r8zI2r4(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eaJWe5JOUcruvkKEJOJY25z5wTQ(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$new$3(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kqJiPBe-wWKvclJJeVPUdyPV40Q(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$toggleClear$5()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 4004
    iput-object v7, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 4005
    invoke-direct {v6, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 4199
    iput-boolean v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxShown:Z

    const/4 v9, 0x1

    .line 4007
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4008
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const-string v2, "actionBarDefaultSubmenuBackground"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 4010
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    const/16 v2, 0x12

    .line 4011
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const-string v10, "chat_emojiPanelBackground"

    invoke-static {v10, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4012
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 4013
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 4014
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$1;

    invoke-direct {v3, v6, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 4021
    :cond_0
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    const/4 v11, -0x1

    const/16 v12, 0x24

    const/16 v13, 0x37

    const/16 v14, 0x8

    const/16 v15, 0xc

    const/16 v16, 0x8

    const/16 v17, 0x8

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4023
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->search:Landroid/widget/ImageView;

    .line 4024
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4025
    new-instance v1, Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/SearchStateDrawable;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    .line 4026
    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(IZ)V

    .line 4027
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    const-string v4, "chat_emojiSearchIcon"

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SearchStateDrawable;->setColor(I)V

    .line 4028
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->search:Landroid/widget/ImageView;

    iget-object v3, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4029
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->search:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda2;

    invoke-direct {v3, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4042
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->search:Landroid/widget/ImageView;

    const/16 v5, 0x33

    const/16 v11, 0x24

    invoke-static {v11, v11, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4044
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBox:Landroid/widget/FrameLayout;

    .line 4045
    iget-object v3, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/16 v14, 0x77

    const/16 v15, 0x24

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4047
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$2;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v6, v8, v3, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    .line 4060
    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;

    invoke-direct {v3, v6, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4080
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4081
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v12, 0x4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v0, v0, v3, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 4082
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v9, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 4083
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    sget v3, Lorg/telegram/messenger/R$string;->Search:I

    const-string v5, "Search"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4085
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 4086
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    const-string v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 4087
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const v3, 0x10000003

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 4088
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    const-string v4, "featuredStickers_addedIcon"

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 4089
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 4090
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 4091
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 4092
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 4093
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 4094
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setLines(I)V

    .line 4095
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, -0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTranslationY(F)V

    .line 4096
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBox:Landroid/widget/FrameLayout;

    iget-object v4, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v14, -0x1

    const/16 v15, 0x77

    const/16 v18, 0x20

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4098
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradient:Landroid/view/View;

    .line 4099
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$drawable;->gradient_right:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4100
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v10, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4101
    iget-object v4, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradient:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4102
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradient:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    .line 4103
    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBox:Landroid/widget/FrameLayout;

    iget-object v4, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradient:Landroid/view/View;

    const/4 v5, 0x3

    invoke-static {v2, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4105
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4111
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    if-eq v1, v9, :cond_1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    if-ne v1, v12, :cond_5

    .line 4113
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v12, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    .line 4125
    :goto_0
    new-instance v14, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$4;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v14, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    .line 4137
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne v0, v12, :cond_4

    const/high16 v0, 0x40d00000    # 6.5f

    goto :goto_1

    :cond_4
    const/high16 v0, 0x40900000    # 4.5f

    :goto_1
    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setShownButtonsAtStart(F)V

    .line 4138
    iget-object v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setDontOccupyWidth(I)V

    .line 4139
    iget-object v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v10, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setBackgroundColor(I)V

    .line 4140
    iget-object v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda4;

    invoke-direct {v1, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnScrollIntoOccupiedWidth(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 4145
    iget-object v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda5;

    invoke-direct {v1, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnCategoryClick(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 4154
    iget-object v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x77

    const/16 v17, 0x24

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4157
    :cond_5
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    .line 4158
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4159
    iget-object v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$5;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-direct {v1, v6, v2, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;FLorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4166
    iget-object v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const-string v2, "listSelectorSDK21"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v2, 0xf

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1, v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4167
    iget-object v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4168
    iget-object v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4179
    iget-object v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    const/16 v2, 0x35

    invoke-static {v11, v11, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/StickerCategoriesListView;
    .locals 0

    .line 3994
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Z)V
    .locals 0

    .line 3994
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->toggleClear(Z)V

    return-void
.end method

.method static synthetic access$8000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/EditTextCaption;
    .locals 0

    .line 3994
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    return-object p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Z)V
    .locals 0

    .line 3994
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showInputBoxGradient(Z)V

    return-void
.end method

.method static synthetic access$8200(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V
    .locals 0

    .line 3994
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->updateButton()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    .line 4030
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4031
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4032
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    .line 4033
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_0

    .line 4034
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 4035
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->updateCategoriesShown(ZZ)V

    .line 4037
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearAnimation()V

    .line 4038
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4039
    invoke-direct {p0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showInputBoxGradient(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 4106
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onInputFocus()V

    .line 4107
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 4108
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;II)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Integer;)V
    .locals 3

    .line 4141
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 4142
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showInputBoxGradient(Z)V

    .line 4143
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->updateButton()V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 3

    .line 4146
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 4147
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    .line 4148
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    goto :goto_0

    .line 4150
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->emojis:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    .line 4151
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 3

    .line 4169
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4170
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    .line 4171
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_0

    .line 4172
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 4173
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->updateCategoriesShown(ZZ)V

    .line 4175
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearAnimation()V

    .line 4176
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4177
    invoke-direct {p0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showInputBoxGradient(Z)V

    return-void
.end method

.method private synthetic lambda$toggleClear$5()V
    .locals 2

    .line 4187
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;Z)V

    return-void
.end method

.method private showInputBoxGradient(Z)V
    .locals 2

    .line 4201
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxShown:Z

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradient:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4204
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxShown:Z

    .line 4205
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4206
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private toggleClear(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 4185
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->delayedToggle:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 4186
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->delayedToggle:Ljava/lang/Runnable;

    const-wide/16 v0, 0x154

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 4191
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->delayedToggle:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 4192
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 4193
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->delayedToggle:Ljava/lang/Runnable;

    .line 4195
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateButton()V
    .locals 1

    const/4 v0, 0x0

    .line 4222
    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->updateButton(Z)V

    return-void
.end method

.method private updateButton(Z)V
    .locals 1

    .line 4226
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    .line 4227
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-gtz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isCategoriesShown()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isScrolledIntoOccupiedWidth()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 4228
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public isInProgress()Z
    .locals 2

    .line 4210
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x34

    .line 4234
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public showProgress(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4215
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4217
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->updateButton(Z)V

    :goto_0
    return-void
.end method
