.class public final Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$SigningInput;",
        "Lwallet/core/jni/proto/Stellar$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5747
    invoke-static {}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$7200()Lwallet/core/jni/proto/Stellar$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 5740
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccount()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 5904
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$8000(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 5810
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5811
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$7600(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearMemoHash()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 6460
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6461
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$11300(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearMemoId()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 6412
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6413
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$11000(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearMemoReturnHash()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 6508
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6509
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$11600(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearMemoText()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 6364
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6365
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10700(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearMemoTypeOneof()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 5769
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5770
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$7400(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearMemoVoid()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 6316
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6317
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10400(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearOpChangeTrust()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 6172
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6173
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9500(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearOpClaimClaimableBalance()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 6268
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6269
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10100(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearOpCreateAccount()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 6076
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6077
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$8900(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearOpCreateClaimableBalance()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 6220
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9800(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearOpPayment()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 6124
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6125
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9200(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearOperationOneof()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 5757
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$7300(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearPassphrase()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 6013
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$8500(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 5959
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5960
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$8300(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public clearSequence()Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1

    .line 5850
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5851
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$7800(Lwallet/core/jni/proto/Stellar$SigningInput;)V

    return-object p0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 5865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5878
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getAccountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()I
    .locals 1

    .line 5785
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getFee()I

    move-result v0

    return v0
.end method

.method public getMemoHash()Lwallet/core/jni/proto/Stellar$MemoHash;
    .locals 1

    .line 6429
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getMemoHash()Lwallet/core/jni/proto/Stellar$MemoHash;

    move-result-object v0

    return-object v0
.end method

.method public getMemoId()Lwallet/core/jni/proto/Stellar$MemoId;
    .locals 1

    .line 6381
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getMemoId()Lwallet/core/jni/proto/Stellar$MemoId;

    move-result-object v0

    return-object v0
.end method

.method public getMemoReturnHash()Lwallet/core/jni/proto/Stellar$MemoHash;
    .locals 1

    .line 6477
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getMemoReturnHash()Lwallet/core/jni/proto/Stellar$MemoHash;

    move-result-object v0

    return-object v0
.end method

.method public getMemoText()Lwallet/core/jni/proto/Stellar$MemoText;
    .locals 1

    .line 6333
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getMemoText()Lwallet/core/jni/proto/Stellar$MemoText;

    move-result-object v0

    return-object v0
.end method

.method public getMemoTypeOneofCase()Lwallet/core/jni/proto/Stellar$SigningInput$MemoTypeOneofCase;
    .locals 1

    .line 5765
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getMemoTypeOneofCase()Lwallet/core/jni/proto/Stellar$SigningInput$MemoTypeOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getMemoVoid()Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1

    .line 6285
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getMemoVoid()Lwallet/core/jni/proto/Stellar$MemoVoid;

    move-result-object v0

    return-object v0
.end method

.method public getOpChangeTrust()Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
    .locals 1

    .line 6141
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getOpChangeTrust()Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    move-result-object v0

    return-object v0
.end method

.method public getOpClaimClaimableBalance()Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;
    .locals 1

    .line 6237
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getOpClaimClaimableBalance()Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;

    move-result-object v0

    return-object v0
.end method

.method public getOpCreateAccount()Lwallet/core/jni/proto/Stellar$OperationCreateAccount;
    .locals 1

    .line 6045
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getOpCreateAccount()Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    move-result-object v0

    return-object v0
.end method

.method public getOpCreateClaimableBalance()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
    .locals 1

    .line 6189
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getOpCreateClaimableBalance()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    move-result-object v0

    return-object v0
.end method

.method public getOpPayment()Lwallet/core/jni/proto/Stellar$OperationPayment;
    .locals 1

    .line 6093
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getOpPayment()Lwallet/core/jni/proto/Stellar$OperationPayment;

    move-result-object v0

    return-object v0
.end method

.method public getOperationOneofCase()Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;
    .locals 1

    .line 5753
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getOperationOneofCase()Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    .line 5974
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassphraseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getPassphraseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5934
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 5825
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->getSequence()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasMemoHash()Z
    .locals 1

    .line 6422
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->hasMemoHash()Z

    move-result v0

    return v0
.end method

.method public hasMemoId()Z
    .locals 1

    .line 6374
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->hasMemoId()Z

    move-result v0

    return v0
.end method

.method public hasMemoReturnHash()Z
    .locals 1

    .line 6470
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->hasMemoReturnHash()Z

    move-result v0

    return v0
.end method

.method public hasMemoText()Z
    .locals 1

    .line 6326
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->hasMemoText()Z

    move-result v0

    return v0
.end method

.method public hasMemoVoid()Z
    .locals 1

    .line 6278
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->hasMemoVoid()Z

    move-result v0

    return v0
.end method

.method public hasOpChangeTrust()Z
    .locals 1

    .line 6134
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->hasOpChangeTrust()Z

    move-result v0

    return v0
.end method

.method public hasOpClaimClaimableBalance()Z
    .locals 1

    .line 6230
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->hasOpClaimClaimableBalance()Z

    move-result v0

    return v0
.end method

.method public hasOpCreateAccount()Z
    .locals 1

    .line 6038
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->hasOpCreateAccount()Z

    move-result v0

    return v0
.end method

.method public hasOpCreateClaimableBalance()Z
    .locals 1

    .line 6182
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->hasOpCreateClaimableBalance()Z

    move-result v0

    return v0
.end method

.method public hasOpPayment()Z
    .locals 1

    .line 6086
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningInput;->hasOpPayment()Z

    move-result v0

    return v0
.end method

.method public mergeMemoHash(Lwallet/core/jni/proto/Stellar$MemoHash;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6452
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6453
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$11200(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoHash;)V

    return-object p0
.end method

.method public mergeMemoId(Lwallet/core/jni/proto/Stellar$MemoId;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6404
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6405
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10900(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoId;)V

    return-object p0
.end method

.method public mergeMemoReturnHash(Lwallet/core/jni/proto/Stellar$MemoHash;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6500
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6501
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$11500(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoHash;)V

    return-object p0
.end method

.method public mergeMemoText(Lwallet/core/jni/proto/Stellar$MemoText;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6356
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6357
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10600(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoText;)V

    return-object p0
.end method

.method public mergeMemoVoid(Lwallet/core/jni/proto/Stellar$MemoVoid;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6308
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6309
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10300(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoVoid;)V

    return-object p0
.end method

.method public mergeOpChangeTrust(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6164
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6165
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9400(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V

    return-object p0
.end method

.method public mergeOpClaimClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6260
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6261
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10000(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)V

    return-object p0
.end method

.method public mergeOpCreateAccount(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6068
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6069
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$8800(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)V

    return-object p0
.end method

.method public mergeOpCreateClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6212
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9700(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V

    return-object p0
.end method

.method public mergeOpPayment(Lwallet/core/jni/proto/Stellar$OperationPayment;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6116
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6117
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9100(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationPayment;)V

    return-object p0
.end method

.method public setAccount(Ljava/lang/String;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5891
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5892
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$7900(Lwallet/core/jni/proto/Stellar$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAccountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5919
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5920
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$8100(Lwallet/core/jni/proto/Stellar$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFee(I)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5797
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5798
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$7500(Lwallet/core/jni/proto/Stellar$SigningInput;I)V

    return-object p0
.end method

.method public setMemoHash(Lwallet/core/jni/proto/Stellar$MemoHash$Builder;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6444
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6445
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$11100(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoHash;)V

    return-object p0
.end method

.method public setMemoHash(Lwallet/core/jni/proto/Stellar$MemoHash;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6435
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6436
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$11100(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoHash;)V

    return-object p0
.end method

.method public setMemoId(Lwallet/core/jni/proto/Stellar$MemoId$Builder;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6396
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6397
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10800(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoId;)V

    return-object p0
.end method

.method public setMemoId(Lwallet/core/jni/proto/Stellar$MemoId;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6387
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6388
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10800(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoId;)V

    return-object p0
.end method

.method public setMemoReturnHash(Lwallet/core/jni/proto/Stellar$MemoHash$Builder;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6492
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6493
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$11400(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoHash;)V

    return-object p0
.end method

.method public setMemoReturnHash(Lwallet/core/jni/proto/Stellar$MemoHash;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6483
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6484
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$11400(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoHash;)V

    return-object p0
.end method

.method public setMemoText(Lwallet/core/jni/proto/Stellar$MemoText$Builder;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6348
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6349
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$MemoText;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10500(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoText;)V

    return-object p0
.end method

.method public setMemoText(Lwallet/core/jni/proto/Stellar$MemoText;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6339
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10500(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoText;)V

    return-object p0
.end method

.method public setMemoVoid(Lwallet/core/jni/proto/Stellar$MemoVoid$Builder;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6300
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6301
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10200(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoVoid;)V

    return-object p0
.end method

.method public setMemoVoid(Lwallet/core/jni/proto/Stellar$MemoVoid;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6291
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6292
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$10200(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$MemoVoid;)V

    return-object p0
.end method

.method public setOpChangeTrust(Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6156
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6157
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9300(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V

    return-object p0
.end method

.method public setOpChangeTrust(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6147
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6148
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9300(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V

    return-object p0
.end method

.method public setOpClaimClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance$Builder;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6252
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6253
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9900(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)V

    return-object p0
.end method

.method public setOpClaimClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6243
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6244
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9900(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)V

    return-object p0
.end method

.method public setOpCreateAccount(Lwallet/core/jni/proto/Stellar$OperationCreateAccount$Builder;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6060
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6061
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$8700(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)V

    return-object p0
.end method

.method public setOpCreateAccount(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6051
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6052
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$8700(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)V

    return-object p0
.end method

.method public setOpCreateClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6204
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6205
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9600(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V

    return-object p0
.end method

.method public setOpCreateClaimableBalance(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6195
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6196
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9600(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V

    return-object p0
.end method

.method public setOpPayment(Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6108
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6109
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9000(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationPayment;)V

    return-object p0
.end method

.method public setOpPayment(Lwallet/core/jni/proto/Stellar$OperationPayment;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6099
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6100
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$9000(Lwallet/core/jni/proto/Stellar$SigningInput;Lwallet/core/jni/proto/Stellar$OperationPayment;)V

    return-object p0
.end method

.method public setPassphrase(Ljava/lang/String;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6000
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6001
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$8400(Lwallet/core/jni/proto/Stellar$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPassphraseBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6028
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$8600(Lwallet/core/jni/proto/Stellar$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5946
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5947
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$8200(Lwallet/core/jni/proto/Stellar$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSequence(J)Lwallet/core/jni/proto/Stellar$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5837
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Stellar$SigningInput;->access$7700(Lwallet/core/jni/proto/Stellar$SigningInput;J)V

    return-object p0
.end method
