.class public final Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;
.super Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;
.source "TransactionParamsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TON"
.end annotation


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

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    iput p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->sendMode:I

    .line 23
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->toWalletAddressFixed:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->walletSeqno:I

    .line 25
    iput p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->wc:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;ILjava/lang/String;IIILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->sendMode:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->toWalletAddressFixed:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->walletSeqno:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->wc:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->copy(ILjava/lang/String;II)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->sendMode:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->toWalletAddressFixed:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->walletSeqno:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->wc:I

    return v0
.end method

.method public final copy(ILjava/lang/String;II)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;
    .locals 1

    const-string v0, "toWalletAddressFixed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->sendMode:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->sendMode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->toWalletAddressFixed:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->toWalletAddressFixed:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->walletSeqno:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->walletSeqno:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->wc:I

    iget p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->wc:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getSendMode()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->sendMode:I

    return v0
.end method

.method public final getToWalletAddressFixed()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->toWalletAddressFixed:Ljava/lang/String;

    return-object v0
.end method

.method public final getWalletSeqno()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->walletSeqno:I

    return v0
.end method

.method public final getWc()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->wc:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->sendMode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->toWalletAddressFixed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->walletSeqno:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->wc:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TON(sendMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->sendMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toWalletAddressFixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->toWalletAddressFixed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", walletSeqno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->walletSeqno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->wc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
