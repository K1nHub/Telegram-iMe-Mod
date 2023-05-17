.class Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;
.super Landroid/widget/FrameLayout;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickerMasksAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchField"
.end annotation


# instance fields
.field private clearSearchImageView:Landroid/widget/ImageView;

.field private progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

.field private searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksAlert;


# direct methods
.method public static synthetic $r8$lambda$yq5LYYDA5BGx-T2krbLhrbiZMXY(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;I)V
    .locals 12

    .line 198
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    .line 199
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 207
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, -0xdadadb

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 209
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$100(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x12

    .line 212
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const v2, -0xc9c9ca

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, -0x1

    const/16 v5, 0x24

    const/16 v6, 0x33

    const/16 v7, 0xe

    const/16 v8, 0xe

    const/16 v9, 0xe

    const/4 v10, 0x0

    .line 213
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 216
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 217
    sget v1, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v4, -0x888889

    invoke-direct {v1, v4, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v6, 0x24

    const/16 v7, 0x33

    const/16 v8, 0x10

    const/4 v11, 0x0

    .line 219
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    .line 222
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$1;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;Lorg/telegram/ui/Components/StickerMasksAlert;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->setSide(I)V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    const/16 v7, 0x35

    const/16 v8, 0xe

    const/16 v10, 0xe

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    new-instance v0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$2;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;Landroid/content/Context;Lorg/telegram/ui/Components/StickerMasksAlert;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    .line 249
    invoke-virtual {v0, p2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setLines(I)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v1, 0x10000003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    if-nez p3, :cond_0

    .line 259
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget p3, Lorg/telegram/messenger/R$string;->SearchStickersHint:I

    const-string v0, "SearchStickersHint"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne p3, p2, :cond_1

    .line 261
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget p3, Lorg/telegram/messenger/R$string;->SearchEmojiHint:I

    const-string v0, "SearchEmojiHint"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    .line 263
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget p3, Lorg/telegram/messenger/R$string;->SearchGifsTitle:I

    const-string v0, "SearchGifsTitle"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 265
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 266
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 p3, 0x14

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 267
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 p3, 0x3fc00000    # 1.5f

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 268
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, -0x1

    const/16 v1, 0x28

    const/16 v2, 0x33

    const/16 v3, 0x36

    const/16 v4, 0xc

    const/16 v5, 0x2e

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance p3, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$3;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField$3;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;Lorg/telegram/ui/Components/StickerMasksAlert;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 190
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;)Landroid/widget/ImageView;
    .locals 0

    .line 190
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;ZZ)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->showShadow(ZZ)V

    return-void
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;)Lorg/telegram/ui/Components/CloseProgressDrawable2;
    .locals 0

    .line 190
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 235
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private showShadow(ZZ)V
    .locals 0

    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method
