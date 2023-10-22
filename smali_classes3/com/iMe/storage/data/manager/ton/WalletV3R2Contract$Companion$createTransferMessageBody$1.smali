.class final Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletV3R2Contract.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->createTransferMessageBody(Lorg/ton/api/pk/PrivateKeyEd25519;III[Lorg/ton/contract/wallet/WalletTransfer;)Lorg/ton/cell/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/ton/cell/CellBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $signature:Lorg/ton/bitstring/BitString;

.field final synthetic $unsignedBody:Lorg/ton/cell/Cell;


# direct methods
.method constructor <init>(Lorg/ton/bitstring/BitString;Lorg/ton/cell/Cell;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$1;->$signature:Lorg/ton/bitstring/BitString;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$1;->$unsignedBody:Lorg/ton/cell/Cell;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 207
    check-cast p1, Lorg/ton/cell/CellBuilder;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$1;->invoke(Lorg/ton/cell/CellBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/ton/cell/CellBuilder;)V
    .locals 1

    const-string v0, "$this$createCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$1;->$signature:Lorg/ton/bitstring/BitString;

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 209
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$1;->$unsignedBody:Lorg/ton/cell/Cell;

    invoke-interface {v0}, Lorg/ton/cell/Cell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 210
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$1;->$unsignedBody:Lorg/ton/cell/Cell;

    invoke-interface {v0}, Lorg/ton/cell/Cell;->getRefs()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRefs(Ljava/util/Collection;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
