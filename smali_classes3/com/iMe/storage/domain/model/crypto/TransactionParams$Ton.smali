.class public final Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;
.super Lcom/iMe/storage/domain/model/crypto/TransactionParams;
.source "TransactionParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/TransactionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ton"
.end annotation


# instance fields
.field private final medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

.field private final walletSeqno:I


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;I)V
    .locals 7

    const-string v0, "medium"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 35
    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 34
    iput p2, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->walletSeqno:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;IILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->walletSeqno:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->copy(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;I)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->walletSeqno:I

    return v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;I)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;
    .locals 1

    const-string v0, "medium"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->walletSeqno:I

    iget p1, p1, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->walletSeqno:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public final getWalletSeqno()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->walletSeqno:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->walletSeqno:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ton(medium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", walletSeqno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->walletSeqno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
