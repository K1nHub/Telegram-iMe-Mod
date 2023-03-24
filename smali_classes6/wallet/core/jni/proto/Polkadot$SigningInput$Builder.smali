.class public final Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$SigningInput;",
        "Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6426
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$9600()Lwallet/core/jni/proto/Polkadot$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 6419
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBalanceCall()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6876
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6877
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11900(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public clearBlockHash()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6477
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6478
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$9900(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public clearEra()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6748
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6749
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11200(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public clearGenesisHash()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6517
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6518
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$10100(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public clearMessageOneof()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6436
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6437
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$9700(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public clearNetwork()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6828
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11600(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6557
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6558
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$10300(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6788
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6789
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11400(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public clearSpecVersion()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6597
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6598
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$10500(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public clearStakingCall()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6924
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6925
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$12200(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public clearTip()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6677
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6678
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$10900(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public clearTransactionVersion()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6637
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6638
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$10700(Lwallet/core/jni/proto/Polkadot$SigningInput;)V

    return-object p0
.end method

.method public getBalanceCall()Lwallet/core/jni/proto/Polkadot$Balance;
    .locals 1

    .line 6845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getBalanceCall()Lwallet/core/jni/proto/Polkadot$Balance;

    move-result-object v0

    return-object v0
.end method

.method public getBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6452
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lwallet/core/jni/proto/Polkadot$Era;
    .locals 1

    .line 6702
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getEra()Lwallet/core/jni/proto/Polkadot$Era;

    move-result-object v0

    return-object v0
.end method

.method public getGenesisHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6492
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getGenesisHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;
    .locals 1

    .line 6432
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getMessageOneofCase()Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()I
    .locals 1

    .line 6803
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getNetwork()I

    move-result v0

    return v0
.end method

.method public getNonce()J
    .locals 2

    .line 6532
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6763
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSpecVersion()I
    .locals 1

    .line 6572
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getSpecVersion()I

    move-result v0

    return v0
.end method

.method public getStakingCall()Lwallet/core/jni/proto/Polkadot$Staking;
    .locals 1

    .line 6893
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getStakingCall()Lwallet/core/jni/proto/Polkadot$Staking;

    move-result-object v0

    return-object v0
.end method

.method public getTip()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6652
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getTip()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionVersion()I
    .locals 1

    .line 6612
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getTransactionVersion()I

    move-result v0

    return v0
.end method

.method public hasBalanceCall()Z
    .locals 1

    .line 6838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->hasBalanceCall()Z

    move-result v0

    return v0
.end method

.method public hasEra()Z
    .locals 1

    .line 6691
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->hasEra()Z

    move-result v0

    return v0
.end method

.method public hasStakingCall()Z
    .locals 1

    .line 6886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->hasStakingCall()Z

    move-result v0

    return v0
.end method

.method public mergeBalanceCall(Lwallet/core/jni/proto/Polkadot$Balance;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6868
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6869
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11800(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Balance;)V

    return-object p0
.end method

.method public mergeEra(Lwallet/core/jni/proto/Polkadot$Era;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6737
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11100(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Era;)V

    return-object p0
.end method

.method public mergeStakingCall(Lwallet/core/jni/proto/Polkadot$Staking;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6916
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6917
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$12100(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public setBalanceCall(Lwallet/core/jni/proto/Polkadot$Balance$Builder;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6860
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6861
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11700(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Balance;)V

    return-object p0
.end method

.method public setBalanceCall(Lwallet/core/jni/proto/Polkadot$Balance;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6851
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6852
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11700(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Balance;)V

    return-object p0
.end method

.method public setBlockHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6464
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6465
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$9800(Lwallet/core/jni/proto/Polkadot$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEra(Lwallet/core/jni/proto/Polkadot$Era$Builder;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6726
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11000(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Era;)V

    return-object p0
.end method

.method public setEra(Lwallet/core/jni/proto/Polkadot$Era;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11000(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Era;)V

    return-object p0
.end method

.method public setGenesisHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6504
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6505
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$10000(Lwallet/core/jni/proto/Polkadot$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNetwork(I)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6815
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6816
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11500(Lwallet/core/jni/proto/Polkadot$SigningInput;I)V

    return-object p0
.end method

.method public setNonce(J)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6544
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6545
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$10200(Lwallet/core/jni/proto/Polkadot$SigningInput;J)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6775
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6776
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$11300(Lwallet/core/jni/proto/Polkadot$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSpecVersion(I)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6584
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6585
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$10400(Lwallet/core/jni/proto/Polkadot$SigningInput;I)V

    return-object p0
.end method

.method public setStakingCall(Lwallet/core/jni/proto/Polkadot$Staking$Builder;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6908
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6909
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$12000(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public setStakingCall(Lwallet/core/jni/proto/Polkadot$Staking;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6899
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6900
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$12000(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public setTip(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6664
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6665
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$10800(Lwallet/core/jni/proto/Polkadot$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTransactionVersion(I)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6624
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6625
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->access$10600(Lwallet/core/jni/proto/Polkadot$SigningInput;I)V

    return-object p0
.end method
