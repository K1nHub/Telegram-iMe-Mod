.class public final Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$SigningInput;",
        "Lwallet/core/jni/proto/Aptos$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6738
    invoke-static {}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$10000()Lwallet/core/jni/proto/Aptos$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 6731
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAnyEncoded()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 7112
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7113
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$11800(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearChainId()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 7018
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7019
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$11400(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearCreateAccount()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 7271
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7272
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12800(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearExpirationTimestampSecs()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 6978
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$11200(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearGasUnitPrice()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 6938
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6939
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$11000(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearMaxGasAmount()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 6898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$10800(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearNftMessage()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 7319
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7320
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$13100(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 7058
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7059
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$11600(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearRegisterToken()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 7367
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7368
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$13400(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearSender()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 6803
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6804
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$10300(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearSequenceNumber()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 6858
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6859
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$10600(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearTokenTransfer()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 7223
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7224
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12500(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearTransactionPayload()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 6748
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6749
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$10100(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1

    .line 7175
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7176
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12200(Lwallet/core/jni/proto/Aptos$SigningInput;)V

    return-object p0
.end method

.method public getAnyEncoded()Ljava/lang/String;
    .locals 1

    .line 7073
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getAnyEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnyEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7086
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getAnyEncodedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChainId()I
    .locals 1

    .line 6993
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getChainId()I

    move-result v0

    return v0
.end method

.method public getCreateAccount()Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
    .locals 1

    .line 7240
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getCreateAccount()Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTimestampSecs()J
    .locals 2

    .line 6953
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getExpirationTimestampSecs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGasUnitPrice()J
    .locals 2

    .line 6913
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getGasUnitPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxGasAmount()J
    .locals 2

    .line 6873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getMaxGasAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNftMessage()Lwallet/core/jni/proto/Aptos$NftMessage;
    .locals 1

    .line 7288
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getNftMessage()Lwallet/core/jni/proto/Aptos$NftMessage;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7033
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterToken()Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
    .locals 1

    .line 7336
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getRegisterToken()Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 6764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getSender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6777
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getSenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .line 6833
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getSequenceNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTokenTransfer()Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
    .locals 1

    .line 7192
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getTokenTransfer()Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionPayloadCase()Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;
    .locals 1

    .line 6744
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getTransactionPayloadCase()Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Aptos$TransferMessage;
    .locals 1

    .line 7144
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->getTransfer()Lwallet/core/jni/proto/Aptos$TransferMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasCreateAccount()Z
    .locals 1

    .line 7233
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->hasCreateAccount()Z

    move-result v0

    return v0
.end method

.method public hasNftMessage()Z
    .locals 1

    .line 7281
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->hasNftMessage()Z

    move-result v0

    return v0
.end method

.method public hasRegisterToken()Z
    .locals 1

    .line 7329
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->hasRegisterToken()Z

    move-result v0

    return v0
.end method

.method public hasTokenTransfer()Z
    .locals 1

    .line 7185
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->hasTokenTransfer()Z

    move-result v0

    return v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 7137
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningInput;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeCreateAccount(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7263
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7264
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12700(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)V

    return-object p0
.end method

.method public mergeNftMessage(Lwallet/core/jni/proto/Aptos$NftMessage;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7311
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7312
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$13000(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$NftMessage;)V

    return-object p0
.end method

.method public mergeRegisterToken(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7359
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7360
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$13300(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)V

    return-object p0
.end method

.method public mergeTokenTransfer(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7215
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7216
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12400(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V

    return-object p0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/Aptos$TransferMessage;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7167
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7168
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12100(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$TransferMessage;)V

    return-object p0
.end method

.method public setAnyEncoded(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7099
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7100
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$11700(Lwallet/core/jni/proto/Aptos$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAnyEncodedBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7127
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7128
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$11900(Lwallet/core/jni/proto/Aptos$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setChainId(I)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7005
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7006
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$11300(Lwallet/core/jni/proto/Aptos$SigningInput;I)V

    return-object p0
.end method

.method public setCreateAccount(Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7255
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7256
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12600(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)V

    return-object p0
.end method

.method public setCreateAccount(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7246
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7247
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12600(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)V

    return-object p0
.end method

.method public setExpirationTimestampSecs(J)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6965
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6966
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$11100(Lwallet/core/jni/proto/Aptos$SigningInput;J)V

    return-object p0
.end method

.method public setGasUnitPrice(J)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6925
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6926
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$10900(Lwallet/core/jni/proto/Aptos$SigningInput;J)V

    return-object p0
.end method

.method public setMaxGasAmount(J)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6885
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$10700(Lwallet/core/jni/proto/Aptos$SigningInput;J)V

    return-object p0
.end method

.method public setNftMessage(Lwallet/core/jni/proto/Aptos$NftMessage$Builder;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7303
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7304
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12900(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$NftMessage;)V

    return-object p0
.end method

.method public setNftMessage(Lwallet/core/jni/proto/Aptos$NftMessage;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7294
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7295
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12900(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$NftMessage;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7045
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7046
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$11500(Lwallet/core/jni/proto/Aptos$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRegisterToken(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7351
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7352
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$13200(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)V

    return-object p0
.end method

.method public setRegisterToken(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7342
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7343
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$13200(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)V

    return-object p0
.end method

.method public setSender(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6790
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$10200(Lwallet/core/jni/proto/Aptos$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6818
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$10400(Lwallet/core/jni/proto/Aptos$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSequenceNumber(J)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6845
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6846
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$10500(Lwallet/core/jni/proto/Aptos$SigningInput;J)V

    return-object p0
.end method

.method public setTokenTransfer(Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7207
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7208
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12300(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V

    return-object p0
.end method

.method public setTokenTransfer(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7198
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7199
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12300(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Aptos$TransferMessage$Builder;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7159
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7160
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12000(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$TransferMessage;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Aptos$TransferMessage;)Lwallet/core/jni/proto/Aptos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7150
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7151
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningInput;->access$12000(Lwallet/core/jni/proto/Aptos$SigningInput;Lwallet/core/jni/proto/Aptos$TransferMessage;)V

    return-object p0
.end method
