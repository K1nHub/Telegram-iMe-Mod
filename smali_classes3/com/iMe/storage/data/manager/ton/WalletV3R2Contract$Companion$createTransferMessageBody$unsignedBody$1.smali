.class final Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletV3R2Contract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletV3R2Contract.kt\ncom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1\n+ 2 CellRef.kt\norg/ton/tlb/CellRefKt\n*L\n1#1,249:1\n11#2:250\n106#2,2:251\n*S KotlinDebug\n*F\n+ 1 WalletV3R2Contract.kt\ncom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1\n*L\n204#1:250\n207#1:251,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $seqno:I

.field final synthetic $transfers:[Lorg/ton/contract/wallet/WalletTransfer;

.field final synthetic $validUntil:I

.field final synthetic $walletId:I


# direct methods
.method constructor <init>(III[Lorg/ton/contract/wallet/WalletTransfer;)V
    .locals 0

    iput p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;->$walletId:I

    iput p2, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;->$validUntil:I

    iput p3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;->$seqno:I

    iput-object p4, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;->$transfers:[Lorg/ton/contract/wallet/WalletTransfer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 195
    check-cast p1, Lorg/ton/cell/CellBuilder;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;->invoke(Lorg/ton/cell/CellBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/ton/cell/CellBuilder;)V
    .locals 7

    const-string v0, "$this$createCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;->$walletId:I

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 197
    iget v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;->$validUntil:I

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 198
    iget v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;->$seqno:I

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 199
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1;->$transfers:[Lorg/ton/contract/wallet/WalletTransfer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x3

    .line 201
    invoke-virtual {v3}, Lorg/ton/contract/wallet/WalletTransfer;->getSendMode()I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    .line 202
    invoke-virtual {v3}, Lorg/ton/contract/wallet/WalletTransfer;->getSendMode()I

    move-result v4

    .line 204
    :cond_0
    sget-object v5, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->Companion:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    invoke-static {v5, v3}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->access$createIntMsg(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;Lorg/ton/contract/wallet/WalletTransfer;)Lorg/ton/block/MessageRelaxed;

    move-result-object v3

    const/4 v5, 0x0

    .line 11
    sget-object v6, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v6, v3, v5}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Ljava/lang/Object;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v3

    const/16 v5, 0x8

    .line 206
    invoke-interface {p1, v4, v5}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 207
    sget-object v4, Lorg/ton/block/MessageRelaxed;->Companion:Lorg/ton/block/MessageRelaxed$Companion;

    sget-object v5, Lorg/ton/tlb/constructor/AnyTlbConstructor;->INSTANCE:Lorg/ton/tlb/constructor/AnyTlbConstructor;

    invoke-virtual {v4, v5}, Lorg/ton/block/MessageRelaxed$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbConstructor;

    move-result-object v4

    .line 106
    invoke-interface {v3, v4}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
