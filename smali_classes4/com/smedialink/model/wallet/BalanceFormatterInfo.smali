.class public final Lcom/smedialink/model/wallet/BalanceFormatterInfo;
.super Ljava/lang/Object;
.source "BalanceFormatterInfo.kt"


# instance fields
.field private final decimalSeparator:C

.field private final numberFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Ljava/text/NumberFormat;C)V
    .locals 1

    const-string v0, "numberFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->numberFormat:Ljava/text/NumberFormat;

    .line 7
    iput-char p2, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->decimalSeparator:C

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/BalanceFormatterInfo;Ljava/text/NumberFormat;CILjava/lang/Object;)Lcom/smedialink/model/wallet/BalanceFormatterInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->numberFormat:Ljava/text/NumberFormat;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-char p2, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->decimalSeparator:C

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->copy(Ljava/text/NumberFormat;C)Lcom/smedialink/model/wallet/BalanceFormatterInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public final component2()C
    .locals 1

    iget-char v0, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->decimalSeparator:C

    return v0
.end method

.method public final copy(Ljava/text/NumberFormat;C)Lcom/smedialink/model/wallet/BalanceFormatterInfo;
    .locals 1

    const-string v0, "numberFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/model/wallet/BalanceFormatterInfo;-><init>(Ljava/text/NumberFormat;C)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/BalanceFormatterInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/BalanceFormatterInfo;

    iget-object v1, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->numberFormat:Ljava/text/NumberFormat;

    iget-object v3, p1, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-char v1, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->decimalSeparator:C

    iget-char p1, p1, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->decimalSeparator:C

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDecimalSeparator()C
    .locals 1

    .line 7
    iget-char v0, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->decimalSeparator:C

    return v0
.end method

.method public final getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-char v1, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->decimalSeparator:C

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BalanceFormatterInfo(numberFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decimalSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->decimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
