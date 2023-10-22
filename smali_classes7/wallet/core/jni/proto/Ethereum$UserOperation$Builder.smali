.class public final Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$UserOperationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$UserOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ethereum$UserOperation;",
        "Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$UserOperationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4692
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$7100()Lwallet/core/jni/proto/Ethereum$UserOperation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ethereum$1;)V
    .locals 0

    .line 4685
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccountFactory()Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1

    .line 4814
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4815
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$7600(Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-object p0
.end method

.method public clearAccountLogic()Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1

    .line 4883
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4884
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$7900(Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-object p0
.end method

.method public clearEntryPoint()Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1

    .line 4745
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4746
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$7300(Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-object p0
.end method

.method public clearIsAccountDeployed()Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1

    .line 5007
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5008
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$8500(Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-object p0
.end method

.method public clearOwner()Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1

    .line 4952
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4953
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$8200(Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-object p0
.end method

.method public clearPaymasterAndData()Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1

    .line 5127
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5128
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$9100(Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-object p0
.end method

.method public clearPreVerificationGas()Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1

    .line 5047
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5048
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$8700(Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-object p0
.end method

.method public clearVerificationGasLimit()Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1

    .line 5087
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5088
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$8900(Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-object p0
.end method

.method public getAccountFactory()Ljava/lang/String;
    .locals 1

    .line 4775
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getAccountFactory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountFactoryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4788
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getAccountFactoryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAccountLogic()Ljava/lang/String;
    .locals 1

    .line 4844
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getAccountLogic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountLogicBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4857
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getAccountLogicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPoint()Ljava/lang/String;
    .locals 1

    .line 4706
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPointBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4719
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getEntryPointBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIsAccountDeployed()Z
    .locals 1

    .line 4982
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getIsAccountDeployed()Z

    move-result v0

    return v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 4913
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4926
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getOwnerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPaymasterAndData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5102
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getPaymasterAndData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPreVerificationGas()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5022
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getPreVerificationGas()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVerificationGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5062
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getVerificationGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAccountFactory(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4801
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4802
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$7500(Lwallet/core/jni/proto/Ethereum$UserOperation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAccountFactoryBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4829
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4830
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$7700(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAccountLogic(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4870
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4871
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$7800(Lwallet/core/jni/proto/Ethereum$UserOperation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAccountLogicBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$8000(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEntryPoint(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4732
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4733
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$7200(Lwallet/core/jni/proto/Ethereum$UserOperation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEntryPointBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4760
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4761
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$7400(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIsAccountDeployed(Z)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4994
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4995
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$8400(Lwallet/core/jni/proto/Ethereum$UserOperation;Z)V

    return-object p0
.end method

.method public setOwner(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4939
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4940
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$8100(Lwallet/core/jni/proto/Ethereum$UserOperation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4967
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4968
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$8300(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPaymasterAndData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5114
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5115
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$9000(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPreVerificationGas(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5034
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5035
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$8600(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVerificationGasLimit(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5074
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->access$8800(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
