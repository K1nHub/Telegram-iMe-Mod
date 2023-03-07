.class public final Lcom/smedialink/utils/extentions/common/StringExtKt;
.super Ljava/lang/Object;
.source "StringExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringExt.kt\ncom/smedialink/utils/extentions/common/StringExtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
.end annotation


# direct methods
.method public static final capitalizeOnlyFirstSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final formatISODate(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->ISO:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, p0, v1, v2, v1}, Lcom/smedialink/utils/formatter/DateFormatter;->parse$default(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p1, p0, v1, v2, v1}, Lcom/smedialink/utils/formatter/DateFormatter;->format$default(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatISODate$default(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 13
    sget-object p1, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->ONLY_DATE:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    :cond_0
    invoke-static {p0, p1}, Lcom/smedialink/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final parseISODate(Ljava/lang/String;)J
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->ISO:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, p0, v1, v2, v1}, Lcom/smedialink/utils/formatter/DateFormatter;->parse$default(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final shortened(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    const-string v3, "."

    invoke-static {v3, v1}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic shortened$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xc

    .line 35
    :cond_0
    invoke-static {p0, p1}, Lcom/smedialink/utils/extentions/common/StringExtKt;->shortened(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final stripZeros(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 22
    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/16 v3, 0x30

    aput-char v3, v2, v0

    .line 23
    invoke-static {p0, v2}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static synthetic stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x2e

    .line 21
    :cond_0
    invoke-static {p0, p1}, Lcom/smedialink/utils/extentions/common/StringExtKt;->stripZeros(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
