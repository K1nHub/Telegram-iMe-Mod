.class final Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createStateInit$data$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletV3R2Contract.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->createStateInit(Lorg/ton/api/pub/PublicKeyEd25519;II)Lorg/ton/block/StateInit;
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
.field final synthetic $publicKey:Lorg/ton/api/pub/PublicKeyEd25519;

.field final synthetic $seqno:I

.field final synthetic $walletId:I


# direct methods
.method constructor <init>(IILorg/ton/api/pub/PublicKeyEd25519;)V
    .locals 0

    iput p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createStateInit$data$1;->$seqno:I

    iput p2, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createStateInit$data$1;->$walletId:I

    iput-object p3, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createStateInit$data$1;->$publicKey:Lorg/ton/api/pub/PublicKeyEd25519;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p1, Lorg/ton/cell/CellBuilder;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createStateInit$data$1;->invoke(Lorg/ton/cell/CellBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/ton/cell/CellBuilder;)V
    .locals 2

    const-string v0, "$this$createCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createStateInit$data$1;->$seqno:I

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 174
    iget v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createStateInit$data$1;->$walletId:I

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 175
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$createStateInit$data$1;->$publicKey:Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-virtual {v0}, Lorg/ton/api/pub/PublicKeyEd25519;->getKey()Lorg/ton/tl/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBytes([B)Lorg/ton/cell/CellBuilder;

    return-void
.end method
