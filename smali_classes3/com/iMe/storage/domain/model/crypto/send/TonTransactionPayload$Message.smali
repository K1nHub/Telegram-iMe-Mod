.class public final Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;
.super Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;
.source "TonTransactionPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# instance fields
.field private final isUnencrypted:Z

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;->message:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;->isUnencrypted:Z

    return-void
.end method


# virtual methods
.method public getCell()Lorg/ton/cell/Cell;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 20
    :cond_2
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    new-instance v1, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message$cell$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message$cell$1;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;)V

    invoke-virtual {v0, v1}, Lorg/ton/cell/CellBuilder$Companion;->createCell(Lkotlin/jvm/functions/Function1;)Lorg/ton/cell/Cell;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final isUnencrypted()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;->isUnencrypted:Z

    return v0
.end method
