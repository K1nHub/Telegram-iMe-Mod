.class public final Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;
.super Ljava/lang/Object;
.source "FiatCode.kt"


# instance fields
.field private final decimals:I

.field private final shortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "shortName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->shortName:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->decimals:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    const/4 p2, 0x2

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;Ljava/lang/String;IILjava/lang/Object;)Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->shortName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->decimals:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->copy(Ljava/lang/String;I)Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->decimals:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;
    .locals 1

    const-string v0, "shortName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->shortName:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->shortName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->decimals:I

    iget p1, p1, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->decimals:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDecimals()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->decimals:I

    return v0
.end method

.method public final getShortName()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->shortName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->decimals:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FiatCode(shortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", decimals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->decimals:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
