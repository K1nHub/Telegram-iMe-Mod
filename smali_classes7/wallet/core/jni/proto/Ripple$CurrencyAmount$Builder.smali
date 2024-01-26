.class public final Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$CurrencyAmountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple$CurrencyAmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ripple$CurrencyAmount;",
        "Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$CurrencyAmountOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 409
    invoke-static {}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->access$000()Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ripple$1;)V
    .locals 0

    .line 402
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCurrency()Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    .locals 1

    .line 466
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 467
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->access$200(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-object p0
.end method

.method public clearIssuer()Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->access$800(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    .locals 1

    .line 540
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 541
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->access$500(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-object p0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getCurrencyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getIssuer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getIssuerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 453
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->access$100(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCurrencyBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 483
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->access$300(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIssuer(Ljava/lang/String;)Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 600
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 601
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->access$700(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIssuerBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 630
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 631
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->access$900(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 527
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->access$400(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 557
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->access$600(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
