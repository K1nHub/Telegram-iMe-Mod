.class public final Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;
.super Lcom/iMe/storage/domain/model/crypto/TransactionParams;
.source "TransactionParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/TransactionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ether"
.end annotation


# instance fields
.field private final chain:Lcom/iMe/storage/domain/model/crypto/Chain;

.field private final fastest:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

.field private final low:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

.field private final medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

.field private final nonce:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/iMe/storage/domain/model/crypto/Chain;)V
    .locals 1

    const-string v0, "medium"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 16
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->fastest:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 17
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->low:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 18
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->nonce:Ljava/math/BigInteger;

    .line 19
    iput-object p5, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->chain:Lcom/iMe/storage/domain/model/crypto/Chain;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/iMe/storage/domain/model/crypto/Chain;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p2

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p3

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->nonce:Ljava/math/BigInteger;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->chain:Lcom/iMe/storage/domain/model/crypto/Chain;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->copy(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/iMe/storage/domain/model/crypto/Chain;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component5()Lcom/iMe/storage/domain/model/crypto/Chain;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->chain:Lcom/iMe/storage/domain/model/crypto/Chain;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/iMe/storage/domain/model/crypto/Chain;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 7

    const-string v0, "medium"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/iMe/storage/domain/model/crypto/Chain;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->nonce:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->nonce:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->chain:Lcom/iMe/storage/domain/model/crypto/Chain;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->chain:Lcom/iMe/storage/domain/model/crypto/Chain;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getChain()Lcom/iMe/storage/domain/model/crypto/Chain;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->chain:Lcom/iMe/storage/domain/model/crypto/Chain;

    return-object v0
.end method

.method public getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->fastest:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->low:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public final getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->chain:Lcom/iMe/storage/domain/model/crypto/Chain;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ether(medium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", low="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->chain:Lcom/iMe/storage/domain/model/crypto/Chain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
