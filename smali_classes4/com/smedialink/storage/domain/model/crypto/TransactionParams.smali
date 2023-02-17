.class public final Lcom/smedialink/storage/domain/model/crypto/TransactionParams;
.super Ljava/lang/Object;
.source "TransactionParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/crypto/TransactionParams$WhenMappings;
    }
.end annotation


# instance fields
.field private final chain:Lcom/smedialink/storage/domain/model/crypto/Chain;

.field private final fastest:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

.field private final low:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

.field private final medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

.field private final nonce:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/smedialink/storage/domain/model/crypto/Chain;)V
    .locals 1

    const-string v0, "medium"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    .line 9
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    .line 10
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->low:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    .line 11
    iput-object p4, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->nonce:Ljava/math/BigInteger;

    .line 12
    iput-object p5, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->chain:Lcom/smedialink/storage/domain/model/crypto/Chain;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/smedialink/storage/domain/model/crypto/Chain;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/TransactionParams;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->low:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->nonce:Ljava/math/BigInteger;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->chain:Lcom/smedialink/storage/domain/model/crypto/Chain;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->copy(Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/smedialink/storage/domain/model/crypto/Chain;)Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public final component2()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public final component3()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->low:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public final component4()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component5()Lcom/smedialink/storage/domain/model/crypto/Chain;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->chain:Lcom/smedialink/storage/domain/model/crypto/Chain;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/smedialink/storage/domain/model/crypto/Chain;)Lcom/smedialink/storage/domain/model/crypto/TransactionParams;
    .locals 7

    const-string v0, "medium"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;-><init>(Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/smedialink/storage/domain/model/crypto/Chain;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->low:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->low:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->nonce:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->nonce:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->chain:Lcom/smedialink/storage/domain/model/crypto/Chain;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->chain:Lcom/smedialink/storage/domain/model/crypto/Chain;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getChain()Lcom/smedialink/storage/domain/model/crypto/Chain;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->chain:Lcom/smedialink/storage/domain/model/crypto/Chain;

    return-object v0
.end method

.method public final getFastest()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public final getFeeByLevel(Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;)Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    const-string v0, "speedLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 21
    iget-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    goto :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->low:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    :cond_3
    :goto_0
    return-object p1
.end method

.method public final getFees()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    .line 25
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->low:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLow()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->low:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public final getMedium()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public final getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->low:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->chain:Lcom/smedialink/storage/domain/model/crypto/Chain;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionParams(fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", medium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->medium:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", low="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->low:Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->chain:Lcom/smedialink/storage/domain/model/crypto/Chain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
