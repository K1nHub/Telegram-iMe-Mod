.class public Lorg/telegram/ui/Stories/recorder/CaptionContainerView;
.super Landroid/widget/FrameLayout;
.source "CaptionContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;,
        Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;
    }
.end annotation


# instance fields
.field public applyButton:Landroid/widget/ImageView;

.field private applyButtonCheck:Landroid/graphics/drawable/Drawable;

.field private applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

.field private final backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field beforeScrollY:I

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapMatrix:Landroid/graphics/Matrix;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private blurPaint:Landroid/graphics/Paint;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final bounds:Landroid/graphics/RectF;

.field private final captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private codePointCount:I

.field private final containerView:Landroid/widget/FrameLayout;

.field protected currentAccount:I

.field public final editText:Lorg/telegram/ui/Components/EditTextEmoji;

.field private final fadeGradient:Landroid/graphics/LinearGradient;

.field private final fadePaint:Landroid/graphics/Paint;

.field private getUiBlurBitmap:Lorg/telegram/messenger/Utilities$CallbackVoidReturn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$CallbackVoidReturn<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field goingToScrollY:I

.field private final heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private hintTextBitmap:Landroid/graphics/Bitmap;

.field private final hintTextBitmapPaint:Landroid/graphics/Paint;

.field private final hintTextPaint:Landroid/text/TextPaint;

.field private ignoreDraw:Z

.field private ignoreTextChange:Z

.field public ignoreTouches:Z

.field private keyboardAnimator:Landroid/animation/ValueAnimator;

.field public final keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field public keyboardShown:Z

.field public keyboardT:F

.field private lastHeight:I

.field private lastHeightTranslation:F

.field public limitTextContainer:Landroid/widget/FrameLayout;

.field public limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final matrix:Landroid/graphics/Matrix;

.field private mentionBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field public mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

.field private onHeightUpdate:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onKeyboardOpen:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

.field private final rectF:Landroid/graphics/RectF;

.field protected resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final rootView:Landroid/widget/FrameLayout;

.field private scrollAnimator:Landroid/animation/ObjectAnimator;

.field private shiftDp:I

.field private final sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private final textChangeRunnable:Ljava/lang/Runnable;

.field private toKeyboardShow:Z

.field private updateShowKeyboard:Ljava/lang/Runnable;

.field waitingForScrollYChange:Z


