.class final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;
.super Landroid/widget/FrameLayout;
.source "CreateWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NumericEditText"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletFragment.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,1387:1\n58#2,23:1388\n93#2,3:1411\n*S KotlinDebug\n*F\n+ 1 CreateWalletFragment.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText\n*L\n1243#1:1388,23\n1243#1:1411,3\n*E\n"
.end annotation


# instance fields
.field private final deleteImageView:Landroid/widget/ImageView;

.field private final editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private ignoreSearch:Z

.field private number:Ljava/lang/String;

.field private numberWidth:I

.field private final numericPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method public static synthetic $r8$lambda$H10S7Qu7sHxlwXth7hi5Mfew0oU(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->lambda-6$lambda-3(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oJyIjuenuJxug12d3N8JJ51Li34(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->lambda-8$lambda-7(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p0mvzdD94_m3wcAgjf_3Xdq5ds0(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->lambda-6$lambda-5(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/content/Context;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1168
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1192
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->numericPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    .line 1198
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/16 v3, 0x11

    .line 1199
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1200
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    .line 1201
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/high16 v3, 0x41880000    # 17.0f

    .line 1202
    invoke-virtual {v0, v1, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1203
    invoke-static {p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x1f

    .line 1205
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v4, 0x2

    .line 1206
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/16 v5, 0x1e

    .line 1207
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 1204
    invoke-virtual {v0, v3, v4, v6, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    const-string v3, "windowBackgroundWhiteBlackText"

    .line 1210
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1211
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 1212
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 1213
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1214
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 1215
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    if-eqz p4, :cond_0

    const/4 p4, 0x6

    goto :goto_0

    :cond_0
    const/4 p4, 0x5

    :goto_0
    const/high16 v3, 0x10000000

    or-int/2addr p4, v3

    .line 1216
    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setImeOptions(I)V

    const p4, 0x2c000

    .line 1217
    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setInputType(I)V

    const/16 p4, 0x14

    .line 1220
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-virtual {v0, p4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/4 p4, 0x3

    .line 1221
    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setGravity(I)V

    .line 1222
    new-instance p4, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda2;

    invoke-direct {p4, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1242
    new-instance p4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 80
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda-6$$inlined$doAfterTextChanged$1;

    invoke-direct {v3, p4, p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda-6$$inlined$doAfterTextChanged$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1264
    new-instance p4, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1268
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1200
    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1271
    sget-object p4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 1272
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v1, [Ljava/lang/Object;

    .line 1274
    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getCurrentType$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    move-result-object v4

    instance-of v4, v4, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getCheckWordIndices$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    :cond_1
    add-int/2addr p3, v1

    .line 1275
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, v2

    .line 1271
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    const-string v1, "%d:"

    invoke-static {p4, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "format(locale, format, *args)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p0, p3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->setNumber(Ljava/lang/String;)V

    const/16 p3, 0xdc

    const/16 p4, 0x24

    .line 1278
    invoke-static {p3, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1280
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1281
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1282
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1283
    sget p2, Lorg/telegram/messenger/R$drawable;->miniplayer_close:I

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p2, 0x0

    .line 1284
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1285
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1286
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    const/high16 p2, 0x42340000    # 45.0f

    .line 1287
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1288
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const-string p4, "windowBackgroundWhiteGrayText7"

    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p1, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1289
    sget p1, Lorg/telegram/messenger/R$string;->ClearButton:I

    const-string p2, "ClearButton"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1290
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1280
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->deleteImageView:Landroid/widget/ImageView;

    const/16 p1, 0x35

    .line 1297
    invoke-static {v5, v5, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$getIgnoreSearch$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)Z
    .locals 0

    .line 1168
    iget-boolean p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->ignoreSearch:Z

    return p0
.end method

.method public static final synthetic access$updateClearButton(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V
    .locals 0

    .line 1168
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->updateClearButton()V

    return-void
.end method

.method private static final lambda-6$lambda-3(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x5

    const/4 v0, 0x1

    if-eq p2, p3, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1236
    :cond_0
    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getButtonTextView(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_0

    .line 1225
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    .line 1226
    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getEditTexts$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 1227
    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getEditTexts$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    .line 1228
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1229
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setSelectionEnd(Landroid/widget/EditText;)V

    .line 1232
    :cond_2
    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$hideHint(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    :goto_0
    return v0
.end method

.method private static final lambda-6$lambda-5(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/View;Z)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->updateClearButton()V

    .line 1266
    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$hideHint(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    return-void
.end method

.method private static final lambda-8$lambda-7(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 1294
    :cond_1
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p0

    invoke-static {p0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    return-void
.end method

.method private final updateClearButton()V
    .locals 5

    .line 1332
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1333
    :goto_0
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->deleteImageView:Landroid/widget/ImageView;

    .line 1334
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_2

    .line 1335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1336
    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 1337
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 1338
    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 1339
    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/high16 v3, 0x42340000    # 45.0f

    .line 1340
    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 1341
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    return-void
.end method


# virtual methods
.method public final getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "editText.text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final length()I
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1316
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->number:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    .line 1317
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->numericPaint:Landroid/text/TextPaint;

    const-string v3, "windowBackgroundWhiteHintText"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1320
    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getMaxEditNumberWidth$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)I

    move-result v1

    iget v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->numberWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/16 v2, 0x14

    .line 1321
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    .line 1322
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->numericPaint:Landroid/text/TextPaint;

    .line 1318
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final setNumber(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1305
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->number:Ljava/lang/String;

    .line 1306
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->numericPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->numberWidth:I

    .line 1307
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getMaxEditNumberWidth$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)I

    move-result v0

    iget v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->numberWidth:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$setMaxEditNumberWidth$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;I)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1175
    iput-boolean v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->ignoreSearch:Z

    .line 1176
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1177
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setSelectionEnd(Landroid/widget/EditText;)V

    const/4 p1, 0x0

    .line 1180
    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->ignoreSearch:Z

    .line 1181
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    .line 1182
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getEditTexts$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getEditTexts$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    iget-object p1, p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1184
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1185
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setSelectionEnd(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method
