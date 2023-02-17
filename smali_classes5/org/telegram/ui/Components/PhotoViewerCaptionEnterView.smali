.class public Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
.super Landroid/widget/FrameLayout;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$DarkTheme;,
        Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;
    }
.end annotation


# instance fields
.field private captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

.field private chatActivityEnterViewAnimateFromTop:F

.field private checkDrawable:Landroid/graphics/drawable/Drawable;

.field private codePointCount:I

.field public currentAccount:I

.field private delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

.field private final doneButton:Landroid/widget/ImageView;

.field private doneDrawable:Landroid/graphics/drawable/Drawable;

.field private emojiButton:Landroid/widget/ImageView;

.field private emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

.field private emojiPadding:I

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private forceFloatingEmoji:Z

.field private innerTextChange:Z

.field private isInitLineCount:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private lengthText:Ljava/lang/String;

.field private lengthTextPaint:Landroid/text/TextPaint;

.field private lineCount:I

.field private messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

.field messageEditTextAnimator:Landroid/animation/ValueAnimator;

.field private messageEditTextPredrawHeigth:I

.field private messageEditTextPredrawScrollY:I

.field offset:F

.field paint:Landroid/graphics/Paint;

.field private popupAnimating:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private sendButtonColorAnimator:Landroid/animation/ValueAnimator;

.field sendButtonEnabled:Z

.field private sendButtonEnabledProgress:F

.field private shouldAnimateEditTextWithBounds:Z

.field private sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

