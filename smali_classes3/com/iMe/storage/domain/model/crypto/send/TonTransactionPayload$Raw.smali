.class public final Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Raw;
.super Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;
.source "TonTransactionPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Raw"
.end annotation


# instance fields
.field private final data:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Raw;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCell()Lorg/ton/cell/Cell;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Raw;->data:Ljava/lang/String;

    invoke-static {v0}, Lio/ktor/util/Base64Kt;->decodeBase64Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/ton/boc/BagOfCellsKt;->BagOfCells([B)Lorg/ton/boc/BagOfCells;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/cell/Cell;

    return-object v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Raw;->data:Ljava/lang/String;

    return-object v0
.end method
