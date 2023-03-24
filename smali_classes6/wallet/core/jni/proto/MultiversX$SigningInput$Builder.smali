.class public final Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/MultiversX$SigningInput;",
        "Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4294
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$6300()Lwallet/core/jni/proto/MultiversX$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/MultiversX$1;)V
    .locals 0

    .line 4287
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChainId()Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1

    .line 4399
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4400
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$6800(Lwallet/core/jni/proto/MultiversX$SigningInput;)V

    return-object p0
.end method

.method public clearEgldTransfer()Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1

    .line 4590
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4591
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7900(Lwallet/core/jni/proto/MultiversX$SigningInput;)V

    return-object p0
.end method

.method public clearEsdtTransfer()Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1

    .line 4638
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4639
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$8200(Lwallet/core/jni/proto/MultiversX$SigningInput;)V

    return-object p0
.end method

.method public clearEsdtnftTransfer()Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1

    .line 4686
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4687
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$8500(Lwallet/core/jni/proto/MultiversX$SigningInput;)V

    return-object p0
.end method

.method public clearGasLimit()Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1

    .line 4494
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4495
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7300(Lwallet/core/jni/proto/MultiversX$SigningInput;)V

    return-object p0
.end method

.method public clearGasPrice()Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1

    .line 4454
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4455
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7100(Lwallet/core/jni/proto/MultiversX$SigningInput;)V

    return-object p0
.end method

.method public clearGenericAction()Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1

    .line 4542
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4543
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7600(Lwallet/core/jni/proto/MultiversX$SigningInput;)V

    return-object p0
.end method

.method public clearMessageOneof()Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1

    .line 4304
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4305
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$6400(Lwallet/core/jni/proto/MultiversX$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1

    .line 4345
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4346
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$6600(Lwallet/core/jni/proto/MultiversX$SigningInput;)V

    return-object p0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 4360
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getChainId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4373
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getChainIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEgldTransfer()Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
    .locals 1

    .line 4559
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getEgldTransfer()Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getEsdtTransfer()Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
    .locals 1

    .line 4607
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getEsdtTransfer()Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getEsdtnftTransfer()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
    .locals 1

    .line 4655
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getEsdtnftTransfer()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()J
    .locals 2

    .line 4469
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getGasLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGasPrice()J
    .locals 2

    .line 4429
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getGasPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenericAction()Lwallet/core/jni/proto/MultiversX$GenericAction;
    .locals 1

    .line 4511
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getGenericAction()Lwallet/core/jni/proto/MultiversX$GenericAction;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;
    .locals 1

    .line 4300
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getMessageOneofCase()Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4320
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasEgldTransfer()Z
    .locals 1

    .line 4552
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->hasEgldTransfer()Z

    move-result v0

    return v0
.end method

.method public hasEsdtTransfer()Z
    .locals 1

    .line 4600
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->hasEsdtTransfer()Z

    move-result v0

    return v0
.end method

.method public hasEsdtnftTransfer()Z
    .locals 1

    .line 4648
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->hasEsdtnftTransfer()Z

    move-result v0

    return v0
.end method

.method public hasGenericAction()Z
    .locals 1

    .line 4504
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->hasGenericAction()Z

    move-result v0

    return v0
.end method

.method public mergeEgldTransfer(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4582
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4583
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7800(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V

    return-object p0
.end method

.method public mergeEsdtTransfer(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4630
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4631
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$8100(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V

    return-object p0
.end method

.method public mergeEsdtnftTransfer(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4678
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4679
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$8400(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V

    return-object p0
.end method

.method public mergeGenericAction(Lwallet/core/jni/proto/MultiversX$GenericAction;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4534
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4535
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7500(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$GenericAction;)V

    return-object p0
.end method

.method public setChainId(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4386
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4387
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$6700(Lwallet/core/jni/proto/MultiversX$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChainIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4414
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$6900(Lwallet/core/jni/proto/MultiversX$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEgldTransfer(Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4574
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4575
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7700(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V

    return-object p0
.end method

.method public setEgldTransfer(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4565
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4566
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7700(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V

    return-object p0
.end method

.method public setEsdtTransfer(Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4622
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4623
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$8000(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V

    return-object p0
.end method

.method public setEsdtTransfer(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4613
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4614
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$8000(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V

    return-object p0
.end method

.method public setEsdtnftTransfer(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4670
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4671
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$8300(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V

    return-object p0
.end method

.method public setEsdtnftTransfer(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4661
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4662
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$8300(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V

    return-object p0
.end method

.method public setGasLimit(J)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4481
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4482
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7200(Lwallet/core/jni/proto/MultiversX$SigningInput;J)V

    return-object p0
.end method

.method public setGasPrice(J)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4441
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4442
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7000(Lwallet/core/jni/proto/MultiversX$SigningInput;J)V

    return-object p0
.end method

.method public setGenericAction(Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4526
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4527
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7400(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$GenericAction;)V

    return-object p0
.end method

.method public setGenericAction(Lwallet/core/jni/proto/MultiversX$GenericAction;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4517
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4518
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$7400(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$GenericAction;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->access$6500(Lwallet/core/jni/proto/MultiversX$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
