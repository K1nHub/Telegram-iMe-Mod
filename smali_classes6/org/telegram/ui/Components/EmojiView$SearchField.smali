.class Lorg/telegram/ui/Components/EmojiView$SearchField;
.super Landroid/widget/FrameLayout;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchField"
.end annotation


# instance fields
.field private backgroundView:Landroid/view/View;

.field private box:Landroid/widget/FrameLayout;

.field private categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

.field private clear:Landroid/widget/ImageView;

.field private delayedToggle:Ljava/lang/Runnable;

.field private inputBox:Landroid/widget/FrameLayout;

.field private inputBoxGradient:Landroid/view/View;

.field private inputBoxShown:Z

.field private isprogress:Z

.field private recent:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

.field private searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private searchImageView:Landroid/widget/ImageView;

.field private searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

.field private shadowAnimator:Landroid/animation/AnimatorSet;

.field private shadowView:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private trending:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

.field private type:I


# direct methods
.method public static synthetic $r8$lambda$63rQ90qnA4cYOsg7NUOllLBpvQY(Lorg/telegram/ui/Components/EmojiView$SearchField;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->lambda$new$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7RJDc2igp0AakuFOHEI19Mah3lw(Lorg/telegram/ui/Components/EmojiView$SearchField;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->lambda$toggleClear$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$RlUDL6j-9cBIKRYRcvzhhHItK5Y(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nlbgsOpWTnm83wudhu-vu9eZ8qI(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xg1tSP5-Zgcfcc0Y1-fCWbhyu8E(Lorg/telegram/ui/Components/EmojiView$SearchField;Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->lambda$new$3(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v2, p2

    move/from16 v7, p3

    .line 1001
    iput-object v9, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 1002
    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1246
    iput-boolean v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxShown:Z

    .line 1003
    iput v7, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->type:I

    .line 1005
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    const/4 v3, 0x0

    .line 1006
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1007
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1008
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-static {v9, v5}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1009
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v6

    const/4 v10, -0x1

    const/16 v11, 0x53

    invoke-direct {v5, v10, v6, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->backgroundView:Landroid/view/View;

    .line 1012
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-static {v9, v11}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1013
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->backgroundView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    invoke-direct {v5, v10, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    const/16 v5, 0x12

    .line 1016
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    invoke-static {v9, v12}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v13

    invoke-static {v6, v13}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1017
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v1, v6, :cond_0

    .line 1018
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 1019
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$SearchField$1;

    invoke-direct {v6, v8, v9}, Lorg/telegram/ui/Components/EmojiView$SearchField$1;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    .line 1027
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    const/4 v13, -0x1

    const/16 v14, 0x24

    const/16 v15, 0x77

    const/16 v16, 0xa

    const/16 v17, 0x8

    const/16 v18, 0xa

    const/16 v19, 0x8

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1029
    :cond_1
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    const/4 v13, -0x1

    const/16 v14, 0x24

    const/16 v15, 0x77

    const/16 v16, 0xa

    const/16 v17, 0x6

    const/16 v18, 0xa

    const/16 v19, 0x8

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1032
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBox:Landroid/widget/FrameLayout;

    .line 1033
    iget-object v6, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    const/4 v13, -0x1

    const/16 v14, 0x28

    const/16 v15, 0x33

    const/16 v16, 0x26

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v6, v1, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchImageView:Landroid/widget/ImageView;

    .line 1036
    new-instance v1, Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/SearchStateDrawable;-><init>()V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    .line 1037
    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(IZ)V

    .line 1038
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    invoke-static {v9, v6}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v13

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/SearchStateDrawable;->setColor(I)V

    .line 1039
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchImageView:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1040
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchImageView:Landroid/widget/ImageView;

    iget-object v13, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchImageView:Landroid/widget/ImageView;

    new-instance v13, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda1;

    invoke-direct {v13, v8}, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    iget-object v13, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchImageView:Landroid/widget/ImageView;

    const/16 v14, 0x33

    const/16 v15, 0x24

    invoke-static {v15, v15, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1060
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$2;

    invoke-direct {v1, v8, v2, v9, v7}, Lorg/telegram/ui/Components/EmojiView$SearchField$2;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/content/Context;Lorg/telegram/ui/Components/EmojiView;I)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v13, 0x41800000    # 16.0f

    .line 1077
    invoke-virtual {v1, v4, v13}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1078
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v9, v6}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1079
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v9, v6}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1080
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1082
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1083
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 1084
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1085
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v1, 0x10000003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v0, 0x3

    if-ne v7, v0, :cond_2

    .line 1088
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/messenger/R$string;->kikliko_search_hint:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1090
    :cond_2
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/messenger/R$string;->Search:I

    const-string v13, "Search"

    invoke-static {v13, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1091
    :goto_1
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-static {v9, v6}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1092
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v6, 0x14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 1093
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 1094
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, -0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setTranslationY(F)V

    .line 1095
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBox:Landroid/widget/FrameLayout;

    iget-object v6, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v16, -0x1

    const/16 v17, 0x28

    const/16 v18, 0x33

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1c

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v1, v6, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$SearchField$3;

    invoke-direct {v6, v8, v9}, Lorg/telegram/ui/Components/EmojiView$SearchField$3;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1123
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradient:Landroid/view/View;

    .line 1124
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lorg/telegram/messenger/R$drawable;->gradient_right:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1125
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v9, v11}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v13

    invoke-static {v9, v12}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v14

    invoke-static {v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1126
    iget-object v6, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradient:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1127
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradient:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1128
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBox:Landroid/widget/FrameLayout;

    iget-object v6, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradient:Landroid/view/View;

    invoke-static {v5, v10, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    .line 1131
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1132
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$4;

    const/high16 v5, 0x3fa00000    # 1.25f

    invoke-direct {v1, v8, v5, v9}, Lorg/telegram/ui/Components/EmojiView$SearchField$4;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;FLorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1139
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v5, 0xf

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1140
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1141
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda0;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1156
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    const/16 v3, 0x35

    invoke-static {v15, v15, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    sget v0, Lorg/telegram/ui/Components/EmojiView;->TAB_KIKLIKO:I

    if-eq v7, v0, :cond_4

    if-ne v7, v4, :cond_3

    .line 1160
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$3000(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1161
    :cond_3
    new-instance v10, Lorg/telegram/ui/Components/EmojiView$SearchField$5;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p1

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/EmojiView$SearchField$5;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/content/Context;[Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EmojiView;I)V

    iput-object v10, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    .line 1179
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

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

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setDontOccupyWidth(I)V

    .line 1180
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-static {v9, v11}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v1

    invoke-static {v9, v12}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setBackgroundColor(I)V

    .line 1181
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda3;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnScrollIntoOccupiedWidth(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1186
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$6;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/EmojiView$SearchField$6;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1197
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda4;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnCategoryClick(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1223
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    const/4 v9, -0x1

    const/16 v10, 0x24

    const/16 v11, 0x33

    const/16 v12, 0x24

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method static synthetic access$15000(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V
    .locals 0

    .line 982
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showShadow(ZZ)V

    return-void
.end method

.method static synthetic access$16000(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;
    .locals 0

    .line 982
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->trending:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    return-object p0
.end method

.method static synthetic access$16100(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;
    .locals 0

    .line 982
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->backgroundView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$16200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;
    .locals 0

    .line 982
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$16300(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/SearchStateDrawable;
    .locals 0

    .line 982
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    return-object p0
.end method

.method static synthetic access$16400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/widget/FrameLayout;
    .locals 0

    .line 982
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$16900(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;
    .locals 0

    .line 982
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->recent:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 982
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/EmojiView$SearchField;)V
    .locals 0

    .line 982
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->updateButton()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;
    .locals 0

    .line 982
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;Z)V
    .locals 0

    .line 982
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->toggleClear(Z)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/EmojiView$SearchField;Z)V
    .locals 0

    .line 982
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    return-void
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 982
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    .line 1042
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1043
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 1044
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->search(Ljava/lang/String;Z)V

    .line 1045
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v2, :cond_0

    .line 1046
    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    .line 1047
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 1048
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->updateCategoriesShown(ZZ)V

    .line 1050
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->toggleClear(Z)V

    .line 1051
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_1

    .line 1052
    invoke-virtual {p1}, Landroid/widget/EditText;->clearAnimation()V

    .line 1053
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1055
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    .line 1142
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1143
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->search(Ljava/lang/String;Z)V

    .line 1144
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v1, :cond_0

    .line 1145
    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    .line 1146
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 1147
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->updateCategoriesShown(ZZ)V

    .line 1149
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->toggleClear(Z)V

    .line 1150
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_1

    .line 1151
    invoke-virtual {p1}, Landroid/widget/EditText;->clearAnimation()V

    .line 1152
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1154
    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Integer;)V
    .locals 3

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 1183
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    .line 1184
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->updateButton()V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 3

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->recent:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    const-string v1, ""

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 1199
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    .line 1200
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->recent:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 1201
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    .line 1204
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->trending:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    if-ne p1, v0, :cond_2

    .line 1205
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    .line 1206
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$3900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1208
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->trending:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 1209
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    .line 1210
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1211
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$4000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1215
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-ne v0, p1, :cond_3

    const/4 p1, 0x0

    .line 1216
    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->search(Ljava/lang/String;Z)V

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    goto :goto_0

    .line 1219
    :cond_3
    iget-object v0, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->emojis:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->search(Ljava/lang/String;Z)V

    .line 1220
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$toggleClear$4()V
    .locals 2

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;Z)V

    return-void
.end method

.method private showInputBoxGradient(Z)V
    .locals 2

    .line 1249
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxShown:Z

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradient:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1252
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxShown:Z

    .line 1253
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1254
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradient:Landroid/view/View;

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

.method private showShadow(ZZ)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1305
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 1308
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1309
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1310
    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    .line 1312
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 1314
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v2, [Landroid/animation/Animator;

    .line 1315
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    const/4 p1, 0x0

    aput v0, v2, p1

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, p1

    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1316
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1317
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1318
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/EmojiView$SearchField$7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EmojiView$SearchField$7;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1324
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 1326
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    return-void
.end method

.method private toggleClear(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1264
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->delayedToggle:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 1265
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->delayedToggle:Ljava/lang/Runnable;

    const-wide/16 v0, 0x154

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1270
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->delayedToggle:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1271
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1272
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->delayedToggle:Ljava/lang/Runnable;

    .line 1274
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateButton()V
    .locals 1

    const/4 v0, 0x0

    .line 1289
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->updateButton(Z)V

    return-void
.end method

.method private updateButton(Z)V
    .locals 2

    .line 1293
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    .line 1294
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isCategoriesShown()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isScrolledIntoOccupiedWidth()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

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

    .line 1295
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    .line 1296
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->isprogress:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public isCategorySelected()Z
    .locals 1

    .line 1228
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 1258
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->isprogress:Z

    return v0
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 2

    .line 1233
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1234
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3400(Lorg/telegram/ui/Components/EmojiView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1235
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3400(Lorg/telegram/ui/Components/EmojiView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->search(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1240
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->search(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showProgress(Z)V
    .locals 1

    .line 1280
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->isprogress:Z

    if-eqz p1, :cond_0

    .line 1282
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1284
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->updateButton(Z)V

    :goto_0
    return-void
.end method
