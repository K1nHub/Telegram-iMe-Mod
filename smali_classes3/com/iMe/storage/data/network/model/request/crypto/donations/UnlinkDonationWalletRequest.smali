.class public final Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;
.super Ljava/lang/Object;
.source "UnlinkDonationWalletRequest.kt"


# instance fields
.field private final chatId:Ljava/lang/String;

.field private final platform:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "chatId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->chatId:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->platform:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 7
    sget-object p2, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->getBackendName()Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->chatId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->platform:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;
    .locals 1

    const-string v0, "chatId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->chatId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->chatId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->platform:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->platform:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getChatId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatform()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->chatId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->platform:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnlinkDonationWalletRequest(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->chatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
