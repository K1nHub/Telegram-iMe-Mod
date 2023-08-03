.class public Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "TextPaintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;
    }
.end annotation


# instance fields
.field private align:I

.field private baseFontSize:I

.field private currentType:I

.field private editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

.field private lastTypefaceKey:Ljava/lang/String;

.field private swatch:Lorg/telegram/ui/Components/Paint/Swatch;

.field private typeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;


# direct methods
.method public static synthetic $r8$lambda$P_9cyvnziSOeSPTJQlPB-WAfO9M(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->lambda$beginEditing$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V
    .locals 7

    .line 155
    iget v3, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v5

    iget v6, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->currentType:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/CharSequence;Lorg/telegram/ui/Components/Paint/Swatch;I)V

    .line 156
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getRotation()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 157
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 158
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    .line 159
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getAlign()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setAlign(I)V

    .line 162
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getAlign()I

    move-result p1

    const/16 p2, 0x11

    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eq p1, p3, :cond_1

    if-eq p1, v0, :cond_0

    const/16 p1, 0x13

    goto :goto_0

    :cond_0
    const/16 p1, 0x15

    goto :goto_0

    :cond_1
    move p1, p2

    .line 175
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    .line 176
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_6

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getAlign()I

    move-result p1

    if-eq p1, p3, :cond_4

    const/4 p2, 0x3

    if-eq p1, v0, :cond_3

    .line 181
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_5

    :cond_2
    move v0, p2

    goto :goto_1

    .line 187
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    .line 190
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextAlignment(I)V

    :cond_6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/CharSequence;Lorg/telegram/ui/Components/Paint/Swatch;I)V
    .locals 3

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    .line 51
    sget-object p2, Lorg/telegram/ui/Components/Paint/PaintTypeface;->ROBOTO_MEDIUM:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->typeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 56
    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    .line 58
    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    .line 79
    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 80
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 82
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 p3, 0x7

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 83
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 84
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 85
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 86
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iget p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 87
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iget p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    int-to-float p3, p3

    const v0, 0x3ecccccd    # 0.4f

    mul-float/2addr p3, v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 88
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateHint()V

    .line 90
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iget p3, p5, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 93
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_0

    .line 94
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/high16 v0, 0x11000000

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/high16 v0, 0x10000000

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 98
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 99
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/16 p4, 0x4000

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setInputType(I)V

    .line 100
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 101
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/16 p4, 0x33

    const/4 v0, -0x2

    invoke-static {v0, v0, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p3, 0x1d

    if-lt p1, p3, :cond_1

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBreakStrategy(I)V

    goto :goto_1

    :cond_1
    const/16 p3, 0x17

    if-lt p1, p3, :cond_2

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBreakStrategy(I)V

    .line 109
    :cond_2
    :goto_1
    invoke-virtual {p0, p5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 110
    invoke-virtual {p0, p6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 112
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    .line 114
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateHint()V

    return-void
.end method

.method private synthetic lambda$beginEditing$0()V
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private updateHint()V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    sget v1, Lorg/telegram/messenger/R$string;->TextPlaceholder:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const v1, 0x60ffffff

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public beginEditing()V
    .locals 3

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 307
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected bridge synthetic createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->createSelectionView()Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;

    move-result-object v0

    return-object v0
.end method

.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;
    .locals 2

    .line 373
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Landroid/content/Context;)V

    return-object v0
.end method

.method public endEditing()V
    .locals 2

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 314
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public getAlign()I
    .locals 1

    .line 226
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->align:I

    return v0
.end method

.method public getBaseFontSize()I
    .locals 1

    .line 195
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    return v0
.end method

.method public getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    return-object v0
.end method

.method public getFocusedView()Landroid/view/View;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    return-object v0
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 9

    .line 360
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    return-object v0

    .line 364
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    .line 365
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 366
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    const/16 v3, 0x34

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 367
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    sub-float/2addr v3, v5

    mul-float/2addr v3, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    .line 369
    new-instance v5, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v2, v7

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    sub-float/2addr v7, v8

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    sub-float/2addr v1, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    mul-float/2addr v2, v0

    invoke-direct {v5, v3, v6, v1, v2}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v5
.end method

.method public getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 336
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->currentType:I

    return v0
.end method

.method public getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->typeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 271
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 272
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 277
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 278
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method public setAlign(I)V
    .locals 0

    .line 222
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->align:I

    return-void
.end method

.method public setBaseFontSize(I)V
    .locals 5

    .line 199
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, v2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 204
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    instance-of p1, p1, Landroid/text/Spanned;

    if-eqz p1, :cond_2

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 206
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v2, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    move v2, v1

    .line 207
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 208
    aget-object v3, v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/Emoji$EmojiSpan;->replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    .line 209
    aget-object v3, v0, v2

    const v4, 0x3f59999a    # 0.85f

    iput v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 213
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 214
    aget-object v0, p1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateForce()V

    :cond_2
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxWidth(I)V

    return-void
.end method

.method public setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    .line 327
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateColor()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateHint()V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 331
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->currentType:I

    .line 332
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateColor()V

    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 3

    .line 240
    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 241
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 247
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->lastTypefaceKey:Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V
    .locals 1

    .line 230
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->typeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public updateColor()V
    .locals 7

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 342
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->currentType:I

    const/high16 v3, -0x1000000

    const/4 v4, -0x1

    if-nez v1, :cond_1

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    move v0, v3

    goto :goto_2

    :cond_0
    move v0, v4

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    const/high16 v6, 0x3e800000    # 0.25f

    if-ne v1, v5, :cond_3

    .line 346
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_2

    const/high16 v2, -0x67000000

    goto :goto_0

    :cond_2
    const v2, -0x66000001

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 348
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    goto :goto_2

    .line 350
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 352
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 353
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 354
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHighlightColor(I)V

    return-void
.end method

.method public updateTypeface()V
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->lastTypefaceKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
