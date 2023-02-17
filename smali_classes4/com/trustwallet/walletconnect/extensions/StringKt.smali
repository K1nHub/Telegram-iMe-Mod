.class public final Lcom/trustwallet/walletconnect/extensions/StringKt;
.super Ljava/lang/Object;
.source "String.kt"


# static fields
.field private static final HEX_CHARS:Ljava/lang/String; = "0123456789abcdef"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final hexStringToByteArray(Ljava/lang/String;)[B
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x2

    div-int/2addr p0, v1

    new-array p0, p0, [B

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    if-lez v1, :cond_0

    if-le v2, v3, :cond_1

    :cond_0
    if-gez v1, :cond_2

    if-gt v3, v2, :cond_2

    .line 10
    :cond_1
    :goto_0
    sget-object v10, Lcom/trustwallet/walletconnect/extensions/StringKt;->HEX_CHARS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v10

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v11

    add-int/lit8 v4, v2, 0x1

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object v4, v10

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    shl-int/lit8 v5, v11, 0x4

    or-int/2addr v4, v5

    shr-int/lit8 v5, v2, 0x1

    int-to-byte v4, v4

    .line 14
    aput-byte v4, p0, v5

    if-eq v2, v3, :cond_2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    return-object p0
.end method
