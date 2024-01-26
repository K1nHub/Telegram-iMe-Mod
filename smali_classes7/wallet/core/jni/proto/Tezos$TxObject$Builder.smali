.class public final Lwallet/core/jni/proto/Tezos$TxObject$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$TxObjectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$TxObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tezos$TxObject;",
        "Lwallet/core/jni/proto/Tezos$TxObject$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$TxObjectOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4269
    invoke-static {}, Lwallet/core/jni/proto/Tezos$TxObject;->access$7500()Lwallet/core/jni/proto/Tezos$TxObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tezos$1;)V
    .locals 0

    .line 4262
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TxObject$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTxs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Tezos$Txs;",
            ">;)",
            "Lwallet/core/jni/proto/Tezos$TxObject$Builder;"
        }
    .end annotation

    .line 4403
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4404
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->access$8200(Lwallet/core/jni/proto/Tezos$TxObject;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTxs(ILwallet/core/jni/proto/Tezos$Txs$Builder;)Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 4393
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4394
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    .line 4395
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tezos$Txs;

    .line 4394
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$TxObject;->access$8100(Lwallet/core/jni/proto/Tezos$TxObject;ILwallet/core/jni/proto/Tezos$Txs;)V

    return-object p0
.end method

.method public addTxs(ILwallet/core/jni/proto/Tezos$Txs;)Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 4375
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4376
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$TxObject;->access$8100(Lwallet/core/jni/proto/Tezos$TxObject;ILwallet/core/jni/proto/Tezos$Txs;)V

    return-object p0
.end method

.method public addTxs(Lwallet/core/jni/proto/Tezos$Txs$Builder;)Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4384
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4385
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->access$8000(Lwallet/core/jni/proto/Tezos$TxObject;Lwallet/core/jni/proto/Tezos$Txs;)V

    return-object p0
.end method

.method public addTxs(Lwallet/core/jni/proto/Tezos$Txs;)Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4366
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4367
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->access$8000(Lwallet/core/jni/proto/Tezos$TxObject;Lwallet/core/jni/proto/Tezos$Txs;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1

    .line 4306
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4307
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$TxObject;->access$7700(Lwallet/core/jni/proto/Tezos$TxObject;)V

    return-object p0
.end method

.method public clearTxs()Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1

    .line 4411
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$TxObject;->access$8300(Lwallet/core/jni/proto/Tezos$TxObject;)V

    return-object p0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 4279
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$TxObject;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4288
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$TxObject;->getFromBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTxs(I)Lwallet/core/jni/proto/Tezos$Txs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4341
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->getTxs(I)Lwallet/core/jni/proto/Tezos$Txs;

    move-result-object p1

    return-object p1
.end method

.method public getTxsCount()I
    .locals 1

    .line 4335
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$TxObject;->getTxsCount()I

    move-result v0

    return v0
.end method

.method public getTxsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Tezos$Txs;",
            ">;"
        }
    .end annotation

    .line 4327
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    .line 4328
    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$TxObject;->getTxsList()Ljava/util/List;

    move-result-object v0

    .line 4327
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeTxs(I)Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4419
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->access$8400(Lwallet/core/jni/proto/Tezos$TxObject;I)V

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4297
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4298
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->access$7600(Lwallet/core/jni/proto/Tezos$TxObject;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4317
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4318
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->access$7800(Lwallet/core/jni/proto/Tezos$TxObject;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTxs(ILwallet/core/jni/proto/Tezos$Txs$Builder;)Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 4357
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4358
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    .line 4359
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tezos$Txs;

    .line 4358
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$TxObject;->access$7900(Lwallet/core/jni/proto/Tezos$TxObject;ILwallet/core/jni/proto/Tezos$Txs;)V

    return-object p0
.end method

.method public setTxs(ILwallet/core/jni/proto/Tezos$Txs;)Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 4348
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4349
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$TxObject;->access$7900(Lwallet/core/jni/proto/Tezos$TxObject;ILwallet/core/jni/proto/Tezos$Txs;)V

    return-object p0
.end method
