.class public final Lorg/ton/contract/wallet/WalletTransferBuilder;
.super Ljava/lang/Object;
.source "WalletTransfer.kt"


# instance fields
.field private body:Lorg/ton/cell/Cell;

.field private bounceable:Z

.field private currencyCollection:Lorg/ton/block/CurrencyCollection;

.field public destination:Lorg/ton/block/MsgAddressInt;

.field private sendMode:I

.field private stateInit:Lorg/ton/block/StateInit;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->bounceable:Z

    .line 20
    new-instance v1, Lorg/ton/block/CurrencyCollection;

    new-instance v2, Lorg/ton/block/Coins;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Lorg/ton/block/Coins;-><init>(Lorg/ton/block/VarUInteger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lorg/ton/block/ExtraCurrencyCollection;

    invoke-direct {v4, v3, v0, v3}, Lorg/ton/block/ExtraCurrencyCollection;-><init>(Lorg/ton/hashmap/HashMapE;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v2, v4}, Lorg/ton/block/CurrencyCollection;-><init>(Lorg/ton/block/Coins;Lorg/ton/block/ExtraCurrencyCollection;)V

    iput-object v1, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->currencyCollection:Lorg/ton/block/CurrencyCollection;

    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->sendMode:I

    return-void
.end method


# virtual methods
.method public final build()Lorg/ton/contract/wallet/WalletTransfer;
    .locals 8

    .line 31
    new-instance v7, Lorg/ton/contract/wallet/WalletTransfer;

    invoke-virtual {p0}, Lorg/ton/contract/wallet/WalletTransferBuilder;->getDestination()Lorg/ton/block/MsgAddressInt;

    move-result-object v1

    iget-boolean v2, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->bounceable:Z

    iget-object v3, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->currencyCollection:Lorg/ton/block/CurrencyCollection;

    iget v4, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->sendMode:I

    iget-object v5, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->body:Lorg/ton/cell/Cell;

    iget-object v6, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->stateInit:Lorg/ton/block/StateInit;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ton/contract/wallet/WalletTransfer;-><init>(Lorg/ton/block/MsgAddressInt;ZLorg/ton/block/CurrencyCollection;ILorg/ton/cell/Cell;Lorg/ton/block/StateInit;)V

    return-object v7
.end method

.method public final getDestination()Lorg/ton/block/MsgAddressInt;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->destination:Lorg/ton/block/MsgAddressInt;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "destination"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setBody(Lorg/ton/cell/Cell;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->body:Lorg/ton/cell/Cell;

    return-void
.end method

.method public final setCoins(Lorg/ton/block/Coins;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->currencyCollection:Lorg/ton/block/CurrencyCollection;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lorg/ton/block/CurrencyCollection;->copy$default(Lorg/ton/block/CurrencyCollection;Lorg/ton/block/Coins;Lorg/ton/block/ExtraCurrencyCollection;ILjava/lang/Object;)Lorg/ton/block/CurrencyCollection;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->currencyCollection:Lorg/ton/block/CurrencyCollection;

    return-void
.end method

.method public final setDestination(Lorg/ton/block/MsgAddressInt;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lorg/ton/contract/wallet/WalletTransferBuilder;->destination:Lorg/ton/block/MsgAddressInt;

    return-void
.end method
