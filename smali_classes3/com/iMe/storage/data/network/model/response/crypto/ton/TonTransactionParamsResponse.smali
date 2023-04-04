.class public final Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;
.super Ljava/lang/Object;
.source "TonTransactionParamsResponse.kt"


# instance fields
.field private final sendMode:I

.field private final toWalletAddressFixed:Ljava/lang/String;

.field private final walletSeqno:I

.field private final wc:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1

    const-string v0, "toWalletAddressFixed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->sendMode:I

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->toWalletAddressFixed:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->walletSeqno:I

    .line 7
    iput p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->wc:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;ILjava/lang/String;IIILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->sendMode:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->toWalletAddressFixed:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->walletSeqno:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->wc:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->copy(ILjava/lang/String;II)Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->sendMode:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->toWalletAddressFixed:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->walletSeqno:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->wc:I

    return v0
.end method

.method public final copy(ILjava/lang/String;II)Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;
    .locals 1

    const-string v0, "toWalletAddressFixed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->sendMode:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->sendMode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->toWalletAddressFixed:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->toWalletAddressFixed:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->walletSeqno:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->walletSeqno:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->wc:I

    iget p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->wc:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getSendMode()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->sendMode:I

    return v0
.end method

.method public final getToWalletAddressFixed()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->toWalletAddressFixed:Ljava/lang/String;

    return-object v0
.end method

.method public final getWalletSeqno()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->walletSeqno:I

    return v0
.end method

.method public final getWc()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->wc:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->sendMode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->toWalletAddressFixed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->walletSeqno:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->wc:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TonTransactionParamsResponse(sendMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->sendMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toWalletAddressFixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->toWalletAddressFixed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", walletSeqno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->walletSeqno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->wc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
