.class public final Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$SigningInput;",
        "Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19470
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$36100()Lwallet/core/jni/proto/Cosmos$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 19463
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMessages(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
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
            "Lwallet/core/jni/proto/Cosmos$Message;",
            ">;)",
            "Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;"
        }
    .end annotation

    .line 19990
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38300(Lwallet/core/jni/proto/Cosmos$SigningInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addMessages(ILwallet/core/jni/proto/Cosmos$Message$Builder;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
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

    .line 19976
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19977
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    .line 19978
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Message;

    .line 19977
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38200(Lwallet/core/jni/proto/Cosmos$SigningInput;ILwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public addMessages(ILwallet/core/jni/proto/Cosmos$Message;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
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

    .line 19950
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19951
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38200(Lwallet/core/jni/proto/Cosmos$SigningInput;ILwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public addMessages(Lwallet/core/jni/proto/Cosmos$Message$Builder;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 19963
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19964
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38100(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public addMessages(Lwallet/core/jni/proto/Cosmos$Message;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19937
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19938
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38100(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public clearAccountNumber()Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1

    .line 19575
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19576
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$36600(Lwallet/core/jni/proto/Cosmos$SigningInput;)V

    return-object p0
.end method

.method public clearChainId()Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1

    .line 19629
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19630
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$36800(Lwallet/core/jni/proto/Cosmos$SigningInput;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1

    .line 19715
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19716
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$37200(Lwallet/core/jni/proto/Cosmos$SigningInput;)V

    return-object p0
.end method

.method public clearMemo()Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1

    .line 19769
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19770
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$37400(Lwallet/core/jni/proto/Cosmos$SigningInput;)V

    return-object p0
.end method

.method public clearMessages()Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1

    .line 20002
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20003
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38400(Lwallet/core/jni/proto/Cosmos$SigningInput;)V

    return-object p0
.end method

.method public clearMode()Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1

    .line 20080
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20081
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38800(Lwallet/core/jni/proto/Cosmos$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1

    .line 19864
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$37900(Lwallet/core/jni/proto/Cosmos$SigningInput;)V

    return-object p0
.end method

.method public clearSequence()Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1

    .line 19824
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19825
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$37700(Lwallet/core/jni/proto/Cosmos$SigningInput;)V

    return-object p0
.end method

.method public clearSigningMode()Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1

    .line 19535
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19536
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$36400(Lwallet/core/jni/proto/Cosmos$SigningInput;)V

    return-object p0
.end method

.method public getAccountNumber()J
    .locals 2

    .line 19550
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getAccountNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 19590
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getChainId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 19603
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getChainIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()Lwallet/core/jni/proto/Cosmos$Fee;
    .locals 1

    .line 19669
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getFee()Lwallet/core/jni/proto/Cosmos$Fee;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 19730
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getMemo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 19743
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(I)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 19900
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getMessages(I)Lwallet/core/jni/proto/Cosmos$Message;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesCount()I
    .locals 1

    .line 19890
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getMessagesCount()I

    move-result v0

    return v0
.end method

.method public getMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Message;",
            ">;"
        }
    .end annotation

    .line 19878
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    .line 19879
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getMessagesList()Ljava/util/List;

    move-result-object v0

    .line 19878
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lwallet/core/jni/proto/Cosmos$BroadcastMode;
    .locals 1

    .line 20055
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getMode()Lwallet/core/jni/proto/Cosmos$BroadcastMode;

    move-result-object v0

    return-object v0
.end method

.method public getModeValue()I
    .locals 1

    .line 20029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getModeValue()I

    move-result v0

    return v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 19839
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 19799
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getSequence()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSigningMode()Lwallet/core/jni/proto/Cosmos$SigningMode;
    .locals 1

    .line 19510
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getSigningMode()Lwallet/core/jni/proto/Cosmos$SigningMode;

    move-result-object v0

    return-object v0
.end method

.method public getSigningModeValue()I
    .locals 1

    .line 19484
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->getSigningModeValue()I

    move-result v0

    return v0
.end method

.method public hasFee()Z
    .locals 1

    .line 19658
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningInput;->hasFee()Z

    move-result v0

    return v0
.end method

.method public mergeFee(Lwallet/core/jni/proto/Cosmos$Fee;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19704
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19705
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$37100(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$Fee;)V

    return-object p0
.end method

.method public removeMessages(I)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 20014
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38500(Lwallet/core/jni/proto/Cosmos$SigningInput;I)V

    return-object p0
.end method

.method public setAccountNumber(J)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19562
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19563
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$36500(Lwallet/core/jni/proto/Cosmos$SigningInput;J)V

    return-object p0
.end method

.method public setChainId(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19616
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19617
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$36700(Lwallet/core/jni/proto/Cosmos$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChainIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19644
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19645
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$36900(Lwallet/core/jni/proto/Cosmos$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFee(Lwallet/core/jni/proto/Cosmos$Fee$Builder;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 19692
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19693
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$37000(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$Fee;)V

    return-object p0
.end method

.method public setFee(Lwallet/core/jni/proto/Cosmos$Fee;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19679
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19680
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$37000(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$Fee;)V

    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19756
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19757
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$37300(Lwallet/core/jni/proto/Cosmos$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19784
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19785
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$37500(Lwallet/core/jni/proto/Cosmos$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMessages(ILwallet/core/jni/proto/Cosmos$Message$Builder;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
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

    .line 19924
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19925
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    .line 19926
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Message;

    .line 19925
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38000(Lwallet/core/jni/proto/Cosmos$SigningInput;ILwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public setMessages(ILwallet/core/jni/proto/Cosmos$Message;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
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

    .line 19911
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19912
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38000(Lwallet/core/jni/proto/Cosmos$SigningInput;ILwallet/core/jni/proto/Cosmos$Message;)V

    return-object p0
.end method

.method public setMode(Lwallet/core/jni/proto/Cosmos$BroadcastMode;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20067
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20068
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38700(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$BroadcastMode;)V

    return-object p0
.end method

.method public setModeValue(I)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20041
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20042
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$38600(Lwallet/core/jni/proto/Cosmos$SigningInput;I)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19851
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19852
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$37800(Lwallet/core/jni/proto/Cosmos$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSequence(J)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19811
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19812
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$37600(Lwallet/core/jni/proto/Cosmos$SigningInput;J)V

    return-object p0
.end method

.method public setSigningMode(Lwallet/core/jni/proto/Cosmos$SigningMode;)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19522
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19523
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$36300(Lwallet/core/jni/proto/Cosmos$SigningInput;Lwallet/core/jni/proto/Cosmos$SigningMode;)V

    return-object p0
.end method

.method public setSigningModeValue(I)Lwallet/core/jni/proto/Cosmos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19496
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19497
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$SigningInput;->access$36200(Lwallet/core/jni/proto/Cosmos$SigningInput;I)V

    return-object p0
.end method
