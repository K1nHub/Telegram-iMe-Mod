.class public final Lwallet/core/jni/proto/NEAR$Action$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$ActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$Action;",
        "Lwallet/core/jni/proto/NEAR$Action$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$ActionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5166
    invoke-static {}, Lwallet/core/jni/proto/NEAR$Action;->access$7700()Lwallet/core/jni/proto/NEAR$Action;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 5159
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Action$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAddKey()Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1

    .line 5465
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5466
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Action;->access$9600(Lwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public clearCreateAccount()Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1

    .line 5225
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5226
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Action;->access$8100(Lwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public clearDeleteAccount()Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1

    .line 5561
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5562
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Action;->access$10200(Lwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public clearDeleteKey()Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1

    .line 5513
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Action;->access$9900(Lwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public clearDeployContract()Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1

    .line 5273
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5274
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Action;->access$8400(Lwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public clearFunctionCall()Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1

    .line 5321
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5322
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Action;->access$8700(Lwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1

    .line 5176
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5177
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Action;->access$7800(Lwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public clearStake()Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1

    .line 5417
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5418
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Action;->access$9300(Lwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1

    .line 5369
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5370
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Action;->access$9000(Lwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public getAddKey()Lwallet/core/jni/proto/NEAR$AddKey;
    .locals 1

    .line 5434
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->getAddKey()Lwallet/core/jni/proto/NEAR$AddKey;

    move-result-object v0

    return-object v0
.end method

.method public getCreateAccount()Lwallet/core/jni/proto/NEAR$CreateAccount;
    .locals 1

    .line 5194
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->getCreateAccount()Lwallet/core/jni/proto/NEAR$CreateAccount;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAccount()Lwallet/core/jni/proto/NEAR$DeleteAccount;
    .locals 1

    .line 5530
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->getDeleteAccount()Lwallet/core/jni/proto/NEAR$DeleteAccount;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteKey()Lwallet/core/jni/proto/NEAR$DeleteKey;
    .locals 1

    .line 5482
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->getDeleteKey()Lwallet/core/jni/proto/NEAR$DeleteKey;

    move-result-object v0

    return-object v0
.end method

.method public getDeployContract()Lwallet/core/jni/proto/NEAR$DeployContract;
    .locals 1

    .line 5242
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->getDeployContract()Lwallet/core/jni/proto/NEAR$DeployContract;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionCall()Lwallet/core/jni/proto/NEAR$FunctionCall;
    .locals 1

    .line 5290
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->getFunctionCall()Lwallet/core/jni/proto/NEAR$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadCase()Lwallet/core/jni/proto/NEAR$Action$PayloadCase;
    .locals 1

    .line 5172
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->getPayloadCase()Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getStake()Lwallet/core/jni/proto/NEAR$Stake;
    .locals 1

    .line 5386
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->getStake()Lwallet/core/jni/proto/NEAR$Stake;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/NEAR$Transfer;
    .locals 1

    .line 5338
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->getTransfer()Lwallet/core/jni/proto/NEAR$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasAddKey()Z
    .locals 1

    .line 5427
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->hasAddKey()Z

    move-result v0

    return v0
.end method

.method public hasCreateAccount()Z
    .locals 1

    .line 5187
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->hasCreateAccount()Z

    move-result v0

    return v0
.end method

.method public hasDeleteAccount()Z
    .locals 1

    .line 5523
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->hasDeleteAccount()Z

    move-result v0

    return v0
.end method

.method public hasDeleteKey()Z
    .locals 1

    .line 5475
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->hasDeleteKey()Z

    move-result v0

    return v0
.end method

.method public hasDeployContract()Z
    .locals 1

    .line 5235
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->hasDeployContract()Z

    move-result v0

    return v0
.end method

.method public hasFunctionCall()Z
    .locals 1

    .line 5283
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->hasFunctionCall()Z

    move-result v0

    return v0
.end method

.method public hasStake()Z
    .locals 1

    .line 5379
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->hasStake()Z

    move-result v0

    return v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 5331
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Action;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeAddKey(Lwallet/core/jni/proto/NEAR$AddKey;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5457
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5458
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$9500(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$AddKey;)V

    return-object p0
.end method

.method public mergeCreateAccount(Lwallet/core/jni/proto/NEAR$CreateAccount;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5217
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5218
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$8000(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$CreateAccount;)V

    return-object p0
.end method

.method public mergeDeleteAccount(Lwallet/core/jni/proto/NEAR$DeleteAccount;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$10100(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeleteAccount;)V

    return-object p0
.end method

.method public mergeDeleteKey(Lwallet/core/jni/proto/NEAR$DeleteKey;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5505
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5506
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$9800(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeleteKey;)V

    return-object p0
.end method

.method public mergeDeployContract(Lwallet/core/jni/proto/NEAR$DeployContract;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5265
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5266
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$8300(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeployContract;)V

    return-object p0
.end method

.method public mergeFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCall;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5313
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5314
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$8600(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$FunctionCall;)V

    return-object p0
.end method

.method public mergeStake(Lwallet/core/jni/proto/NEAR$Stake;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5409
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5410
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$9200(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$Stake;)V

    return-object p0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/NEAR$Transfer;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5361
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5362
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$8900(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$Transfer;)V

    return-object p0
.end method

.method public setAddKey(Lwallet/core/jni/proto/NEAR$AddKey$Builder;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5449
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5450
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$9400(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$AddKey;)V

    return-object p0
.end method

.method public setAddKey(Lwallet/core/jni/proto/NEAR$AddKey;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5440
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5441
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$9400(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$AddKey;)V

    return-object p0
.end method

.method public setCreateAccount(Lwallet/core/jni/proto/NEAR$CreateAccount$Builder;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5209
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5210
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$CreateAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$7900(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$CreateAccount;)V

    return-object p0
.end method

.method public setCreateAccount(Lwallet/core/jni/proto/NEAR$CreateAccount;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5200
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5201
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$7900(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$CreateAccount;)V

    return-object p0
.end method

.method public setDeleteAccount(Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5545
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5546
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$10000(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeleteAccount;)V

    return-object p0
.end method

.method public setDeleteAccount(Lwallet/core/jni/proto/NEAR$DeleteAccount;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5536
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5537
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$10000(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeleteAccount;)V

    return-object p0
.end method

.method public setDeleteKey(Lwallet/core/jni/proto/NEAR$DeleteKey$Builder;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5497
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5498
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$DeleteKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$9700(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeleteKey;)V

    return-object p0
.end method

.method public setDeleteKey(Lwallet/core/jni/proto/NEAR$DeleteKey;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5488
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5489
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$9700(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeleteKey;)V

    return-object p0
.end method

.method public setDeployContract(Lwallet/core/jni/proto/NEAR$DeployContract$Builder;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5257
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5258
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$DeployContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$8200(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeployContract;)V

    return-object p0
.end method

.method public setDeployContract(Lwallet/core/jni/proto/NEAR$DeployContract;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5248
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5249
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$8200(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeployContract;)V

    return-object p0
.end method

.method public setFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5305
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5306
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$8500(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$FunctionCall;)V

    return-object p0
.end method

.method public setFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCall;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5296
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5297
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$8500(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$FunctionCall;)V

    return-object p0
.end method

.method public setStake(Lwallet/core/jni/proto/NEAR$Stake$Builder;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$9100(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$Stake;)V

    return-object p0
.end method

.method public setStake(Lwallet/core/jni/proto/NEAR$Stake;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5392
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5393
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$9100(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$Stake;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/NEAR$Transfer$Builder;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5353
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5354
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$8800(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$Transfer;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/NEAR$Transfer;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5344
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Action;->access$8800(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$Transfer;)V

    return-object p0
.end method
