.class public final Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$CreateAndTransferTokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$CreateAndTransferToken;",
        "Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$CreateAndTransferTokenOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6410
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$9300()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 6403
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllReferences(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
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
            "Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;"
        }
    .end annotation

    .line 6934
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6935
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$11500(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addReferences(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6919
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6920
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$11400(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V

    return-object p0
.end method

.method public addReferencesBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6962
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$11700(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1

    .line 6725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6726
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$10700(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-object p0
.end method

.method public clearDecimals()Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1

    .line 6765
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6766
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$10900(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-object p0
.end method

.method public clearMemo()Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1

    .line 6819
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6820
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$11100(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-object p0
.end method

.method public clearRecipientMainAddress()Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1

    .line 6463
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6464
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$9500(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-object p0
.end method

.method public clearRecipientTokenAddress()Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1

    .line 6601
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6602
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$10100(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-object p0
.end method

.method public clearReferences()Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1

    .line 6947
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6948
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$11600(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-object p0
.end method

.method public clearSenderTokenAddress()Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1

    .line 6670
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6671
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$10400(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-object p0
.end method

.method public clearTokenMintAddress()Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1

    .line 6532
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6533
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$9800(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 6700
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDecimals()I
    .locals 1

    .line 6740
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getDecimals()I

    move-result v0

    return v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 6780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getMemo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6793
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientMainAddress()Ljava/lang/String;
    .locals 1

    .line 6424
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getRecipientMainAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientMainAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6437
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getRecipientMainAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientTokenAddress()Ljava/lang/String;
    .locals 1

    .line 6562
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getRecipientTokenAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientTokenAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6575
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getRecipientTokenAddressBytes()Lcom/google/protobuf/ByteString;

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

    .line 6876
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getReferences(I)Ljava/lang/String;

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

    .line 6890
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getReferencesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getReferencesCount()I
    .locals 1

    .line 6863
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getReferencesCount()I

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

    .line 6850
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    .line 6851
    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getReferencesList()Ljava/util/List;

    move-result-object v0

    .line 6850
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSenderTokenAddress()Ljava/lang/String;
    .locals 1

    .line 6631
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getSenderTokenAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderTokenAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6644
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getSenderTokenAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenMintAddress()Ljava/lang/String;
    .locals 1

    .line 6493
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getTokenMintAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenMintAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6506
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getTokenMintAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6712
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6713
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$10600(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;J)V

    return-object p0
.end method

.method public setDecimals(I)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6752
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6753
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$10800(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;I)V

    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6806
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6807
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$11000(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6834
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6835
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$11200(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecipientMainAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6450
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6451
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$9400(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecipientMainAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6478
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6479
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$9600(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecipientTokenAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6588
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6589
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$10000(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecipientTokenAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6616
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6617
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$10200(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReferences(ILjava/lang/String;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
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

    .line 6904
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$11300(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;ILjava/lang/String;)V

    return-object p0
.end method

.method public setSenderTokenAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6657
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6658
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$10300(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderTokenAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6685
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6686
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$10500(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenMintAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6519
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6520
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$9700(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTokenMintAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6547
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6548
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->access$9900(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
