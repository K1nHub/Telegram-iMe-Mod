.class final Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message$cell$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TonTransactionPayload.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;->getCell()Lorg/ton/cell/Cell;
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
.field final synthetic this$0:Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;


# direct methods
.method constructor <init>(Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message$cell$1;->this$0:Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lorg/ton/cell/CellBuilder;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message$cell$1;->invoke(Lorg/ton/cell/CellBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/ton/cell/CellBuilder;)V
    .locals 2

    const-string v0, "$this$createCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 21
    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message$cell$1;->this$0:Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x400

    .line 25
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v0

    .line 22
    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBytes([B)Lorg/ton/cell/CellBuilder;

    return-void
.end method
