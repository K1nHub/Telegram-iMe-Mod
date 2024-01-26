.class public final Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ripple$SigningInput;",
        "Lwallet/core/jni/proto/Ripple$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3981
    invoke-static {}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$5000()Lwallet/core/jni/proto/Ripple$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ripple$1;)V
    .locals 0

    .line 3974
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccount()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4166
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4167
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$5900(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4032
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4033
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$5300(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearFlags()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4221
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4222
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6200(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearLastLedgerSequence()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4112
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4113
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$5700(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearOpNftokenAcceptOffer()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4501
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4502
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7900(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearOpNftokenBurn()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4405
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4406
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7300(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearOpNftokenCancelOffer()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4549
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4550
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$8200(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearOpNftokenCreateOffer()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4453
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4454
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7600(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearOpPayment()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4357
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4358
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7000(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearOpTrustSet()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4309
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4310
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6700(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearOperationOneof()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 3991
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3992
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$5100(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4261
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4262
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6400(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public clearSequence()Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1

    .line 4072
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4073
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$5500(Lwallet/core/jni/proto/Ripple$SigningInput;)V

    return-object p0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 4127
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4140
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getAccountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 4007
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlags()J
    .locals 2

    .line 4196
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastLedgerSequence()I
    .locals 1

    .line 4087
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getLastLedgerSequence()I

    move-result v0

    return v0
.end method

.method public getOpNftokenAcceptOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;
    .locals 1

    .line 4470
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getOpNftokenAcceptOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;

    move-result-object v0

    return-object v0
.end method

.method public getOpNftokenBurn()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
    .locals 1

    .line 4374
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getOpNftokenBurn()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    move-result-object v0

    return-object v0
.end method

.method public getOpNftokenCancelOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
    .locals 1

    .line 4518
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getOpNftokenCancelOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    move-result-object v0

    return-object v0
.end method

.method public getOpNftokenCreateOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
    .locals 1

    .line 4422
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getOpNftokenCreateOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    move-result-object v0

    return-object v0
.end method

.method public getOpPayment()Lwallet/core/jni/proto/Ripple$OperationPayment;
    .locals 1

    .line 4326
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getOpPayment()Lwallet/core/jni/proto/Ripple$OperationPayment;

    move-result-object v0

    return-object v0
.end method

.method public getOpTrustSet()Lwallet/core/jni/proto/Ripple$OperationTrustSet;
    .locals 1

    .line 4278
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getOpTrustSet()Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    move-result-object v0

    return-object v0
.end method

.method public getOperationOneofCase()Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;
    .locals 1

    .line 3987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getOperationOneofCase()Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4236
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 4047
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->getSequence()I

    move-result v0

    return v0
.end method

.method public hasOpNftokenAcceptOffer()Z
    .locals 1

    .line 4463
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->hasOpNftokenAcceptOffer()Z

    move-result v0

    return v0
.end method

.method public hasOpNftokenBurn()Z
    .locals 1

    .line 4367
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->hasOpNftokenBurn()Z

    move-result v0

    return v0
.end method

.method public hasOpNftokenCancelOffer()Z
    .locals 1

    .line 4511
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->hasOpNftokenCancelOffer()Z

    move-result v0

    return v0
.end method

.method public hasOpNftokenCreateOffer()Z
    .locals 1

    .line 4415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->hasOpNftokenCreateOffer()Z

    move-result v0

    return v0
.end method

.method public hasOpPayment()Z
    .locals 1

    .line 4319
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->hasOpPayment()Z

    move-result v0

    return v0
.end method

.method public hasOpTrustSet()Z
    .locals 1

    .line 4271
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningInput;->hasOpTrustSet()Z

    move-result v0

    return v0
.end method

.method public mergeOpNftokenAcceptOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4493
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4494
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7800(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)V

    return-object p0
.end method

.method public mergeOpNftokenBurn(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4397
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7200(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)V

    return-object p0
.end method

.method public mergeOpNftokenCancelOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4541
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4542
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$8100(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)V

    return-object p0
.end method

.method public mergeOpNftokenCreateOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4445
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4446
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7500(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V

    return-object p0
.end method

.method public mergeOpPayment(Lwallet/core/jni/proto/Ripple$OperationPayment;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4349
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4350
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6900(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationPayment;)V

    return-object p0
.end method

.method public mergeOpTrustSet(Lwallet/core/jni/proto/Ripple$OperationTrustSet;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4301
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6600(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationTrustSet;)V

    return-object p0
.end method

.method public setAccount(Ljava/lang/String;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4153
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4154
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$5800(Lwallet/core/jni/proto/Ripple$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAccountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4181
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4182
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6000(Lwallet/core/jni/proto/Ripple$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4019
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4020
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$5200(Lwallet/core/jni/proto/Ripple$SigningInput;J)V

    return-object p0
.end method

.method public setFlags(J)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4208
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4209
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6100(Lwallet/core/jni/proto/Ripple$SigningInput;J)V

    return-object p0
.end method

.method public setLastLedgerSequence(I)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4099
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4100
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$5600(Lwallet/core/jni/proto/Ripple$SigningInput;I)V

    return-object p0
.end method

.method public setOpNftokenAcceptOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer$Builder;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4485
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4486
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7700(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)V

    return-object p0
.end method

.method public setOpNftokenAcceptOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4476
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4477
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7700(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)V

    return-object p0
.end method

.method public setOpNftokenBurn(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4389
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4390
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7100(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)V

    return-object p0
.end method

.method public setOpNftokenBurn(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4380
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4381
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7100(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)V

    return-object p0
.end method

.method public setOpNftokenCancelOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4533
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4534
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$8000(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)V

    return-object p0
.end method

.method public setOpNftokenCancelOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4524
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4525
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$8000(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)V

    return-object p0
.end method

.method public setOpNftokenCreateOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4437
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7400(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V

    return-object p0
.end method

.method public setOpNftokenCreateOffer(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4428
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4429
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$7400(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V

    return-object p0
.end method

.method public setOpPayment(Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4341
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4342
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6800(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationPayment;)V

    return-object p0
.end method

.method public setOpPayment(Lwallet/core/jni/proto/Ripple$OperationPayment;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4332
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4333
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6800(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationPayment;)V

    return-object p0
.end method

.method public setOpTrustSet(Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4293
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4294
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6500(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationTrustSet;)V

    return-object p0
.end method

.method public setOpTrustSet(Lwallet/core/jni/proto/Ripple$OperationTrustSet;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4284
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4285
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6500(Lwallet/core/jni/proto/Ripple$SigningInput;Lwallet/core/jni/proto/Ripple$OperationTrustSet;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4248
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4249
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$6300(Lwallet/core/jni/proto/Ripple$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSequence(I)Lwallet/core/jni/proto/Ripple$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4059
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4060
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningInput;->access$5400(Lwallet/core/jni/proto/Ripple$SigningInput;I)V

    return-object p0
.end method
