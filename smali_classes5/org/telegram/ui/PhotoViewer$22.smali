.class Lorg/telegram/ui/PhotoViewer$22;
.super Lorg/telegram/ui/Components/FadingTextViewLayout;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field private staticCharsCount:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Z)V
    .locals 0

    .line 5448
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/FadingTextViewLayout;-><init>(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    .line 5450
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$22;->lastLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    const/4 p1, 0x0

    .line 5451
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$22;->staticCharsCount:I

    return-void
.end method


# virtual methods
.method protected getStaticCharsCount()I
    .locals 5

    .line 5465
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    .line 5466
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$22;->lastLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eq v1, v0, :cond_0

    .line 5467
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$22;->lastLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 5468
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "formatDateAtTime"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$22;->staticCharsCount:I

    .line 5470
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$22;->staticCharsCount:I

    return v0
.end method

.method protected onTextViewCreated(Landroid/widget/TextView;)V
    .locals 2

    .line 5455
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->onTextViewCreated(Landroid/widget/TextView;)V

    const/4 v0, 0x1

    const/high16 v1, 0x41500000    # 13.0f

    .line 5456
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5457
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, -0x1

    .line 5458
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "fonts/rmedium.ttf"

    .line 5459
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v0, 0x3

    .line 5460
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 5477
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 5478
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$22;->getStaticCharsCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 5480
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FadingTextViewLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FadingTextViewLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5485
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Components/FadingTextViewLayout;->setText(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1

    .line 5487
    :cond_2
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/Components/FadingTextViewLayout;->setText(Ljava/lang/CharSequence;ZZ)V

    :goto_1
    return-void
.end method
