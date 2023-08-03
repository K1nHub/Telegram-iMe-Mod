.class public Lorg/telegram/ui/Stories/recorder/CaptionContainerView;
.super Landroid/widget/FrameLayout;
.source "CaptionContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;
    }
.end annotation


# static fields
.field public static final periodDrawables:[I

.field public static final periods:[I


# instance fields
.field public applyButton:Landroid/widget/ImageView;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapMatrix:Landroid/graphics/Matrix;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurPaint:Landroid/graphics/Paint;

.field private final containerView:Landroid/widget/FrameLayout;

.field private currentAccount:I

.field public final editText:Lorg/telegram/ui/Components/EditTextEmoji;

.field private final fadeGradient:Landroid/graphics/LinearGradient;

.field private final fadePaint:Landroid/graphics/Paint;

.field private final heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private ignoreDraw:Z

.field public ignoreTouches:Z

.field private keyboardAnimator:Landroid/animation/ValueAnimator;

.field public final keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field public keyboardShown:Z

.field public keyboardT:F

.field private lastHeight:I

.field private lastHeightTranslation:F

.field public limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final matrix:Landroid/graphics/Matrix;

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

.field private onPeriodUpdate:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onPremiumHintShow:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

.field public periodButton:Landroid/widget/ImageView;

.field private periodIndex:I

.field private periodPopup:Lorg/telegram/ui/Components/ItemOptions;

.field private periodVisible:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final rootView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

.field private toKeyboardShow:Z

.field private updateShowKeyboard:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$BqSxJNQFx8SUX5kwJbtZ7z9n7Lo(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$3(Lorg/telegram/messenger/Utilities$Callback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FTQEynpz6kayCgkG4xX3_KJHpUg(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateKeyboard(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$V3oKB8TtFqLmagUtkda7vbf5jwk(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZTiTQlrXs6OL4PySfBYYSlarq7U(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;ILorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$5(ILorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hbVp6cAOG6UYOmn8Qxd4rKhKknU(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iDpmBEZHMDzZ9isRVXYt-M5o2Yo(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$4(Lorg/telegram/messenger/Utilities$Callback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lxEDeliXl6yM8myJ53PKfwTykn4(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tkdPpQETDS1kTmpvOIPo-Gq8k6Q(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$updateShowKeyboard$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wOZ4mKQJSH72XS2Qr4OF73Mocq0(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$2(Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 103
    fill-array-data v1, :array_0

    sput-object v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periods:[I

    new-array v0, v0, [I

    .line 104
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_story_6h:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_story_12h:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_story_24h:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_story_48h:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodDrawables:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5460
        0xa8c0
        0x15180
        0x2a300
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 33

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    .line 117
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v7, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v7, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    .line 101
    iput-boolean v13, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodVisible:Z

    const/4 v14, 0x0

    .line 105
    iput v14, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodIndex:I

    .line 107
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    .line 108
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

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v6

    move/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    .line 109
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    .line 464
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda5;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    .line 603
    new-instance v5, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v22, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v16, 0x12c

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v24, v4

    move-object v13, v5

    move-wide/from16 v4, v16

    move-object/from16 v25, v6

    move-object/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 607
    iput-boolean v14, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    .line 119
    iput-object v12, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 120
    iput v10, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    .line 121
    iput-object v11, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-object/from16 v0, p4

    .line 122
    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->containerView:Landroid/widget/FrameLayout;

    const/high16 v0, -0x80000000

    .line 124
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    new-instance v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda6;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-direct {v0, v11, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    .line 128
    new-instance v13, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    .line 156
    sget v0, Lorg/telegram/messenger/R$string;->StoryAddCaption:I

    const-string v1, "StoryAddCaption"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/16 v1, -0x16

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 158
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 159
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;

    invoke-direct {v2, v8, v10}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/16 v28, 0x57

    const/16 v29, 0xc

    const/16 v30, 0xc

    const/16 v31, 0xc

    const/16 v32, 0xc

    .line 202
    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    .line 205
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const v3, -0x994006

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->input_done:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-direct {v0, v2, v3, v14, v5}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/16 v2, 0x20

    .line 206
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 207
    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 209
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 210
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 215
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    const/16 v2, 0x2c

    const/16 v3, 0x55

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v0, v9, v14, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0x11

    .line 218
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 219
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0xf

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 220
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 221
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const v17, 0x3ecccccd    # 0.4f

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x140

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 222
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 223
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 224
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0x34

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x2c

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v25

    .line 226
    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 227
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 229
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    const/16 v1, 0x12

    .line 230
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const v2, 0x40ffffff    # 7.9999995f

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 232
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v1, v8, v10, v11, v12}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;ILorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x15180

    .line 273
    invoke-virtual {v8, v0, v14}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setPeriod(IZ)V

    .line 274
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    const/16 v3, 0x55

    const/16 v6, 0xb

    const/16 v7, 0xb

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

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

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V
    .locals 0

    .line 88
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->createMentionsContainer()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;IILjava/lang/CharSequence;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replaceWithText(IILjava/lang/CharSequence;Z)V

    return-void
.end method

.method private createMentionsContainer()V
    .locals 10

    .line 299
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

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$3;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/content/Context;JILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    .line 306
    invoke-virtual {v9}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowStickers(Z)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowBots(Z)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowChats(Z)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setSearchInDailogs(Z)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$4;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    .line 322
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

    .line 652
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

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

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

    .line 657
    invoke-virtual {p5}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    .line 658
    invoke-virtual {p5}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    .line 659
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p5

    .line 660
    instance-of v3, p5, Landroid/view/View;

    if-eqz v3, :cond_0

    check-cast p5, Landroid/view/View;

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 663
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p5, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 664
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p4

    float-to-int v0, v1

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 665
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 667
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

    .line 668
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->closeKeyboard()V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Integer;)V
    .locals 1

    .line 238
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setPeriod(I)V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onPeriodUpdate:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Integer;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onPremiumHintShow:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$3(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$4(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$5(ILorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 8

    .line 233
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 237
    :cond_0
    new-instance p4, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda7;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    .line 244
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 246
    :cond_1
    new-instance v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    .line 252
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    invoke-static {p2, p3, v2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    const/4 p2, 0x0

    move p3, p2

    .line 253
    :goto_1
    sget-object v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periods:[I

    array-length v3, v2

    if-ge p3, v3, :cond_6

    .line 254
    aget v2, v2, p3

    .line 255
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    const v4, 0x7fffffff

    if-ne v2, v4, :cond_2

    const-string v5, "StoryPeriodKeep"

    .line 258
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 259
    :cond_2
    div-int/lit16 v5, v2, 0xe10

    new-array v6, p2, [Ljava/lang/Object;

    const-string v7, "Hours"

    invoke-static {v7, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 260
    :goto_2
    iget v6, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodIndex:I

    if-ne v6, p3, :cond_3

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    goto :goto_3

    :cond_3
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    :goto_3
    new-instance v7, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v7, p4, v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback;I)V

    .line 255
    invoke-virtual {v3, p2, v5, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v3

    if-nez p1, :cond_5

    const v5, 0x15180

    if-eq v2, v5, :cond_5

    if-ne v2, v4, :cond_4

    goto :goto_4

    .line 263
    :cond_4
    new-instance v4, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/Utilities$Callback;I)V

    goto :goto_5

    :cond_5
    :goto_4
    move-object v4, v0

    .line 262
    :goto_5
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->putPremiumLock(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 269
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 270
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    const-string p3, "StoryPeriodHint"

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0xd

    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/ItemOptions;

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 2

    .line 465
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->toKeyboardShow:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateShowKeyboard$7(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 495
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    .line 496
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    const/16 v0, -0x16

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 497
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v0, -0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 498
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v1, 0x1

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 501
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 502
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 503
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_0

    .line 504
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 506
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private replaceWithText(IILjava/lang/CharSequence;Z)V
    .locals 2

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/2addr p2, p1

    .line 331
    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_1

    .line 333
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

    .line 335
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 336
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

    .line 338
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private updateKeyboard(I)V
    .locals 6

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isWaitingForKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getKeyboardHeight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getBottomPadding(Z)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 435
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 436
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 438
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_2

    .line 439
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 440
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v3, 0x0

    .line 441
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    .line 444
    :cond_2
    sget-object v3, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    aput v5, v4, v1

    neg-int v5, p1

    int-to-float v5, v5

    aput v5, v4, v2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    const/16 v0, 0x14

    .line 445
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-le p1, v3, :cond_3

    .line 446
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 447
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 449
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 450
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x280

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 452
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 454
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-le p1, v3, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->toKeyboardShow:Z

    .line 455
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 456
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 457
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 458
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 459
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    :cond_5
    return-void
.end method

.method private updateShowKeyboard(ZZ)V
    .locals 8

    .line 472
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 475
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 480
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onKeyboardOpen:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_2

    .line 481
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x2

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_8

    if-eqz p1, :cond_4

    .line 485
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p2, :cond_3

    .line 486
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 488
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 490
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

    .line 491
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodVisible:Z

    if-eqz v6, :cond_5

    move v1, v5

    :cond_5
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    new-array p2, v0, [F

    .line 493
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    aput v0, p2, v5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    aput v2, p2, v4

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 494
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 508
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_7

    .line 522
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 523
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 525
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 526
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1a4

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 528
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_7

    :cond_8
    if-eqz p1, :cond_9

    move p2, v2

    goto :goto_3

    :cond_9
    move p2, v3

    .line 530
    :goto_3
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    .line 531
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    const/16 v6, -0x16

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v6, v0, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 532
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v0, -0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v5, v0, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 533
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v5, v0, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 534
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v5, v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 535
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 536
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    move v0, v5

    goto :goto_4

    :cond_a
    move v0, v1

    :goto_4
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v3

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 538
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    if-nez p1, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodVisible:Z

    if-eqz v0, :cond_c

    move v1, v5

    :cond_c
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    if-nez p1, :cond_d

    goto :goto_6

    :cond_d
    move v2, v3

    :goto_6
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 540
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 542
    :goto_7
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSuggestionsEnabled(Z)V

    if-nez p1, :cond_e

    .line 544
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2, v5, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    :cond_e
    if-eqz p1, :cond_12

    .line 547
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-lt p1, v4, :cond_12

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result p1

    if-nez p1, :cond_12

    .line 548
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    const/high16 p2, 0x41400000    # 12.0f

    if-nez p1, :cond_f

    .line 549
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-int v0, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    .line 551
    :cond_f
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    .line 552
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlurBitmap(Landroid/graphics/Bitmap;F)V

    .line 553
    iput-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    .line 554
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    .line 555
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    if-nez p1, :cond_10

    .line 556
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    goto :goto_8

    .line 558
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 560
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_11

    .line 562
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 563
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 565
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_12
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    return-void
.end method

.method public closeKeyboard()V
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 611
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    if-eqz v0, :cond_0

    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 615
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x2e

    .line 616
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x96

    .line 618
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 620
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeight:I

    if-eq v0, v1, :cond_3

    .line 621
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onHeightUpdate:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v1, :cond_2

    .line 622
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 624
    :cond_2
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeight:I

    .line 626
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    float-to-int v1, v1

    .line 627
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateMentionsLayoutPosition()V

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 629
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeightTranslation:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 630
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTranslationY(F)V

    .line 632
    :cond_4
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeightTranslation:F

    const/16 v0, 0xc

    .line 634
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 635
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 637
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    int-to-float v1, v1

    sub-float/2addr v4, v1

    .line 638
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    .line 639
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 635
    invoke-virtual {v2, v0, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v0, 0x15

    .line 642
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, p0

    move-object v5, p1

    move-object v6, v2

    move-object v9, p0

    .line 643
    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V

    .line 645
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 646
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 647
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 648
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 295
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawBlurBitmap(Landroid/graphics/Bitmap;F)V
    .locals 0

    float-to-int p2, p2

    .line 571
    invoke-static {p1, p2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-ne p2, v0, :cond_0

    const/16 v0, 0xc

    .line 674
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 675
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/16 v3, 0x8f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 678
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v8, v2

    const/16 v9, 0xff

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 680
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    .line 681
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 682
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 683
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 685
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 686
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 687
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    iget p4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p4, v3

    invoke-virtual {p3, v2, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 688
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, p4}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 689
    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->right:F

    const/16 p3, 0xa

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    add-float v7, v5, p4

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 691
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    .line 692
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p4, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 693
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p4, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 694
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 695
    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget p4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    sub-float v4, p4, p3

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 696
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 697
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 701
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getEditTextHeight()I
    .locals 2

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 414
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x2e

    .line 415
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x96

    .line 417
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hidePeriodPopup()V
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return v1

    .line 595
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-nez v0, :cond_1

    .line 596
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->closeKeyboard()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 576
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    .line 581
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

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

    .line 387
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

    .line 424
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onKeyboardOpen:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setOnPeriodUpdate(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onPeriodUpdate:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setOnPremiumHint(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onPremiumHintShow:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setPeriod(I)V
    .locals 1

    const/4 v0, 0x1

    .line 343
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setPeriod(IZ)V

    return-void
.end method

.method public setPeriod(IZ)V
    .locals 3

    const/4 v0, 0x0

    .line 353
    :goto_0
    sget-object v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periods:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 354
    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 359
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodIndex:I

    if-ne p1, v0, :cond_2

    return-void

    .line 362
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodDrawables:[I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodIndex:I

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 363
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz p2, :cond_3

    .line 365
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 367
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method public setPeriodVisible(Z)V
    .locals 1

    .line 347
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodVisible:Z

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateMentionsLayoutPosition()V
    .locals 2

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    sub-float/2addr v0, v1

    .line 723
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