.field topBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private windowView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$4wpwQJ_fHRb-9Gw_feH2xH_qNmA(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lambda$onDraw$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E64Nw3hrfQTdyj-KiuR9YaQwl6Y(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L7_bxYzjS1OOo37QzZk-w_UH5Yg(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T1LzHJu7BORDSJPYkzGZVSwpHgw(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lambda$showPopup$9(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T9idrVIRIS6Hnaty_grztstcNKA(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lambda$onDraw$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xcgr20n5kxdJiooI9etMPyb3Y-4(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lambda$new$3(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hVVvLSivm4UABklA5-tX_0n6pNU(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$hskQBF5mP2rFwYVJQpNiWqYGH0Q(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lambda$setFieldFocused$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$mKpgLlBdwrMWJixx7bCYX2pwtNk(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lambda$new$5(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tRyn4JAtBi2cDleIAfJ7iWgaXV4(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lambda$new$1(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 131
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 119
    iput-boolean v4, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sendButtonEnabled:Z

    const/high16 v5, 0x3f800000    # 1.0f

    .line 120
    iput v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sendButtonEnabledProgress:F

    .line 128
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v6, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    .line 428
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    .line 429
    iput v6, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->offset:F

    .line 132
    new-instance v6, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$DarkTheme;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$DarkTheme;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 133
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->paint:Landroid/graphics/Paint;

    const/high16 v8, 0x7f000000

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    .line 134
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 135
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 136
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 137
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    move-object/from16 v8, p4

    .line 138
    iput-object v8, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    .line 140
    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    .line 142
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 144
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/16 v11, 0x33

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 145
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 149
    invoke-static {v6, v10, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    .line 152
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 153
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v5, v11, v12, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 154
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const v11, 0x3f147ae1    # 0.58f

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 155
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const/16 v11, 0x30

    const/16 v12, 0x53

    invoke-static {v11, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v9, v5, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    new-instance v12, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda4;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    sget v12, Lorg/telegram/messenger/R$string;->Emoji:I

    const-string v13, "Emoji"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    new-instance v12, Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v14, -0x1

    invoke-direct {v12, v14, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 166
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v12, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v5, v12, v6}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 168
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lengthTextPaint:Landroid/text/TextPaint;

    const/16 v12, 0xd

    .line 169
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v5, v12}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 170
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lengthTextPaint:Landroid/text/TextPaint;

    const-string v12, "fonts/rmedium.ttf"

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 171
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lengthTextPaint:Landroid/text/TextPaint;

    const v13, -0x262627

    invoke-virtual {v5, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 173
    new-instance v5, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;

    invoke-direct {v5, v0, v2, v7}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 221
    new-instance v13, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda6;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 228
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 230
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v13, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda9;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v5, v13}, Lorg/telegram/ui/Components/EditTextCaption;->setDelegate(Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;)V

    .line 233
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    invoke-virtual {v5, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setWindowView(Landroid/view/View;)V

    .line 234
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v13, Lorg/telegram/messenger/R$string;->AddCaption:I

    const-string v15, "AddCaption"

    invoke-static {v15, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v13, 0x10000000

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 236
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const v13, -0x893d0f

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setLinkTextColor(I)V

    .line 237
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5}, Landroid/widget/EditText;->getInputType()I

    move-result v13

    or-int/lit16 v13, v13, 0x4000

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 238
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 239
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 240
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v5, v4, v10}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 241
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v10, 0x50

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 242
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v13, 0xb

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    const/16 v15, 0xc

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v5, v6, v13, v6, v15}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 243
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 245
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v7, 0x14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 246
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setTextColor(I)V

    .line 247
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const v7, 0x4fffffff    # 8.5899341E9f

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 248
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const v7, -0x4d000001

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 249
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x53

    const/16 v18, 0x34

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v9, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v7, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda7;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 263
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v7, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v7, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;

    invoke-direct {v7, v0, v1, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v5, 0x10

    .line 377
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const v7, -0x994006

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->doneDrawable:Landroid/graphics/drawable/Drawable;

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/R$drawable;->input_done:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->checkDrawable:Landroid/graphics/drawable/Drawable;

    .line 379
    new-instance v5, Lorg/telegram/ui/Components/CombinedDrawable;

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->doneDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-direct {v5, v7, v9, v6, v13}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/16 v6, 0x20

    .line 380
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 382
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->doneButton:Landroid/widget/ImageView;

    .line 383
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 384
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    invoke-static {v11, v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v8, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    new-instance v5, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v1, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)V

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    sget v1, Lorg/telegram/messenger/R$string;->Done:I

    const-string v3, "Done"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 402
    new-instance v1, Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0x8

    .line 403
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 405
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 406
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 407
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/NumberTextView;->setCenterAlign(Z)V

    .line 408
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0x30

    const/16 v3, 0x14

    const/16 v4, 0x55

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/16 v8, 0x30

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isInitLineCount:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sendButtonColorAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sendButtonColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isInitLineCount:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)F
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sendButtonEnabledProgress:F

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;F)F
    .locals 0

    .line 66
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sendButtonEnabledProgress:F

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Ljava/lang/String;)I
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->checkDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->doneButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lineCount:I

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)I
    .locals 0

    .line 66
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)I
    .locals 0

    .line 66
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lineCount:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EmojiView;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->popupAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/EditTextCaption;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onLineCountChanged(II)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lengthText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->codePointCount:I

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)I
    .locals 0

    .line 66
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->codePointCount:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    return-object p0
.end method

.method private createEmojiView()V
    .locals 11

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    .line 621
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 622
    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 624
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    .line 627
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EmojiView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 628
    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 980
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 157
    iget-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboardInternal()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(IZ)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 224
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateEffects()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 252
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hideActionMode()Z

    move-result p2

    if-eqz p2, :cond_0

    return v0

    .line 254
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 255
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 256
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(IZ)V

    :cond_1
    return v0

    :cond_2
    return p1
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 1

    .line 264
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 265
    sget-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(IZ)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V
    .locals 2

    .line 387
    iget p3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result p3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->codePointCount:I

    sub-int/2addr p3, v0

    if-gez p3, :cond_1

    .line 388
    iget-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 390
    :try_start_0
    iget-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 393
    :goto_0
    iget p3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-boolean p3, p3, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez p3, :cond_0

    iget p3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget p3, p3, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->codePointCount:I

    if-le p3, v0, :cond_0

    .line 394
    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->showCaptionLimitBulletin(Landroid/widget/FrameLayout;)V

    :cond_0
    return-void

    .line 398
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onCaptionEnter()V

    return-void
.end method

.method private synthetic lambda$onDraw$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->setOffsetY(F)V

    return-void
.end method

.method private synthetic lambda$onDraw$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 466
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->offset:F

    .line 467
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setFieldFocused$8()V
    .locals 1

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v0, :cond_0

    .line 765
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 767
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$showPopup$9(FLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 832
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-int v0, p2

    .line 833
    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 834
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    sub-float v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 835
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    div-float/2addr p2, p1

    .line 836
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 837
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private onLineCountChanged(II)V
    .locals 0

    .line 413
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 414
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 415
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditTextPredrawHeigth:I

    .line 416
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getScrollY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditTextPredrawScrollY:I

    .line 417
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 419
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextCaption;->setOffsetY(F)V

    const/4 p1, 0x0

    .line 421
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 423
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->offset:F

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->chatActivityEnterViewAnimateFromTop:F

    return-void
.end method

.method private onWindowSizeChanged()V
    .locals 2

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 526
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez v1, :cond_0

    .line 527
    iget v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    sub-int/2addr v0, v1

    .line 529
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    if-eqz v1, :cond_1

    .line 530
    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onWindowSizeChanged(I)V

    :cond_1
    return-void
.end method

.method private openKeyboardInternal()V
    .locals 2

    .line 878
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(IZ)V

    .line 879
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboard()V

    return-void
.end method

.method private showPopup(IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 795
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->createEmojiView()V

    .line 797
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 798
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onEmojiViewOpen()V

    .line 800
    iget p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    const/16 p2, 0xc8

    if-gtz p1, :cond_0

    .line 801
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const-string v2, "kbd_height"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    .line 803
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    if-gtz p1, :cond_1

    .line 804
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const-string v0, "kbd_height_land3"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    .line 806
    :cond_1
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le p2, p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    .line 808
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 809
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 810
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    sget-boolean p2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->forceFloatingEmoji:Z

    if-nez p2, :cond_3

    .line 813
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 815
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz p2, :cond_a

    .line 816
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 817
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 818
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget p2, Lorg/telegram/messenger/R$drawable;->input_keyboard:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 819
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    goto/16 :goto_2

    .line 822
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 823
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 825
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v2, :cond_a

    if-eqz p2, :cond_6

    .line 826
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    if-eqz p2, :cond_6

    if-nez p1, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p2, :cond_6

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 827
    iget p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    int-to-float p2, p2

    aput p2, p1, v0

    const/4 p2, 0x0

    aput p2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 828
    iget p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    int-to-float p2, p2

    .line 829
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->popupAnimating:Z

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onEmojiViewCloseStart()V

    .line 831
    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 839
    new-instance p2, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xd2

    .line 852
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 853
    sget-object p2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 854
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_6
    const/16 p2, 0x8

    if-nez p1, :cond_8

    .line 856
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_7

    .line 857
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 859
    :cond_7
    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    goto :goto_1

    .line 861
    :cond_8
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_9

    .line 862
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 865
    :cond_9
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 866
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method public addEmojiToRecent(Ljava/lang/String;)V
    .locals 1

    .line 738
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->createEmojiView()V

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->addEmojiToRecent(Ljava/lang/String;)V

    return-void
.end method

.method public closeKeyboard()V
    .locals 1

    .line 901
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 902
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 963
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 964
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    .line 965
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 434
    iget v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->offset:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 435
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->offset:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 436
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public getCaptionLimitOffset()I
    .locals 2

    .line 71
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->codePointCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCodePointCount()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->codePointCount:I

    return v0
.end method

.method public getCursorPosition()I
    .locals 1

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 584
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getEmojiPadding()I
    .locals 1

    .line 784
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    return v0
.end method

.method public getFieldCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getMessageEditText()Lorg/telegram/ui/Components/EditTextCaption;
    .locals 1

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object v0
.end method

.method public getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public getSelectionLength()I
    .locals 3

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 573
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    .line 575
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v1
.end method

.method public hideActionMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hidePopup()V
    .locals 2

    .line 872
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 873
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(IZ)V

    :cond_0
    return-void
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .line 906
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPopupAnimating()Z
    .locals 1

    .line 897
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->popupAnimating:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPopupView(Landroid/view/View;)Z
    .locals 1

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onCreate()V
    .locals 2

    .line 535
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 536
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 541
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    .line 542
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    :cond_0
    const/4 v0, 0x0

    .line 545
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    .line 546
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 547
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 549
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 444
    iget-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->shouldAnimateEditTextWithBounds:Z

    const-wide/16 v0, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 445
    iget p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditTextPredrawHeigth:I

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v6}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr p1, v6

    iget v6, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditTextPredrawScrollY:I

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v7}, Landroid/widget/EditText;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr p1, v6

    int-to-float p1, p1

    .line 446
    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EditTextCaption;->getOffsetY()F

    move-result v7

    sub-float/2addr v7, p1

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextCaption;->setOffsetY(F)V

    new-array p1, v3, [F

    .line 447
    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EditTextCaption;->getOffsetY()F

    move-result v6

    aput v6, p1, v4

    aput v5, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 448
    new-instance v6, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 449
    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_0

    .line 450
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 452
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditTextAnimator:Landroid/animation/ValueAnimator;

    .line 453
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 454
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 455
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 456
    iput-boolean v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 459
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->chatActivityEnterViewAnimateFromTop:F

    cmpl-float v6, p1, v5

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->offset:F

    add-float/2addr v6, v7

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_3

    .line 460
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 461
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 463
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->chatActivityEnterViewAnimateFromTop:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->offset:F

    add-float/2addr v6, v7

    sub-float/2addr p1, v6

    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->offset:F

    new-array v3, v3, [F

    aput p1, v3, v4

    aput v5, v3, v2

    .line 464
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 465
    new-instance v2, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 469
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 470
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 471
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 472
    iput v5, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->chatActivityEnterViewAnimateFromTop:F

    :cond_3
    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 4

    const/16 v0, 0x32

    .line 911
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->forceFloatingEmoji:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 913
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    .line 914
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    const-string v2, "kbd_height_land3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 916
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    .line 917
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    const-string v2, "kbd_height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 921
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    .line 924
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    goto :goto_1

    .line 926
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    .line 929
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 930
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_3

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v2, v0, :cond_4

    .line 931
    :cond_3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 932
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v0, :cond_4

    .line 935
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 936
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 937
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    .line 942
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_5

    .line 943
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    return-void

    .line 946
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue1:I

    .line 947
    iput-boolean p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue2:Z

    .line 949
    iget-boolean p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    const/4 v0, 0x0

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 950
    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz p1, :cond_7

    .line 951
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 952
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(IZ)V

    .line 954
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez p1, :cond_8

    if-eq p1, p2, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result p1

    if-nez p1, :cond_8

    .line 955
    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 956
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 958
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    return-void
.end method

.method public openKeyboard()V
    .locals 3

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 886
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 888
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public replaceWithText(IILjava/lang/CharSequence;Z)V
    .locals 2

    .line 744
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/2addr p2, p1

    .line 745
    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_0

    .line 747
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/16 p4, 0x14

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    const/4 v1, 0x0

    invoke-static {v0, p2, p4, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 749
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p3}, Landroid/widget/EditText;->length()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 752
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setAllowTextEntitiesIntersection(Z)V
    .locals 1

    .line 971
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->setAllowTextEntitiesIntersection(Z)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    return-void
.end method

.method public setFieldFocused(Z)V
    .locals 3

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 761
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_2

    .line 762
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 773
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez p1, :cond_2

    .line 774
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFieldText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_0

    return-void

    .line 561
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 563
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    if-eqz p1, :cond_1

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setForceFloatingEmoji(Z)V
    .locals 0

    .line 494
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->forceFloatingEmoji:Z

    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->doneDrawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "dialogFloatingButton"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const-string v0, "dialogFloatingIcon"

    .line 499
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 500
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 501
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->checkDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sendButtonEnabledProgress:F

    const v4, 0x3ed70a3d    # 0.42f

    mul-float v3, v3, v4

    const v4, 0x3f147ae1    # 0.58f

    add-float/2addr v3, v4

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->updateColors()V

    :cond_0
    return-void
.end method
