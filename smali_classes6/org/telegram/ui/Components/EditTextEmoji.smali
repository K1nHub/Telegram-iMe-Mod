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

.field private sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private waitingForKeyboardOpen:Z


# direct methods
.method public static synthetic $r8$lambda$5UFdhCR4OUGEwt-d08hGA3RyCqQ(Lorg/telegram/ui/Components/EditTextEmoji;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->lambda$hidePopup$1(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H-PsAQfk3YGulxG_pegdEl9zf_0(Lorg/telegram/ui/Components/EditTextEmoji;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->lambda$new$0(Landroid/view/View;)V

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

    .line 110
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    .line 77
    new-instance v1, Lorg/telegram/ui/Components/EditTextEmoji$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextEmoji$1;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    .line 115
    iput-boolean p5, p0, Lorg/telegram/ui/Components/EditTextEmoji;->allowAnimatedEmoji:Z

    .line 116
    iput-object p6, p0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 117
    iput p4, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    .line 119
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p5

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {p5, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 120
    iput-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 121
    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 122
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 124
    new-instance p2, Lorg/telegram/ui/Components/EditTextEmoji$2;

    invoke-direct {p2, p0, p1, p6}, Lorg/telegram/ui/Components/EditTextEmoji$2;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 p3, 0x41900000    # 18.0f

    .line 151
    invoke-virtual {p2, v0, p3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 152
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 153
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/widget/EditText;->getInputType()I

    move-result p3

    or-int/lit16 p3, p3, 0x4000

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 154
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 155
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/widget/EditText;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 156
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 p3, 0x14

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 157
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 p3, 0x3fc00000    # 1.5f

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 158
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string p3, "windowBackgroundWhiteBlackText"

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p2, p5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/4 p2, 0x5

    const/4 p5, 0x3

    const/4 p6, 0x0

    const/16 v0, 0xb

    const/4 v1, 0x0

    if-nez p4, :cond_5

    .line 160
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 161
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2, p6}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object p6, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v2, "windowBackgroundWhiteInputField"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "windowBackgroundWhiteRedText3"

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p6, v2, v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    .line 163
    iget-object p6, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v2, "windowBackgroundWhiteHintText"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p6, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 164
    iget-object p6, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p6, p3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 165
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget-boolean p6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x28

    if-eqz p6, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p6

    goto :goto_1

    :cond_1
    const/4 p6, 0x0

    :goto_1
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    :goto_2
    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p3, p6, v1, v2, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 166
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x13

    sget-boolean p6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p6, :cond_3

    const/16 v5, 0xb

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x1

    if-eqz p6, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    const/16 v7, 0xb

    :goto_4
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p6

    invoke-virtual {p0, p3, p6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 168
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v2, 0x13

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 169
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v2, "dialogTextHint"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 170
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v2, "dialogTextBlack"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 171
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p3, p6}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p6

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p3, v1, p6, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 173
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x13

    const/16 v5, 0x30

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p6

    invoke-virtual {p0, p3, p6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    :goto_5
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    .line 177
    sget-object p6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 178
    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    new-instance p6, Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-direct {p6, p1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    const-string p6, "chat_messagePanelIcons"

    invoke-direct {p0, p6}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result p6

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p6, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-nez p4, :cond_7

    .line 181
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget p3, Lorg/telegram/messenger/R$drawable;->smiles_tab_smiles:I

    invoke-virtual {p1, p3, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 182
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const/16 v0, 0x30

    const/16 v1, 0x30

    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_6

    const/4 p2, 0x3

    :cond_6
    or-int/lit8 v2, p2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 184
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget p2, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 185
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const/16 v0, 0x30

    const/16 v1, 0x30

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    :goto_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_8

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const-string p2, "listSelectorSDK21"

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    new-instance p2, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$string;->Emoji:I

    const-string p3, "Emoji"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EditTextEmoji;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->destroyed:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EditTextEmoji;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EditTextEmoji;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EditTextEmoji;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/EditTextEmoji;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EmojiView;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/EditTextEmoji;I)I
    .locals 0

    .line 44
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->innerTextChange:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$hidePopup$1(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 341
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    int-to-float p1, p1

    sub-float/2addr p2, p1

    .line 343
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->bottomPanelTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 195
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->onOpen(Z)V

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 199
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardInternal()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$showPopup$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 439
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 441
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->bottomPanelTranslationY(F)V

    return-void
.end method

.method private onWindowSizeChanged()V
    .locals 2

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 481
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez v1, :cond_0

    .line 482
    iget v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    sub-int/2addr v0, v1

    .line 484
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->delegate:Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;

    if-eqz v1, :cond_1

    .line 485
    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;->onWindowSizeChanged(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected bottomPanelTranslationY(F)V
    .locals 0

    return-void
.end method

.method public closeKeyboard()V
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method protected closeParent()V
    .locals 0

    return-void
.end method

.method protected createEmojiView()V
    .locals 11

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    .line 495
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 498
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    .line 501
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EmojiView;

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->allowAnimatedEmoji:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v1, 0x8

    .line 502
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 503
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    .line 506
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/EditTextEmoji$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextEmoji$5;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    .line 619
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 216
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    .line 220
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {p1}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result p1

    .line 222
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 223
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public getEditText()Lorg/telegram/ui/Components/EditTextCaption;
    .locals 1

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object v0
.end method

.method public getEmojiPadding()I
    .locals 1

    .line 627
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    return v0
.end method

.method public getEmojiView()Lorg/telegram/ui/Components/EmojiView;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideEmojiView()V
    .locals 2

    .line 245
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 248
    iput v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    return-void
.end method

.method public hidePopup(Z)V
    .locals 3

    .line 333
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    :cond_0
    if-eqz p1, :cond_2

    .line 337
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    if-nez p1, :cond_1

    .line 338
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v2, v0, v1

    int-to-float v1, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 339
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 340
    new-instance v1, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 345
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing:Z

    .line 346
    new-instance p1, Lorg/telegram/ui/Components/EditTextEmoji$3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextEmoji$3;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xfa

    .line 355
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 356
    sget-object p1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    :cond_2
    :goto_0
    return-void
.end method

.method public isAnimatePopupClosing()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing:Z

    return v0
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    return v0
.end method

.method public isPopupView(Landroid/view/View;)Z
    .locals 1

    .line 623
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

    .line 90
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

    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    return v0
.end method

.method public length()I
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->destroyed:Z

    .line 280
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->onDestroy()V

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 285
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    :cond_1
    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    .line 261
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    .line 266
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->showKeyboardOnResume:Z

    if-eqz v1, :cond_0

    .line 267
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->showKeyboardOnResume:Z

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 270
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

    .line 271
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 4

    const/16 v0, 0x32

    .line 632
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 634
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    .line 635
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

    .line 637
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    .line 638
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    const-string v2, "kbd_height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 642
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    .line 643
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    .line 645
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 646
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_3

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v2, v0, :cond_4

    .line 647
    :cond_3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 648
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_4

    .line 651
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    .line 652
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 653
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    .line 658
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_5

    .line 659
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    return-void

    .line 662
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue1:I

    .line 663
    iput-boolean p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue2:Z

    .line 665
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-eqz p1, :cond_7

    .line 667
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 668
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    .line 670
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez p1, :cond_8

    if-eq p1, p2, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result p1

    if-nez p1, :cond_8

    .line 671
    iput v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    .line 672
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 674
    :cond_8
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_9

    .line 675
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    .line 676
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 678
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    return-void
.end method

.method public openKeyboard()V
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method protected openKeyboardInternal()V
    .locals 3

    .line 385
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

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 388
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 389
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->showKeyboardOnResume:Z

    goto :goto_2

    .line 390
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

    .line 391
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setAdjustPanLayoutHelper(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->delegate:Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 5

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x28

    if-eqz v0, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_3

    .line 235
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

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method

.method public setSizeNotifierLayout(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 211
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showPopup(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 400
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->createEmojiView()V

    .line 402
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 403
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    .line 404
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 406
    iget v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    const/16 v4, 0x96

    const/16 v5, 0xc8

    if-gtz v3, :cond_2

    .line 407
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    goto :goto_1

    .line 410
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const-string v7, "kbd_height"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    .line 413
    :cond_2
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    if-gtz v3, :cond_4

    .line 414
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    goto :goto_2

    .line 417
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const-string v5, "kbd_height_land3"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    .line 420
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

    .line 422
    :goto_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 423
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 424
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_6

    .line 426
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 428
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v2, :cond_7

    .line 429
    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    .line 430
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 431
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->input_keyboard:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 432
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    .line 435
    :cond_7
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez v2, :cond_e

    if-nez p1, :cond_e

    .line 436
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    if-eqz p1, :cond_e

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 437
    iget v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    int-to-float v2, v2

    aput v2, p1, v0

    const/4 v0, 0x0

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 438
    new-instance v0, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 443
    new-instance v0, Lorg/telegram/ui/Components/EditTextEmoji$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEmoji$4;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 450
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 451
    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 452
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    .line 456
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 457
    iget v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    if-nez v2, :cond_9

    .line 458
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->smiles_tab_smiles:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    goto :goto_4

    .line 460
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    .line 463
    :cond_a
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v1, :cond_c

    .line 464
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    .line 465
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v2, :cond_b

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_c

    :cond_b
    const/16 v2, 0x8

    .line 466
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 469
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_e

    if-nez p1, :cond_d

    .line 471
    iput v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    .line 473
    :cond_d
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 474
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    :cond_e
    :goto_5
    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 290
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, "dialogTextHint"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, "dialogTextBlack"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 298
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chat_messagePanelIcons"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->updateColors()V

    :cond_1
    return-void
.end method