# direct methods
.method public static synthetic $r8$lambda$0hd8R8O39u1fQzfUFqETbQ6Xizw(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/graphics/Canvas;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawHint(Landroid/graphics/Canvas;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6A0HKt_Pq-CWZHZmcL2nCiec8tg(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$FTQEynpz6kayCgkG4xX3_KJHpUg(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateKeyboard(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cdOn2CdbJ4OmUxWqSBcyNgcBLGE(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$lxEDeliXl6yM8myJ53PKfwTykn4(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xg-1Ayfk3M1fL9V9HXkvh_hRbpw(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$updateShowKeyboard$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 32

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v7, p2

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 130
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v8, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v8, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    .line 93
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    .line 94
    new-instance v6, Landroid/graphics/LinearGradient;

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x2

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v6

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    .line 95
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    .line 97
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    .line 99
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmapPaint:Landroid/graphics/Paint;

    const/4 v0, -0x4

    .line 107
    iput v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->shiftDp:I

    .line 114
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    .line 326
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    .line 386
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, v9, v1, v2}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;FF)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 547
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    .line 738
    new-instance v5, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v22, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v16, 0x12c

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v23, v4

    move-object v13, v5

    move-wide/from16 v4, v16

    move-object/from16 v24, v14

    move-object v14, v6

    move-object/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v13, 0x0

    .line 742
    iput-boolean v13, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    .line 744
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    .line 745
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    .line 132
    iput-object v11, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 133
    iput-object v7, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    move-object/from16 v3, p3

    .line 134
    iput-object v3, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object/from16 v0, p4

    .line 135
    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->containerView:Landroid/widget/FrameLayout;

    .line 136
    iput-object v12, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    .line 138
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-direct {v0, v12, v9, v13, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;IZ)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/high16 v0, -0x80000000

    .line 140
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    new-instance v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda5;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    .line 144
    new-instance v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextStyle()I

    move-result v5

    const/4 v6, 0x1

    new-instance v7, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v7}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object v13, v8

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v13, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v0, 0x1

    .line 218
    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setFocusable(Z)V

    .line 219
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 220
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    iput-boolean v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutYFix:Z

    .line 221
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawHint:Lorg/telegram/messenger/Utilities$Callback2;

    .line 222
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSupportRtlHint(Z)V

    .line 223
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move/from16 v4, v23

    :goto_0
    invoke-direct {v0, v12, v1, v4}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    .line 224
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    .line 225
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->AddCaption:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;Z)V

    .line 226
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 227
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/16 v1, -0x16

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 228
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 229
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLinkTextColor(I)V

    const/16 v25, -0x1

    const/16 v26, -0x2

    const/16 v27, 0x57

    const/16 v28, 0xc

    const/16 v29, 0xc

    const/16 v30, 0xc

    const/16 v31, 0xc

    .line 291
    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    const v3, 0x3d4ccccd    # 0.05f

    const/high16 v4, 0x3fa00000    # 1.25f

    .line 294
    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->input_done:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonCheck:Landroid/graphics/drawable/Drawable;

    .line 296
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 297
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-static {v5, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    iget-object v5, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonCheck:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/16 v4, 0x20

    .line 298
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 299
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    iget-object v4, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 301
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 302
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 309
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    const/16 v4, 0x2c

    const/16 v5, 0x55

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v4, 0x0

    invoke-direct {v0, v10, v4, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0x11

    .line 312
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 313
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0xf

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 314
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 315
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const v17, 0x3ecccccd    # 0.4f

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x140

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 316
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 317
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    .line 318
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 319
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    iget-object v1, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v2, 0x34

    invoke-static {v2, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x34

    const/16 v2, 0x10

    const/16 v3, 0x55

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x32

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v24

    .line 322
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 323
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/graphics/RectF;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V
    .locals 0

    .line 79
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;IILjava/lang/CharSequence;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replaceWithText(IILjava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->createMentionsContainer()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->codePointCount:I

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)I
    .locals 0

    .line 79
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->codePointCount:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->shiftDp:I

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)I
    .locals 0

    .line 79
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->shiftDp:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/graphics/Paint;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private animateScrollTo(Z)V
    .locals 6

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 397
    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 400
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 403
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getScrollY()I

    move-result v1

    .line 404
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V

    .line 405
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setForceCursorEnd(Z)V

    .line 406
    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 407
    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz p1, :cond_3

    sub-int/2addr v2, v4

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    const/4 p1, 0x2

    new-array p1, p1, [I

    aput v1, p1, v3

    const/4 v1, 0x1

    aput v2, p1, v1

    const-string v1, "scrollY"

    .line 409
    invoke-static {v0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x168

    .line 410
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 412
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    :goto_2
    return-void
.end method

.method private createMentionsContainer()V
    .locals 10

    .line 416
    new-instance v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$3;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v8}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$3;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/content/Context;JILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    .line 435
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v9, v2}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    .line 436
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setupMentionContainer()V

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$4;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v2, -0x1

    const/16 v3, 0x53

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V
    .locals 5

    .line 857
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    if-eqz p5, :cond_1

    .line 862
    invoke-virtual {p5}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    .line 863
    invoke-virtual {p5}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    .line 864
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p5

    .line 865
    instance-of v3, p5, Landroid/view/View;

    if-eqz v3, :cond_0

    check-cast p5, Landroid/view/View;

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 868
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p5, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 869
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p4

    float-to-int v0, v1

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 870
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 872
    :cond_2
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    const/high16 p4, 0x43000000    # 128.0f

    goto :goto_2

    :cond_3
    const/16 v0, 0x80

    const/16 v1, 0x99

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p4, v0

    :goto_2
    float-to-int p4, p4

    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 873
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;Ljava/lang/Runnable;)V
    .locals 10

    .line 819
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 821
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v8

    .line 825
    iget v0, v8, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutX:F

    neg-float v0, v0

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0xff

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v0, v9, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 828
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v6, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v7, v0, v2

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZ)V

    .line 829
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmapPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 832
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 833
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v7

    if-nez v7, :cond_2

    .line 838
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 840
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 841
    invoke-virtual {v8}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v8}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0xff

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 842
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 843
    invoke-virtual {v8}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v8}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 844
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 304
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->closeKeyboard()V

    .line 305
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    .line 326
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onTextChange()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 548
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->toKeyboardShow:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateShowKeyboard$3(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 586
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    const/16 v0, -0x16

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextLeft()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 588
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v0, -0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v2, v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 591
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 592
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 593
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 594
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onUpdateShowKeyboard(F)V

    .line 595
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_0

    .line 596
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 598
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    .line 599
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private replaceWithText(IILjava/lang/CharSequence;Z)V
    .locals 2

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/2addr p2, p1

    .line 465
    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_1

    .line 467
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/16 p4, 0x14

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    const/4 v1, 0x0

    invoke-static {v0, p2, p4, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 469
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 472
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private updateKeyboard(I)V
    .locals 6

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->additionalKeyboardHeight()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 514
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isWaitingForKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->additionalKeyboardHeight()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getKeyboardHeight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 517
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomPadding()I

    move-result v0

    :goto_1
    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 518
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 519
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 521
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_4

    .line 522
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 523
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v2, 0x0

    .line 524
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    .line 527
    :cond_4
    sget-object v2, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v1

    neg-int v4, p1

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    const/16 v0, 0x14

    .line 528
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-le p1, v2, :cond_5

    .line 529
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    sget-object v3, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 530
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_2

    .line 532
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 533
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x280

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 535
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 537
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-le p1, v2, :cond_6

    move v1, v5

    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->toKeyboardShow:Z

    .line 538
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 539
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 540
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 541
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 542
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    :cond_7
    return-void
.end method

.method private updateShowKeyboard(ZZ)V
    .locals 9

    .line 563
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 566
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 569
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 571
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onKeyboardOpen:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_2

    .line 572
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 574
    :cond_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->beforeUpdateShownKeyboard(Z)V

    const/4 v0, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_8

    if-eqz p1, :cond_4

    .line 577
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p2, :cond_3

    .line 578
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 580
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 582
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getScrollY()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p2, v5, v6}, Landroid/widget/EditText;->scrollBy(II)V

    :goto_0
    new-array p2, v0, [F

    .line 584
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    aput v0, p2, v5

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    aput v2, p2, v4

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 585
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p1, :cond_6

    .line 602
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 604
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_7

    .line 620
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 621
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 623
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 624
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1a4

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 626
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_5

    :cond_8
    if-eqz p1, :cond_9

    move p2, v2

    goto :goto_3

    :cond_9
    move p2, v3

    .line 628
    :goto_3
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    .line 629
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    const/16 v6, -0x16

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v6}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 630
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v6, -0x8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 631
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v6, 0xa

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 632
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v7, v0, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 633
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v0, v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 634
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 635
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    move v6, v5

    :cond_a
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 636
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_4
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 637
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onUpdateShowKeyboard(F)V

    .line 638
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 639
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->afterUpdateShownKeyboard(Z)V

    .line 640
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 642
    :goto_5
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->animateScrollTo(Z)V

    .line 643
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSuggestionsEnabled(Z)V

    if-nez p1, :cond_c

    .line 645
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2, v5, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    :cond_c
    if-eqz p1, :cond_11

    .line 648
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-lt p1, v4, :cond_11

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result p1

    if-nez p1, :cond_11

    .line 649
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    const/high16 p2, 0x41400000    # 12.0f

    if-nez p1, :cond_d

    .line 650
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-int v0, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    .line 652
    :cond_d
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    .line 653
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlurBitmap(Landroid/graphics/Bitmap;F)V

    .line 654
    iput-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    .line 655
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_10

    .line 656
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    .line 657
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    if-nez p1, :cond_e

    .line 658
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    goto :goto_6

    .line 660
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 662
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_f

    .line 664
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 665
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 667
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_7

    .line 669
    :cond_10
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    :cond_11
    :goto_7
    return-void
.end method


# virtual methods
.method protected additionalKeyboardHeight()I
    .locals 1

    .line 505
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    return v0
.end method

.method protected afterUpdateShownKeyboard(Z)V
    .locals 0

    return-void
.end method

.method protected beforeUpdateShownKeyboard(Z)V
    .locals 0

    return-void
.end method

.method protected captionLimitToast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x1

    .line 922
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    return-void
.end method

.method protected clipChild(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public closeKeyboard()V
    .locals 2

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void
.end method

.method protected customBlur()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 751
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    if-eqz v0, :cond_0

    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 755
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x2e

    .line 756
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x52

    .line 758
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 760
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    float-to-int v1, v1

    .line 761
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeight:I

    if-eq v1, v3, :cond_3

    .line 762
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onEditHeightChange(I)V

    .line 763
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onHeightUpdate:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v3, :cond_2

    .line 764
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 766
    :cond_2
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeight:I

    .line 768
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateMentionsLayoutPosition()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 769
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 770
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeightTranslation:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 771
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTranslationY(F)V

    .line 773
    :cond_4
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeightTranslation:F

    const/16 v0, 0xc

    .line 775
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v4, 0x0

    invoke-static {v0, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 776
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    .line 778
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    sub-float/2addr v5, v1

    .line 779
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    .line 780
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    .line 776
    invoke-virtual {v2, v0, v5, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 783
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 784
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3c9374bc    # 0.018f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 785
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/16 v0, 0x15

    .line 787
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v0, v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 788
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 789
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v5, p0

    move-object v7, p1

    move v9, v0

    invoke-virtual/range {v5 .. v13}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZ)V

    .line 790
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v2, 0x26

    const/16 v3, 0x40

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 791
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 793
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaints(FFF)[Landroid/graphics/Paint;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    .line 794
    aget-object v3, v1, v2

    if-nez v3, :cond_6

    goto :goto_1

    .line 798
    :cond_6
    aget-object v3, v1, v4

    if-eqz v3, :cond_7

    .line 799
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    aget-object v4, v1, v4

    invoke-virtual {p1, v3, v0, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 801
    :cond_7
    aget-object v3, v1, v2

    if-eqz v3, :cond_8

    .line 802
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    aget-object v1, v1, v2

    invoke-virtual {p1, v3, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 804
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 805
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 795
    :cond_9
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 796
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 809
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 811
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 359
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 362
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez v0, :cond_4

    move v0, v1

    .line 363
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 364
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 365
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-ne v4, v3, :cond_1

    goto :goto_1

    .line 368
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 369
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setForceCursorEnd(Z)V

    .line 374
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 376
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboard()V

    .line 377
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setScrollY(I)V

    .line 378
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v2

    .line 380
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 381
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 383
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method protected drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZ)V
    .locals 0

    return-void
.end method

.method protected drawBlurBitmap(Landroid/graphics/Bitmap;F)V
    .locals 0

    float-to-int p2, p2

    .line 716
    invoke-static {p1, p2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-ne p2, v0, :cond_0

    const/4 v1, 0x0

    .line 879
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/16 v2, 0x52

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 880
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/16 v8, 0xff

    const/16 v9, 0x1f

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 882
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 883
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/4 v1, 0x0

    .line 884
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 885
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 886
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 888
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 889
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 890
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->top:F

    sub-float/2addr p4, v2

    invoke-virtual {p3, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 891
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, p4}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 892
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->top:F

    iget v5, p3, Landroid/graphics/RectF;->right:F

    const/16 p3, 0xa

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    add-float v6, v4, p4

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 894
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    .line 895
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p4, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 896
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 897
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 898
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, p4, Landroid/graphics/RectF;->left:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    sub-float v2, p4, p3

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 899
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 900
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 903
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clipChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 906
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 907
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 910
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getCaptionDefaultLimit()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCaptionLimit()I
    .locals 1

    .line 695
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCaptionPremiumLimit()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCaptionDefaultLimit()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getCaptionPremiumLimit()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCodePointCount()I
    .locals 1

    .line 687
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->codePointCount:I

    return v0
.end method

.method public getEditTextHeight()I
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getEditTextHeightClosedKeyboard()I
    .locals 2

    const/16 v0, 0x52

    .line 494
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected getEditTextLeft()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getEditTextStyle()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSelectionLength()I
    .locals 3

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 978
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    .line 980
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected ignoreTouches()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateBlur()V
    .locals 1

    .line 330
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 336
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public isCaptionOverLimit()Z
    .locals 2

    .line 691
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCodePointCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCaptionLimit()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 993
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 994
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 997
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    .line 999
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1001
    sget v0, Lorg/telegram/messenger/R$string;->AddCaption:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1002
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1003
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1004
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    .line 1005
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 1006
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v3, v3

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return v1

    .line 730
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-nez v0, :cond_1

    .line 731
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->closeKeyboard()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onCaptionLimitUpdate(Z)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1012
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 1016
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    .line 1017
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    .line 1018
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1019
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1020
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method protected onEditHeightChange(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    return-void
.end method

.method protected onTextChange()V
    .locals 0

    return-void
.end method

.method protected onUpdateShowKeyboard(F)V
    .locals 0

    return-void
.end method

.method public setAccount(I)V
    .locals 0

    .line 116
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    return-void
.end method

.method public setOnHeightUpdate(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onHeightUpdate:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setOnKeyboardOpen(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 499
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onKeyboardOpen:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 390
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 927
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUiBlurBitmap(Lorg/telegram/messenger/Utilities$CallbackVoidReturn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$CallbackVoidReturn<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getUiBlurBitmap:Lorg/telegram/messenger/Utilities$CallbackVoidReturn;

    return-void
.end method

.method protected setupMentionContainer()V
    .locals 2

    .line 453
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowStickers(Z)V

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowBots(Z)V

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowChats(Z)V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setSearchInDailogs(Z)V

    return-void
.end method

.method public updateColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 986
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonCheck:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 988
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-static {v2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CombinedDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected updateEditTextLeft()V
    .locals 4

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/16 v1, -0x16

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextLeft()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTranslationX(F)V

    return-void
.end method

.method public updateMentionsLayoutPosition()V
    .locals 2

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    sub-float/2addr v0, v1

    .line 938
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 939
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 940
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
