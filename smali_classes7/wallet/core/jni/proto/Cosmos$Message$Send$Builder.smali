.class public final Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$SendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$Send;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$Send;",
        "Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$SendOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2645
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$2400()Lwallet/core/jni/proto/Cosmos$Message$Send;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 2638
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAmounts(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
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
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;)",
            "Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;"
        }
    .end annotation

    .line 2828
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3400(Lwallet/core/jni/proto/Cosmos$Message$Send;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAmounts(ILwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
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

    .line 2818
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    .line 2820
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Amount;

    .line 2819
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3300(Lwallet/core/jni/proto/Cosmos$Message$Send;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
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

    .line 2800
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2801
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3300(Lwallet/core/jni/proto/Cosmos$Message$Send;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addAmounts(Lwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2809
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3200(Lwallet/core/jni/proto/Cosmos$Message$Send;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addAmounts(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2791
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2792
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3200(Lwallet/core/jni/proto/Cosmos$Message$Send;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public clearAmounts()Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1

    .line 2836
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2837
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3500(Lwallet/core/jni/proto/Cosmos$Message$Send;)V

    return-object p0
.end method

.method public clearFromAddress()Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1

    .line 2682
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2683
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$2600(Lwallet/core/jni/proto/Cosmos$Message$Send;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1

    .line 2731
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2732
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$2900(Lwallet/core/jni/proto/Cosmos$Message$Send;)V

    return-object p0
.end method

.method public clearTypePrefix()Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1

    .line 2882
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2883
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3800(Lwallet/core/jni/proto/Cosmos$Message$Send;)V

    return-object p0
.end method

.method public getAmounts(I)Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2766
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getAmounts(I)Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object p1

    return-object p1
.end method

.method public getAmountsCount()I
    .locals 1

    .line 2760
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getAmountsCount()I

    move-result v0

    return v0
.end method

.method public getAmountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation

    .line 2752
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    .line 2753
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getAmountsList()Ljava/util/List;

    move-result-object v0

    .line 2752
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 2655
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2664
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getFromAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 2704
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2713
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefix()Ljava/lang/String;
    .locals 1

    .line 2855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getTypePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2864
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getTypePrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeAmounts(I)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2844
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3600(Lwallet/core/jni/proto/Cosmos$Message$Send;I)V

    return-object p0
.end method

.method public setAmounts(ILwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
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

    .line 2782
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2783
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    .line 2784
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Amount;

    .line 2783
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3100(Lwallet/core/jni/proto/Cosmos$Message$Send;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
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

    .line 2773
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2774
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3100(Lwallet/core/jni/proto/Cosmos$Message$Send;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setFromAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2673
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2674
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$2500(Lwallet/core/jni/proto/Cosmos$Message$Send;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2693
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2694
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$2700(Lwallet/core/jni/proto/Cosmos$Message$Send;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2722
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2723
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$2800(Lwallet/core/jni/proto/Cosmos$Message$Send;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2742
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2743
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3000(Lwallet/core/jni/proto/Cosmos$Message$Send;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTypePrefix(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3700(Lwallet/core/jni/proto/Cosmos$Message$Send;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypePrefixBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2893
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Send;->access$3900(Lwallet/core/jni/proto/Cosmos$Message$Send;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
