.class public final Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$SigningInput;",
        "Lwallet/core/jni/proto/Harmony$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 391
    invoke-static {}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$000()Lwallet/core/jni/proto/Harmony$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 384
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChainId()Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 443
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$300(Lwallet/core/jni/proto/Harmony$SigningInput;)V

    return-object p0
.end method

.method public clearMessageOneof()Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1

    .line 401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$100(Lwallet/core/jni/proto/Harmony$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 483
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$500(Lwallet/core/jni/proto/Harmony$SigningInput;)V

    return-object p0
.end method

.method public clearStakingMessage()Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1

    .line 578
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 579
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$1100(Lwallet/core/jni/proto/Harmony$SigningInput;)V

    return-object p0
.end method

.method public clearTransactionMessage()Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$800(Lwallet/core/jni/proto/Harmony$SigningInput;)V

    return-object p0
.end method

.method public getChainId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->getChainId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->getMessageOneofCase()Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStakingMessage()Lwallet/core/jni/proto/Harmony$StakingMessage;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->getStakingMessage()Lwallet/core/jni/proto/Harmony$StakingMessage;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionMessage()Lwallet/core/jni/proto/Harmony$TransactionMessage;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->getTransactionMessage()Lwallet/core/jni/proto/Harmony$TransactionMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasStakingMessage()Z
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->hasStakingMessage()Z

    move-result v0

    return v0
.end method

.method public hasTransactionMessage()Z
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningInput;->hasTransactionMessage()Z

    move-result v0

    return v0
.end method

.method public mergeStakingMessage(Lwallet/core/jni/proto/Harmony$StakingMessage;)Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 571
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$1000(Lwallet/core/jni/proto/Harmony$SigningInput;Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public mergeTransactionMessage(Lwallet/core/jni/proto/Harmony$TransactionMessage;)Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 522
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$700(Lwallet/core/jni/proto/Harmony$SigningInput;Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-object p0
.end method

.method public setChainId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$200(Lwallet/core/jni/proto/Harmony$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 470
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$400(Lwallet/core/jni/proto/Harmony$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStakingMessage(Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;)Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 563
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$900(Lwallet/core/jni/proto/Harmony$SigningInput;Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public setStakingMessage(Lwallet/core/jni/proto/Harmony$StakingMessage;)Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$900(Lwallet/core/jni/proto/Harmony$SigningInput;Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public setTransactionMessage(Lwallet/core/jni/proto/Harmony$TransactionMessage$Builder;)Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$TransactionMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$600(Lwallet/core/jni/proto/Harmony$SigningInput;Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-object p0
.end method

.method public setTransactionMessage(Lwallet/core/jni/proto/Harmony$TransactionMessage;)Lwallet/core/jni/proto/Harmony$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 506
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningInput;->access$600(Lwallet/core/jni/proto/Harmony$SigningInput;Lwallet/core/jni/proto/Harmony$TransactionMessage;)V

    return-object p0
.end method
