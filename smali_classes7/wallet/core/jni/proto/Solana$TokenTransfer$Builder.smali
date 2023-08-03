.class public final Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$TokenTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$TokenTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$TokenTransfer;",
        "Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$TokenTransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5021
    invoke-static {}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$7000()Lwallet/core/jni/proto/Solana$TokenTransfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 5014
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllReferences(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;"
        }
    .end annotation

    .line 5476
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5477
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$8900(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addReferences(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5461
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5462
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$8800(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public addReferencesBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5504
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5505
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$9100(Lwallet/core/jni/proto/Solana$TokenTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1

    .line 5267
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5268
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$8100(Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-object p0
.end method

.method public clearDecimals()Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5308
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$8300(Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-object p0
.end method

.method public clearMemo()Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1

    .line 5361
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5362
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$8500(Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-object p0
.end method

.method public clearRecipientTokenAddress()Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1

    .line 5212
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$7800(Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-object p0
.end method

.method public clearReferences()Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1

    .line 5489
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5490
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$9000(Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-object p0
.end method

.method public clearSenderTokenAddress()Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1

    .line 5143
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5144
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$7500(Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-object p0
.end method

.method public clearTokenMintAddress()Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1

    .line 5074
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$7200(Lwallet/core/jni/proto/Solana$TokenTransfer;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 5242
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDecimals()I
    .locals 1

    .line 5282
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getDecimals()I

    move-result v0

    return v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 5322
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getMemo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5335
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientTokenAddress()Ljava/lang/String;
    .locals 1

    .line 5173
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getRecipientTokenAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientTokenAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5186
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getRecipientTokenAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReferences(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5418
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getReferences(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getReferencesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5432
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getReferencesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getReferencesCount()I
    .locals 1

    .line 5405
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getReferencesCount()I

    move-result v0

    return v0
.end method

.method public getReferencesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5392
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    .line 5393
    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getReferencesList()Ljava/util/List;

    move-result-object v0

    .line 5392
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSenderTokenAddress()Ljava/lang/String;
    .locals 1

    .line 5104
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getSenderTokenAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderTokenAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5117
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getSenderTokenAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenMintAddress()Ljava/lang/String;
    .locals 1

    .line 5035
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getTokenMintAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenMintAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5048
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getTokenMintAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5254
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5255
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$8000(Lwallet/core/jni/proto/Solana$TokenTransfer;J)V

    return-object p0
.end method

.method public setDecimals(I)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5294
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5295
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$8200(Lwallet/core/jni/proto/Solana$TokenTransfer;I)V

    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5348
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5349
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$8400(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5376
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5377
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$8600(Lwallet/core/jni/proto/Solana$TokenTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecipientTokenAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5199
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5200
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$7700(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecipientTokenAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5227
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5228
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$7900(Lwallet/core/jni/proto/Solana$TokenTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReferences(ILjava/lang/String;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
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

    .line 5446
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5447
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$8700(Lwallet/core/jni/proto/Solana$TokenTransfer;ILjava/lang/String;)V

    return-object p0
.end method

.method public setSenderTokenAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5130
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5131
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$7400(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderTokenAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5158
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5159
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$7600(Lwallet/core/jni/proto/Solana$TokenTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenMintAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5061
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5062
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$7100(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTokenMintAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5089
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5090
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->access$7300(Lwallet/core/jni/proto/Solana$TokenTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
