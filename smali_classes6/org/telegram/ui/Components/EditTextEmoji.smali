.class public Lorg/telegram/ui/Components/EditTextEmoji;
.super Landroid/widget/FrameLayout;
.source "EditTextEmoji.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;
    }
.end annotation


# instance fields
.field adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

.field private allowAnimatedEmoji:Z

.field private currentStyle:I

.field private delegate:Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;

.field private destroyed:Z

.field private editText:Lorg/telegram/ui/Components/EditTextCaption;

.field private emojiButton:Landroid/widget/ImageView;

.field private emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

.field private emojiPadding:I

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private emojiViewVisible:Z

.field private formatOptions:Lorg/telegram/ui/Components/ItemOptions;

.field public includeNavigationBar:Z

.field private innerTextChange:I

.field private isAnimatePopupClosing:Z

.field private isPaused:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private openKeyboardRunnable:Ljava/lang/Runnable;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showKeyboardOnResume:Z

.field private shownFormatButton:Z

.field private sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private waitingForKeyboardOpen:Z


# direct methods
.method public static synthetic $r8$lambda$5UFdhCR4OUGEwt-d08hGA3RyCqQ(Lorg/telegram/ui/Components/EditTextEmoji;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->lambda$hidePopup$1(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$csFjssAuLeQgFpcj7laSW_SghrY(Lorg/telegram/ui/Components/EditTextEmoji;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextEmoji;->lambda$new$0(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2XFxDzGpLhRiZnfWi9mLFqOVTs(Lorg/telegram/ui/Components/EditTextEmoji;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->lambda$showPopup$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 132
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p6

    .line 136
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 78
    iput-boolean v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    .line 99
    new-instance v6, Lorg/telegram/ui/Components/EditTextEmoji$1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/EditTextEmoji$1;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    move/from16 v6, p5

    .line 137
    iput-boolean v6, v0, Lorg/telegram/ui/Components/EditTextEmoji;->allowAnimatedEmoji:Z

    .line 138
    iput-object v4, v0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 139
    iput v3, v0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    .line 141
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v6, v0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    move-object/from16 v6, p3

    .line 142
    iput-object v6, v0, Lorg/telegram/ui/Components/EditTextEmoji;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 143
    iput-object v2, v0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 144
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 146
    new-instance v6, Lorg/telegram/ui/Components/EditTextEmoji$2;

    invoke-direct {v6, v0, v1, v4, v3}, Lorg/telegram/ui/Components/EditTextEmoji$2;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v7, 0x10000000

    .line 219
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 220
    iget-object v6, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v6}, Landroid/widget/EditText;->getInputType()I

    move-result v7

    or-int/lit16 v7, v7, 0x4000

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 221
    iget-object v6, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v6}, Landroid/widget/EditText;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 222
    iget-object v6, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v7, 0x14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 223
    iget-object v6, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 224
    iget-object v6, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/high16 v11, 0x41900000    # 18.0f

    const/4 v12, 0x2

    const/16 v13, 0xb

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/4 v6, 0x0

    if-nez v3, :cond_5

    .line 226
    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, v5, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 227
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 228
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :cond_0
    move v8, v15

    :goto_0
    or-int/lit8 v8, v8, 0x10

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 229
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v8

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v5, v8, v10, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    .line 231
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 232
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 233
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    .line 234
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v8, 0x28

    if-eqz v7, :cond_1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    :goto_2
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 235
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x13

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_3

    move/from16 v19, v13

    goto :goto_3

    :cond_3
    move/from16 v19, v6

    :goto_3
    const/16 v20, 0x1

    if-eqz v7, :cond_4

    move/from16 v21, v6

    goto :goto_4

    :cond_4
    move/from16 v21, v13

    :goto_4
    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_5
    const/16 v7, 0x13

    if-eq v3, v12, :cond_7

    if-ne v3, v15, :cond_6

    goto :goto_5

    .line 256
    :cond_6
    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, v5, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 257
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 258
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 259
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextHint:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 260
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 261
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/16 v8, 0xc

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v5, v6, v7, v6, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 263
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x13

    const/16 v19, 0x30

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 237
    :cond_7
    :goto_5
    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v8, v5, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 238
    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 239
    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 240
    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/EditTextCaption;->setAllowTextEntitiesIntersection(Z)V

    .line 241
    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const v8, -0x73000001

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 242
    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 243
    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 244
    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setClipToPadding(Z)V

    .line 246
    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v9, 0x9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v7, v6, v10, v6, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 247
    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    .line 248
    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const v9, 0x30ffffff

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 249
    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const v9, -0xb95c15

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setLinkTextColor(I)V

    .line 250
    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iput v8, v7, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    .line 251
    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 252
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 253
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 254
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x13

    const/16 v19, 0x28

    const/16 v20, 0x0

    const/16 v21, 0x18

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    :goto_6
    new-instance v5, Lorg/telegram/ui/Components/EditTextEmoji$3;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji$3;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    .line 274
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 275
    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v3, :cond_9

    .line 277
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v5

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 278
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->smiles_tab_smiles:I

    invoke-virtual {v1, v3, v6}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 279
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const/16 v5, 0x30

    const/16 v6, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    const/4 v15, 0x5

    :goto_7
    or-int/lit8 v7, v15, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_9
    if-eq v3, v12, :cond_b

    if-ne v3, v15, :cond_a

    goto :goto_8

    .line 285
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v5

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 286
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v1, v3, v6}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 287
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const/16 v5, 0x30

    const/16 v6, 0x30

    const/16 v7, 0x53

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    .line 281
    :cond_b
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v7, -0x73000001

    invoke-direct {v3, v7, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 282
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v1, v3, v6}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 283
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const/16 v5, 0x28

    const/16 v6, 0x28

    const/16 v7, 0x53

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    :goto_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_c

    .line 290
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v2, v4}, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->Emoji:I

    const-string v3, "Emoji"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EditTextEmoji;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->destroyed:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EmojiView;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/EditTextEmoji;I)I
    .locals 0

    .line 60
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->innerTextChange:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EditTextEmoji;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EditTextEmoji;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EditTextEmoji;)Ljava/lang/Runnable;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/EditTextEmoji;)I
    .locals 0

    .line 60
    iget p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/ReplaceableIconDrawable;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EditTextEmoji;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->shownFormatButton:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/EditTextEmoji;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->shownFormatButton:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EditTextEmoji;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/EditTextEmoji;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing:Z

    return p1
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$hidePopup$1(ILandroid/animation/ValueAnimator;)V
    .locals 3

    .line 491
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    if-lez p1, :cond_1

    .line 493
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 494
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p1

    div-float v2, p2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    int-to-float p1, p1

    sub-float/2addr p2, p1

    .line 496
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->bottomPanelTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 4

    .line 293
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getAlpha()F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p3, p3, v0

    if-ltz p3, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 296
    :cond_0
    iget-boolean p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->shownFormatButton:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 297
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->formatOptions:Lorg/telegram/ui/Components/ItemOptions;

    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 298
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->hideActionMode()V

    .line 299
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/16 p2, 0x118

    .line 300
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setMaxHeight(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 301
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance p3, Lorg/telegram/ui/Components/MenuToItemOptions;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2}, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getOnPremiumMenuLockClickListener()Ljava/lang/Runnable;

    move-result-object v3

    invoke-direct {p3, p1, v2, v3}, Lorg/telegram/ui/Components/MenuToItemOptions;-><init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 302
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;

    .line 303
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {p3}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 306
    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->formatOptions:Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_1

    .line 308
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 309
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-lez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->onOpen(Z)V

    .line 311
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 313
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardInternal()V

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$showPopup$2(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 594
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 596
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    if-lez v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 597
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v0, v0

    div-float v0, p1, v0

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 599
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->bottomPanelTranslationY(F)V

    return-void
.end method

.method private onWindowSizeChanged()V
    .locals 2

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 642
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez v1, :cond_0

    .line 643
    iget v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    sub-int/2addr v0, v1

    .line 645
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->delegate:Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;

    if-eqz v1, :cond_1

    .line 646
    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;->onWindowSizeChanged(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected allowEntities()Z
    .locals 2

    .line 320
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected bottomPanelTranslationY(F)V
    .locals 0

    return-void
.end method

.method public closeKeyboard()V
    .locals 1

    .line 527
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method protected closeParent()V
    .locals 0

    return-void
.end method

.method protected createEmojiView()V
    .locals 15

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    .line 660
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 661
    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 663
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    .line 666
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EditTextEmoji$6;

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/EditTextEmoji;->allowAnimatedEmoji:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    const/4 v2, 0x2

    const/4 v14, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    move v11, v14

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v11, v1

    :goto_0
    iget-object v12, p0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v13, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v13}, Lorg/telegram/ui/Components/EditTextEmoji$6;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v1, 0x8

    .line 675
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 676
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    .line 679
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/EditTextEmoji$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextEmoji$7;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected customEmojiButtonDraw(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 354
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    .line 358
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p1, :cond_1

    .line 359
    invoke-virtual {p1}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result p1

    .line 360
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 361
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method protected drawEmojiBackground(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getEditText()Lorg/telegram/ui/Components/EditTextCaption;
    .locals 1

    .line 863
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object v0
.end method

.method public getEmojiButton()Landroid/view/View;
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getEmojiPadding()I
    .locals 1

    .line 804
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    return v0
.end method

.method public getEmojiView()Lorg/telegram/ui/Components/EmojiView;
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object v0
.end method

.method public getKeyboardHeight()I
    .locals 2

    .line 808
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->includeNavigationBar:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideEmojiView()V
    .locals 2

    .line 383
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 386
    iput v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    return-void
.end method

.method public hidePopup(Z)V
    .locals 3

    .line 479
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    :cond_0
    if-eqz p1, :cond_3

    .line 483
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    if-nez p1, :cond_2

    .line 484
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr p1, v0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v2, v0, v1

    int-to-float v1, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 489
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 490
    new-instance v1, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 498
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing:Z

    .line 499
    new-instance p1, Lorg/telegram/ui/Components/EditTextEmoji$4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextEmoji$4;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xfa

    .line 509
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 510
    sget-object p1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 511
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 513
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    :cond_3
    :goto_0
    return-void
.end method

.method public isAnimatePopupClosing()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing:Z

    return v0
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .line 531
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    return v0
.end method

.method public isPopupView(Landroid/view/View;)Z
    .locals 1

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPopupVisible()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

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

.method public isWaitingForKeyboardOpen()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    return v0
.end method

.method public length()I
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->destroyed:Z

    .line 419
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->onDestroy()V

    .line 423
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 424
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    :cond_1
    return-void
.end method

.method protected onEmojiKeyboardUpdate()V
    .locals 0

    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    .line 399
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    .line 404
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->showKeyboardOnResume:Z

    if-eqz v1, :cond_0

    .line 405
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->showKeyboardOnResume:Z

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 408
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    .line 410
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWaitingForKeyboard()V

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected onScrollYChange(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSizeChanged(IZ)V
    .locals 5

    const/16 v0, 0x32

    .line 813
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-le p1, v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 815
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    .line 816
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    const-string v2, "kbd_height_land3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 818
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    .line 819
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    const-string v2, "kbd_height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 823
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_3

    .line 824
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->includeNavigationBar:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    .line 826
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 827
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_5

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v3, v0, :cond_6

    .line 828
    :cond_5
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 829
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_6

    .line 832
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    .line 833
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 834
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    .line 839
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_7

    .line 840
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    return-void

    .line 843
    :cond_7
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue1:I

    .line 844
    iput-boolean p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue2:Z

    .line 846
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    .line 847
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    if-lez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_3

    :cond_8
    move p1, v1

    :goto_3
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-eqz p1, :cond_9

    .line 848
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 849
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    .line 851
    :cond_9
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez p1, :cond_a

    if-eq p1, p2, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result p1

    if-nez p1, :cond_a

    .line 852
    iput v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    .line 853
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 855
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_b

    .line 856
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    .line 857
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 859
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    return-void
.end method

.method protected onWaitingForKeyboard()V
    .locals 0

    return-void
.end method

.method public openKeyboard()V
    .locals 1

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method protected openKeyboardInternal()V
    .locals 3

    .line 539
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWaitingForKeyboard()V

    .line 540
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 543
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 544
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->showKeyboardOnResume:Z

    goto :goto_2

    .line 545
    :cond_2
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 546
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setAdjustPanLayoutHelper(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->delegate:Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 5

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 371
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x28

    if-eqz v0, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_3

    .line 373
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    :goto_3
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method

.method public setSizeNotifierLayout(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 349
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    return-void
.end method

.method public setSuggestionsEnabled(Z)V
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    if-nez p1, :cond_0

    const/high16 p1, 0x80000

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const p1, -0x80001

    and-int/2addr p1, v0

    .line 330
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showPopup(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    .line 554
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 555
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->createEmojiView()V

    .line 557
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 558
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    .line 559
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 561
    iget v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    const/16 v4, 0x96

    const/16 v5, 0xc8

    if-gtz v3, :cond_2

    .line 562
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 563
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    goto :goto_1

    .line 565
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const-string v7, "kbd_height"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    .line 568
    :cond_2
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    if-gtz v3, :cond_4

    .line 569
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 570
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    goto :goto_2

    .line 572
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const-string v5, "kbd_height_land3"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    .line 575
    :cond_4
    :goto_2
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v4, v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    goto :goto_3

    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    :goto_3
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EditTextEmoji;->includeNavigationBar:Z

    if-eqz v4, :cond_6

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_4

    :cond_6
    move v4, v0

    :goto_4
    add-int/2addr v3, v4

    .line 577
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 578
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 579
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_7

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_7

    .line 581
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 583
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v2, :cond_8

    .line 584
    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    .line 585
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 586
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->input_keyboard:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 587
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    .line 589
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onEmojiKeyboardUpdate()V

    .line 591
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez v2, :cond_9

    if-nez p1, :cond_9

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 592
    iget v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    int-to-float v2, v2

    aput v2, p1, v0

    const/4 v0, 0x0

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 593
    new-instance v0, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 601
    new-instance v0, Lorg/telegram/ui/Components/EditTextEmoji$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEmoji$5;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 609
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 610
    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 611
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    .line 613
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_6

    .line 616
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_c

    .line 617
    iget v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    if-nez v2, :cond_b

    .line 618
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->smiles_tab_smiles:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    goto :goto_5

    .line 620
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 623
    :cond_c
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v1, :cond_e

    .line 624
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    .line 625
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onEmojiKeyboardUpdate()V

    .line 626
    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v1, :cond_d

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v1, :cond_e

    .line 627
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 630
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_10

    if-nez p1, :cond_f

    .line 632
    iput v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    .line 634
    :cond_f
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 635
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    :cond_10
    :goto_6
    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 429
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextHint:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_1

    .line 434
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const v1, -0x73000001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const v2, 0x30ffffff

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iput v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    .line 444
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_3

    .line 446
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->updateColors()V

    :cond_3
    return-void
.end method
