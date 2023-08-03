.class public final Lwallet/core/jni/proto/Tezos$Txs$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$TxsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$Txs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tezos$Txs;",
        "Lwallet/core/jni/proto/Tezos$Txs$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$TxsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3767
    invoke-static {}, Lwallet/core/jni/proto/Tezos$Txs;->access$6400()Lwallet/core/jni/proto/Tezos$Txs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tezos$1;)V
    .locals 0

    .line 3760
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Txs$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Tezos$Txs$Builder;
    .locals 1

    .line 3902
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3903
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Txs;->access$7200(Lwallet/core/jni/proto/Tezos$Txs;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Tezos$Txs$Builder;
    .locals 1

    .line 3804
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3805
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Txs;->access$6600(Lwallet/core/jni/proto/Tezos$Txs;)V

    return-object p0
.end method

.method public clearTokenId()Lwallet/core/jni/proto/Tezos$Txs$Builder;
    .locals 1

    .line 3853
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3854
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Txs;->access$6900(Lwallet/core/jni/proto/Tezos$Txs;)V

    return-object p0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 3875
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Txs;->getAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3884
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Txs;->getAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 3777
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Txs;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3786
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Txs;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .line 3826
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Txs;->getTokenId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3835
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Txs;->getTokenIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$Txs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3893
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->access$7100(Lwallet/core/jni/proto/Tezos$Txs;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$Txs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3913
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3914
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->access$7300(Lwallet/core/jni/proto/Tezos$Txs;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$Txs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3795
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3796
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->access$6500(Lwallet/core/jni/proto/Tezos$Txs;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$Txs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3815
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3816
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->access$6700(Lwallet/core/jni/proto/Tezos$Txs;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenId(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$Txs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3844
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->access$6800(Lwallet/core/jni/proto/Tezos$Txs;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTokenIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$Txs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3864
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->access$7000(Lwallet/core/jni/proto/Tezos$Txs;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
