.class public final Lcom/iMe/model/wallet/home/CryptoAccountItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "CryptoAccountItem.kt"


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field private final address:Ljava/lang/String;

.field private final networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

.field private final user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Ljava/lang/String;",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 12
    iput-object p2, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->address:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 14
    iput-object p4, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->actions:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/CryptoAccountItem;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;ILjava/lang/Object;)Lcom/iMe/model/wallet/home/CryptoAccountItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->address:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->actions:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->copy(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)Lcom/iMe/model/wallet/home/CryptoAccountItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/iMe/model/wallet/crypto/NetworkItem;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->actions:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)Lcom/iMe/model/wallet/home/CryptoAccountItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Ljava/lang/String;",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;)",
            "Lcom/iMe/model/wallet/home/CryptoAccountItem;"
        }
    .end annotation

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/home/CryptoAccountItem;-><init>(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->actions:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/model/wallet/home/CryptoAccountItem;->actions:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAccountTitleText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 6

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 19
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 20
    sget v1, Lorg/telegram/messenger/R$string;->wallet_home_crypto_account_telegram_id:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->actions:Ljava/util/List;

    return-object v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    return-object v0
.end method

.method public final getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->actions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoAccountItem(user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;->actions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
