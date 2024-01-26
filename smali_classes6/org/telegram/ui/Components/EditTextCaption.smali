.class public Lorg/telegram/ui/Components/EditTextCaption;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "EditTextCaption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;
    }
.end annotation


# instance fields
.field public adaptiveCreateLinkDialog:Z

.field private allowTextEntitiesIntersection:Z

.field private caption:Ljava/lang/String;

.field private captionLayout:Landroid/text/StaticLayout;

.field private copyPasteShowed:Z

.field private creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

.field private hintColor:I

.field private isInitLineCount:Z

.field private lineCount:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectionEnd:I

.field private selectionStart:I

.field private userNameLength:I

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public static synthetic $r8$lambda$Qm4k6PaFZ1sQupin4jJ-EXgQV_g(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fzno8kLI4kC3AdACmCzhC2KpQtw(Lorg/telegram/ui/Components/EditTextCaption;IILcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$0(IILcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s-98R-E82qMs1xxTg2r5nYvflxc(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$3(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$se_6tpJoLJiVnStPkYgb5FCVKGg(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$2(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 95
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    .line 96
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    .line 110
    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 111
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inQuote:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    .line 112
    new-instance p1, Lorg/telegram/ui/Components/EditTextCaption$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextCaption$1;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x1

    .line 133
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setClipToPadding(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EditTextCaption;)I
    .locals 0

    .line 65
    iget p0, p0, Lorg/telegram/ui/Components/EditTextCaption;->lineCount:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/EditTextCaption;I)I
    .locals 0

    .line 65
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->lineCount:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EditTextCaption;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/EditTextCaption;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->copyPasteShowed:Z

    return p1
.end method

.method private applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V
    .locals 6

    .line 380
    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    if-ltz v1, :cond_0

    const/4 v2, -0x1

    .line 383
    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 386
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 388
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->allowTextEntitiesIntersection:Z

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->addStyleToText(Lorg/telegram/ui/Components/TextStyleSpan;IILandroid/text/Spannable;Z)V

    if-nez p1, :cond_3

    .line 391
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 392
    const-class v2, Lorg/telegram/messenger/CodeHighlighting$Span;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/messenger/CodeHighlighting$Span;

    const/4 v3, 0x0

    move v4, v3

    .line 393
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 394
    aget-object v5, v2, v4

    invoke-interface {p1, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 395
    :cond_1
    const-class v2, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/QuoteSpan;

    .line 396
    :goto_2
    array-length v1, v0

    if-ge v3, v1, :cond_2

    .line 397
    aget-object v1, v0, v3

    invoke-interface {p1, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 398
    aget-object v1, v0, v3

    iget-object v1, v1, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {p1, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 400
    :cond_2
    array-length p1, v0

    if-lez p1, :cond_3

    const/4 p1, 0x1

    .line 401
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    .line 405
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    if-eqz p1, :cond_4

    .line 406
    invoke-interface {p1}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    :cond_4
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$makeSelectedUrl$0(IILcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 262
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    .line 263
    const-class p6, Landroid/text/style/CharacterStyle;

    invoke-interface {p5, p1, p2, p6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p6

    check-cast p6, [Landroid/text/style/CharacterStyle;

    const/16 v0, 0x21

    if-eqz p3, :cond_4

    .line 265
    invoke-virtual {p3}, Lcom/iMe/fork/controller/FormattingTextController;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/FormattingPanelType;->DEFAULT:Lcom/iMe/fork/enums/FormattingPanelType;

    if-eq v1, v2, :cond_4

    .line 266
    invoke-virtual {p3}, Lcom/iMe/fork/controller/FormattingTextController;->getListSpansFlags()Ljava/util/List;

    move-result-object p1

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    const/4 p3, 0x0

    .line 268
    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result p6

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p3, p6, v1, p5, v2}, Lorg/telegram/messenger/MediaDataController;->addStyleToText(Lorg/telegram/ui/Components/TextStyleSpan;IILandroid/text/Spannable;Z)V

    .line 269
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, ""

    .line 270
    invoke-virtual {p2, p3}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->setUrl(Ljava/lang/String;)V

    .line 271
    new-instance p3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {p3}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 272
    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result p6

    iput p6, p3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 273
    new-instance p6, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {p6, p3}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result p3

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result p2

    invoke-interface {p5, p6, p3, p2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->setUrl(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result p3

    if-lez p3, :cond_1

    .line 277
    new-instance p3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {p3}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 278
    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getSummaryFlags()I

    move-result p6

    iput p6, p3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 279
    new-instance p6, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p6, v1, p3}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result p3

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result p2

    invoke-interface {p5, p6, p3, p2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 281
    :cond_1
    new-instance p3, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p3, p6}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getStartIndexWord()I

    move-result p6

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->getEndIndexWord()I

    move-result p2

    invoke-interface {p5, p3, p6, p2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 285
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    if-eqz p1, :cond_3

    .line 286
    invoke-interface {p1}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    :cond_3
    return-void

    :cond_4
    if-eqz p6, :cond_7

    .line 291
    array-length p3, p6

    if-lez p3, :cond_7

    const/4 p3, 0x0

    .line 292
    :goto_1
    array-length v1, p6

    if-ge p3, v1, :cond_7

    .line 293
    aget-object v1, p6, p3

    .line 294
    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v2, :cond_6

    instance-of v2, v1, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    if-nez v2, :cond_6

    .line 295
    invoke-interface {p5, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 296
    invoke-interface {p5, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 297
    invoke-interface {p5, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    if-ge v2, p1, :cond_5

    .line 299
    invoke-interface {p5, v1, v2, p1, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    if-le v3, p2, :cond_6

    .line 302
    invoke-interface {p5, v1, p2, v3, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 308
    :cond_7
    :try_start_0
    new-instance p3, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p3, p1, p2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    if-eqz p1, :cond_8

    .line 313
    invoke-interface {p1}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    :cond_8
    return-void
.end method

.method private synthetic lambda$makeSelectedUrl$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 320
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 321
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private static synthetic lambda$makeSelectedUrl$2(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 324
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 325
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$makeSelectedUrl$3(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 342
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 343
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 3

    .line 431
    new-instance v0, Lorg/telegram/ui/Components/EditTextCaption$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EditTextCaption$3;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/ActionMode$Callback;)V

    .line 465
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 466
    new-instance v1, Lorg/telegram/ui/Components/EditTextCaption$4;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/Components/EditTextCaption$4;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/ActionMode$Callback;Landroid/view/ActionMode$Callback;)V

    return-object v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeCreationLinkDialog()Z
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getDelegate()Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    return-object v0
.end method

.method public makeSelectedBold()V
    .locals 2

    .line 160
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 161
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 162
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedItalic()V
    .locals 2

    .line 173
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 174
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 175
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedMono()V
    .locals 2

    .line 179
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 180
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 181
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedQuote()V
    .locals 3

    .line 198
    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    if-ltz v1, :cond_0

    const/4 v2, -0x1

    .line 201
    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 204
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 206
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/QuoteSpan;->putQuoteToEditable(Landroid/text/Editable;II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 208
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 209
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->resetFontMetricsCache()V

    :cond_1
    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    return-void
.end method

.method public makeSelectedRegular()V
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedSpoiler()V
    .locals 2

    .line 166
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 167
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 168
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    .line 169
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    return-void
.end method

.method public makeSelectedStrike()V
    .locals 2

    .line 185
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 186
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 187
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedUnderline()V
    .locals 2

    .line 191
    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 192
    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 193
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedUrl()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUrl(Ljava/lang/String;Lcom/iMe/fork/controller/FormattingTextController;)V

    return-void
.end method

.method public makeSelectedUrl(Ljava/lang/String;Lcom/iMe/fork/controller/FormattingTextController;)V
    .locals 12

    .line 217
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->adaptiveCreateLinkDialog:Z

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialogDecor$Builder;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialogDecor$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 222
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->CreateLink:I

    const-string v2, "CreateLink"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 224
    new-instance v1, Lorg/telegram/ui/Components/EditTextCaption$2;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/EditTextCaption$2;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/Context;)V

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v8, 0x1

    .line 230
    invoke-virtual {v1, v8, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const-string v2, "http://"

    .line 231
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "https://"

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_2
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 238
    sget p1, Lorg/telegram/messenger/R$string;->URL:I

    const-string v2, "URL"

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 239
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    .line 240
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 241
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 242
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTransformHintToHeader(Z)V

    .line 243
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result p1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    const/4 p1, 0x6

    .line 244
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 p1, 0x0

    .line 245
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v9, 0x0

    .line 247
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 248
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 252
    iget v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    if-ltz v2, :cond_3

    iget v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    if-ltz v3, :cond_3

    const/4 v4, -0x1

    .line 255
    iput v4, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    iput v4, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    goto :goto_2

    .line 257
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 258
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    :goto_2
    move v4, v2

    move v5, v3

    .line 261
    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    const-string v3, "OK"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;

    move-object v2, v11

    move-object v3, p0

    move-object v6, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextCaption;IILcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v10, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 316
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 317
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->adaptiveCreateLinkDialog:Z

    const/16 p2, 0x24

    const/16 v2, 0x18

    if-eqz p1, :cond_6

    .line 318
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 319
    new-instance v0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 323
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v3, 0xfa

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 329
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_5

    .line 331
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_4

    .line 332
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 334
    :cond_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 335
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 336
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    :cond_5
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v1, v9, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    goto :goto_3

    .line 341
    :cond_6
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 346
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_8

    .line 348
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_7

    .line 349
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 351
    :cond_7
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 352
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 353
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    :cond_8
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v1, v9, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    :goto_3
    return-void
.end method

.method protected onContextMenuClose()V
    .locals 0

    return-void
.end method

.method protected onContextMenuOpen()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 599
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 600
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 601
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDraw(Landroid/graphics/Canvas;)V

    .line 603
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->userNameLength:I

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 604
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 605
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    .line 606
    iget v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->hintColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 607
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 608
    iget v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->yOffset:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 609
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 610
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 611
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 614
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 616
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 621
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 622
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    .line 626
    :cond_0
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActionList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 627
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 628
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 629
    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    const/high16 v5, 0x10000000

    if-ne v4, v5, :cond_1

    .line 630
    invoke-virtual {p1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_spoiler:I

    sget v2, Lorg/telegram/messenger/R$string;->Spoiler:I

    const-string v3, "Spoiler"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 636
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_bold:I

    sget v2, Lorg/telegram/messenger/R$string;->Bold:I

    const-string v3, "Bold"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 637
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_italic:I

    sget v2, Lorg/telegram/messenger/R$string;->Italic:I

    const-string v3, "Italic"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 638
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_mono:I

    sget v2, Lorg/telegram/messenger/R$string;->Mono:I

    const-string v3, "Mono"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 639
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_strike:I

    sget v2, Lorg/telegram/messenger/R$string;->Strike:I

    const-string v3, "Strike"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 640
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_underline:I

    sget v2, Lorg/telegram/messenger/R$string;->Underline:I

    const-string v3, "Underline"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 641
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_link:I

    sget v2, Lorg/telegram/messenger/R$string;->CreateLink:I

    const-string v3, "CreateLink"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 642
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_regular:I

    sget v2, Lorg/telegram/messenger/R$string;->Regular:I

    const-string v3, "Regular"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_3
    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 547
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z

    .line 548
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onMeasure(II)V

    .line 549
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z

    if-eqz p2, :cond_1

    .line 550
    invoke-virtual {p0}, Landroid/widget/EditText;->getLineCount()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->lineCount:I

    .line 552
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 554
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 v2, 0x33

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/widget/EditText;->setMeasuredDimension(II)V

    .line 555
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    .line 558
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    .line 560
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 561
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 562
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-le p2, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v2, 0x40

    if-ne p2, v2, :cond_3

    const/16 p2, 0x20

    .line 563
    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    .line 565
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    add-int/2addr p2, v0

    .line 566
    invoke-interface {p1, v1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 567
    invoke-virtual {v2, p1, v1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 568
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr p2, v3

    .line 569
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->userNameLength:I

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    sub-int v6, p2, p1

    int-to-float p2, v6

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, p2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 571
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    .line 573
    :try_start_1
    new-instance p1, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    .line 574
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 575
    iget p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result p2

    neg-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    .line 577
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->yOffset:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 579
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x1020022

    if-ne p1, v2, :cond_3

    .line 658
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 659
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 660
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ne v3, v0, :cond_7

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    const-string v4, "text/html"

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 662
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v2

    .line 663
    invoke-static {v2}, Lorg/telegram/messenger/utils/CopyUtilities;->fromHTML(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    .line 664
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    .line 665
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v2, v1, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v3, :cond_0

    move v4, v1

    .line 667
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 668
    aget-object v5, v3, v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->applyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 671
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 672
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 673
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    const-class v6, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v5, v3, v4, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    if-eqz v5, :cond_1

    .line 674
    array-length v5, v5

    if-lez v5, :cond_1

    .line 675
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v2, v1, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    .line 676
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 677
    aget-object v6, v5, v1

    invoke-interface {v2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 678
    aget-object v6, v5, v1

    iget-object v6, v6, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {v2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 681
    :cond_1
    invoke-static {v2}, Lorg/telegram/ui/Components/QuoteSpan;->normalizeQuotes(Landroid/text/Spannable;)V

    .line 683
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v3, v4, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 684
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 687
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_3
    const v2, 0x1020021

    if-ne p1, v2, :cond_4

    .line 691
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 692
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 694
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :cond_4
    const v2, 0x1020020

    if-ne p1, v2, :cond_7

    .line 700
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 701
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 703
    :try_start_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 704
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v2, :cond_5

    .line 706
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 708
    :cond_5
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eq v3, v1, :cond_6

    .line 709
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 711
    :cond_6
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 712
    invoke-virtual {p0, v2, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    .line 718
    :catch_1
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 412
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->copyPasteShowed:Z

    if-eqz v0, :cond_0

    return-void

    .line 416
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 418
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 648
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->performMenuAction(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public performMenuAction(I)Z
    .locals 2

    .line 502
    sget v0, Lorg/telegram/messenger/R$id;->menu_regular:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedRegular()V

    return v1

    .line 505
    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->menu_bold:I

    if-ne p1, v0, :cond_1

    .line 506
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedBold()V

    return v1

    .line 508
    :cond_1
    sget v0, Lorg/telegram/messenger/R$id;->menu_italic:I

    if-ne p1, v0, :cond_2

    .line 509
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedItalic()V

    return v1

    .line 511
    :cond_2
    sget v0, Lorg/telegram/messenger/R$id;->menu_mono:I

    if-ne p1, v0, :cond_3

    .line 512
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedMono()V

    return v1

    .line 514
    :cond_3
    sget v0, Lorg/telegram/messenger/R$id;->menu_link:I

    if-ne p1, v0, :cond_4

    .line 515
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUrl()V

    return v1

    .line 517
    :cond_4
    sget v0, Lorg/telegram/messenger/R$id;->menu_strike:I

    if-ne p1, v0, :cond_5

    .line 518
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedStrike()V

    return v1

    .line 520
    :cond_5
    sget v0, Lorg/telegram/messenger/R$id;->menu_underline:I

    if-ne p1, v0, :cond_6

    .line 521
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUnderline()V

    return v1

    .line 523
    :cond_6
    sget v0, Lorg/telegram/messenger/R$id;->menu_spoiler:I

    if-ne p1, v0, :cond_7

    .line 524
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedSpoiler()V

    return v1

    .line 526
    :cond_7
    sget v0, Lorg/telegram/messenger/R$id;->menu_quote:I

    if-ne p1, v0, :cond_8

    .line 527
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedQuote()V

    return v1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public setAllowTextEntitiesIntersection(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->allowTextEntitiesIntersection:Z

    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 144
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0x20

    .line 146
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    .line 148
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->requestLayout()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    return-void
.end method

.method public setHintColor(I)V
    .locals 0

    .line 592
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 593
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->hintColor:I

    .line 594
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setSelectionOverride(II)V
    .locals 0

    .line 373
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    .line 374
    iput p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 535
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
