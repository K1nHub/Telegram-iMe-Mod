.class public final Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ethereum$Transaction;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$TransactionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3643
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5000()Lwallet/core/jni/proto/Ethereum$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ethereum$1;)V
    .locals 0

    .line 3636
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearContractGeneric()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1

    .line 3942
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3943
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6900(Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-object p0
.end method

.method public clearErc1155Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1

    .line 3894
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3895
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6600(Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-object p0
.end method

.method public clearErc20Approve()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1

    .line 3798
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3799
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6000(Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-object p0
.end method

.method public clearErc20Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1

    .line 3750
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5700(Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-object p0
.end method

.method public clearErc721Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1

    .line 3846
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3847
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6300(Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-object p0
.end method

.method public clearTransactionOneof()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1

    .line 3653
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3654
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5100(Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1

    .line 3702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3703
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5400(Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-object p0
.end method

.method public getContractGeneric()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;
    .locals 1

    .line 3911
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->getContractGeneric()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    move-result-object v0

    return-object v0
.end method

.method public getErc1155Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;
    .locals 1

    .line 3863
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->getErc1155Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getErc20Approve()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;
    .locals 1

    .line 3767
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->getErc20Approve()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    move-result-object v0

    return-object v0
.end method

.method public getErc20Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
    .locals 1

    .line 3719
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->getErc20Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getErc721Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
    .locals 1

    .line 3815
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->getErc721Transfer()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionOneofCase()Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;
    .locals 1

    .line 3649
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->getTransactionOneofCase()Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1

    .line 3671
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->getTransfer()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasContractGeneric()Z
    .locals 1

    .line 3904
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->hasContractGeneric()Z

    move-result v0

    return v0
.end method

.method public hasErc1155Transfer()Z
    .locals 1

    .line 3856
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->hasErc1155Transfer()Z

    move-result v0

    return v0
.end method

.method public hasErc20Approve()Z
    .locals 1

    .line 3760
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->hasErc20Approve()Z

    move-result v0

    return v0
.end method

.method public hasErc20Transfer()Z
    .locals 1

    .line 3712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->hasErc20Transfer()Z

    move-result v0

    return v0
.end method

.method public hasErc721Transfer()Z
    .locals 1

    .line 3808
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->hasErc721Transfer()Z

    move-result v0

    return v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 3664
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3934
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3935
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6800(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)V

    return-object p0
.end method

.method public mergeErc1155Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3886
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3887
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6500(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V

    return-object p0
.end method

.method public mergeErc20Approve(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3790
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5900(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)V

    return-object p0
.end method

.method public mergeErc20Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3742
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3743
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5600(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V

    return-object p0
.end method

.method public mergeErc721Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3838
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3839
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6200(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V

    return-object p0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3694
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3695
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5300(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)V

    return-object p0
.end method

.method public setContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3926
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3927
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6700(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)V

    return-object p0
.end method

.method public setContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3917
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6700(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)V

    return-object p0
.end method

.method public setErc1155Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3878
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3879
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6400(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V

    return-object p0
.end method

.method public setErc1155Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3869
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3870
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6400(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V

    return-object p0
.end method

.method public setErc20Approve(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3782
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3783
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5800(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)V

    return-object p0
.end method

.method public setErc20Approve(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3773
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3774
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5800(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)V

    return-object p0
.end method

.method public setErc20Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3734
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3735
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5500(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V

    return-object p0
.end method

.method public setErc20Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3726
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5500(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V

    return-object p0
.end method

.method public setErc721Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3830
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3831
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6100(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V

    return-object p0
.end method

.method public setErc721Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3821
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3822
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$6100(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3686
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3687
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5200(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3677
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3678
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction;->access$5200(Lwallet/core/jni/proto/Ethereum$Transaction;Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)V

    return-object p0
.end method
