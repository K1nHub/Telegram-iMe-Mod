.class public final Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;
.super Ljava/lang/Object;
.source "AvailableSwapTokensResponse.kt"


# instance fields
.field private final cryptoTokenCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cryptoTokenCodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->cryptoTokenCodes:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;Ljava/util/List;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->cryptoTokenCodes:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->copy(Ljava/util/List;)Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->cryptoTokenCodes:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;"
        }
    .end annotation

    const-string v0, "cryptoTokenCodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;

    invoke-direct {v0, p1}, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->cryptoTokenCodes:Ljava/util/List;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->cryptoTokenCodes:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCryptoTokenCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->cryptoTokenCodes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->cryptoTokenCodes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvailableSwapTokensResponse(cryptoTokenCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->cryptoTokenCodes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
