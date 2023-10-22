.class public final Lorg/ton/contract/wallet/WalletTransfer;
.super Ljava/lang/Object;
.source "WalletTransfer.kt"


# instance fields
.field private final body:Lorg/ton/cell/Cell;

.field private final bounceable:Z

.field private final coins:Lorg/ton/block/CurrencyCollection;

.field private final destination:Lorg/ton/block/MsgAddressInt;

.field private final sendMode:I

.field private final stateInit:Lorg/ton/block/StateInit;


# direct methods
.method public constructor <init>(Lorg/ton/block/MsgAddressInt;ZLorg/ton/block/CurrencyCollection;ILorg/ton/cell/Cell;Lorg/ton/block/StateInit;)V
    .locals 1

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coins"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/ton/contract/wallet/WalletTransfer;->destination:Lorg/ton/block/MsgAddressInt;

    .line 10
    iput-boolean p2, p0, Lorg/ton/contract/wallet/WalletTransfer;->bounceable:Z

    .line 11
    iput-object p3, p0, Lorg/ton/contract/wallet/WalletTransfer;->coins:Lorg/ton/block/CurrencyCollection;

    .line 12
    iput p4, p0, Lorg/ton/contract/wallet/WalletTransfer;->sendMode:I

    .line 13
    iput-object p5, p0, Lorg/ton/contract/wallet/WalletTransfer;->body:Lorg/ton/cell/Cell;

    .line 14
    iput-object p6, p0, Lorg/ton/contract/wallet/WalletTransfer;->stateInit:Lorg/ton/block/StateInit;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/contract/wallet/WalletTransfer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/contract/wallet/WalletTransfer;

    iget-object v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->destination:Lorg/ton/block/MsgAddressInt;

    iget-object v3, p1, Lorg/ton/contract/wallet/WalletTransfer;->destination:Lorg/ton/block/MsgAddressInt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->bounceable:Z

    iget-boolean v3, p1, Lorg/ton/contract/wallet/WalletTransfer;->bounceable:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->coins:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/contract/wallet/WalletTransfer;->coins:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->sendMode:I

    iget v3, p1, Lorg/ton/contract/wallet/WalletTransfer;->sendMode:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->body:Lorg/ton/cell/Cell;

    iget-object v3, p1, Lorg/ton/contract/wallet/WalletTransfer;->body:Lorg/ton/cell/Cell;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->stateInit:Lorg/ton/block/StateInit;

    iget-object p1, p1, Lorg/ton/contract/wallet/WalletTransfer;->stateInit:Lorg/ton/block/StateInit;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBody()Lorg/ton/cell/Cell;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ton/contract/wallet/WalletTransfer;->body:Lorg/ton/cell/Cell;

    return-object v0
.end method

.method public final getBounceable()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lorg/ton/contract/wallet/WalletTransfer;->bounceable:Z

    return v0
.end method

.method public final getCoins()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/ton/contract/wallet/WalletTransfer;->coins:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getDestination()Lorg/ton/block/MsgAddressInt;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ton/contract/wallet/WalletTransfer;->destination:Lorg/ton/block/MsgAddressInt;

    return-object v0
.end method

.method public final getSendMode()I
    .locals 1

    .line 12
    iget v0, p0, Lorg/ton/contract/wallet/WalletTransfer;->sendMode:I

    return v0
.end method

.method public final getStateInit()Lorg/ton/block/StateInit;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/contract/wallet/WalletTransfer;->stateInit:Lorg/ton/block/StateInit;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/ton/contract/wallet/WalletTransfer;->destination:Lorg/ton/block/MsgAddressInt;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->bounceable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->coins:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->sendMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->body:Lorg/ton/cell/Cell;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->stateInit:Lorg/ton/block/StateInit;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/ton/block/StateInit;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalletTransfer(destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->destination:Lorg/ton/block/MsgAddressInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bounceable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->bounceable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", coins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->coins:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sendMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->sendMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->body:Lorg/ton/cell/Cell;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stateInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/contract/wallet/WalletTransfer;->stateInit:Lorg/ton/block/StateInit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
