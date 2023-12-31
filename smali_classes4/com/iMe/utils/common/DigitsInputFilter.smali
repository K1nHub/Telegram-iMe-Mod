.class public final Lcom/iMe/utils/common/DigitsInputFilter;
.super Ljava/lang/Object;
.source "DigitsInputFilter.kt"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final max:D

.field private final maxDigitsAfterLength:I

.field private final maxIntegerDigitsLength:I


# direct methods
.method public constructor <init>(IID)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/iMe/utils/common/DigitsInputFilter;->maxIntegerDigitsLength:I

    .line 9
    iput p2, p0, Lcom/iMe/utils/common/DigitsInputFilter;->maxDigitsAfterLength:I

    .line 10
    iput-wide p3, p0, Lcom/iMe/utils/common/DigitsInputFilter;->max:D

    return-void
.end method

.method public synthetic constructor <init>(IIDILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-wide/high16 p3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/utils/common/DigitsInputFilter;-><init>(IID)V

    return-void
.end method

.method private final checkMaxValueRule(DLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/iMe/utils/common/DigitsInputFilter;->max:D

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0, p3}, Lcom/iMe/utils/common/DigitsInputFilter;->handleInputRules(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final checkRuleForDecimalDigits(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    const-string v1, "."

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    .line 57
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 58
    invoke-static {p1}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lcom/iMe/utils/common/DigitsInputFilter;->maxDigitsAfterLength:I

    if-le p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final checkRuleForIntegerDigits(I)Ljava/lang/CharSequence;
    .locals 1

    .line 65
    iget v0, p0, Lcom/iMe/utils/common/DigitsInputFilter;->maxIntegerDigitsLength:I

    if-le p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final deleteCharAtIndex(Landroid/text/Spanned;I)Ljava/lang/String;
    .locals 1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "builder.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getAllText(Ljava/lang/CharSequence;Landroid/text/Spanned;I)Ljava/lang/String;
    .locals 3

    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 77
    invoke-direct {p0, p2, p3}, Lcom/iMe/utils/common/DigitsInputFilter;->deleteCharAtIndex(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "{\n                String\u2026.toString()\n            }"

    .line 78
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method private final getOnlyDigitsPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[^0-9?!\\.]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final handleInputRules(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/iMe/utils/common/DigitsInputFilter;->isDecimalDigit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/iMe/utils/common/DigitsInputFilter;->checkRuleForDecimalDigits(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/iMe/utils/common/DigitsInputFilter;->checkRuleForIntegerDigits(I)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final isDecimalDigit(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "."

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 52
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    const-string/jumbo p2, "source"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dest"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p4, p5}, Lcom/iMe/utils/common/DigitsInputFilter;->getAllText(Ljava/lang/CharSequence;Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/iMe/utils/common/DigitsInputFilter;->getOnlyDigitsPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 29
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-direct {p0, p3, p4, p2}, Lcom/iMe/utils/common/DigitsInputFilter;->checkMaxValueRule(DLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method
