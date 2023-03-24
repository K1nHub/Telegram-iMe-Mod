.class public final Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DirectiveCreateValidatorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;",
        "Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DirectiveCreateValidatorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5655
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10000()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 5648
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSlotKeySigs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
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
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;"
        }
    .end annotation

    .line 6050
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6051
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$12000(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSlotPubKeys(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
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
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;"
        }
    .end annotation

    .line 5981
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5982
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$11600(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSlotKeySigs(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6039
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6040
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$11900(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addSlotPubKeys(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5970
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5971
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$11500(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1

    .line 6087
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6088
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$12300(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-object p0
.end method

.method public clearCommissionRates()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1

    .line 5865
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5866
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10900(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-object p0
.end method

.method public clearDescription()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1

    .line 5794
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5795
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10600(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-object p0
.end method

.method public clearMaxTotalDelegation()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1

    .line 5921
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5922
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$11300(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-object p0
.end method

.method public clearMinSelfDelegation()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1

    .line 5893
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$11100(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-object p0
.end method

.method public clearSlotKeySigs()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1

    .line 6059
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6060
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$12100(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-object p0
.end method

.method public clearSlotPubKeys()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1

    .line 5990
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$11700(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-object p0
.end method

.method public clearValidatorAddress()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1

    .line 5708
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5709
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10200(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6070
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCommissionRates()Lwallet/core/jni/proto/Harmony$CommissionRate;
    .locals 1

    .line 5819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getCommissionRates()Lwallet/core/jni/proto/Harmony$CommissionRate;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Lwallet/core/jni/proto/Harmony$Description;
    .locals 1

    .line 5748
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getDescription()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTotalDelegation()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5904
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getMaxTotalDelegation()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMinSelfDelegation()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5876
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getMinSelfDelegation()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSlotKeySigs(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6020
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getSlotKeySigs(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSlotKeySigsCount()I
    .locals 1

    .line 6011
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getSlotKeySigsCount()I

    move-result v0

    return v0
.end method

.method public getSlotKeySigsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 6002
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    .line 6003
    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getSlotKeySigsList()Ljava/util/List;

    move-result-object v0

    .line 6002
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSlotPubKeys(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5951
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getSlotPubKeys(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSlotPubKeysCount()I
    .locals 1

    .line 5942
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getSlotPubKeysCount()I

    move-result v0

    return v0
.end method

.method public getSlotPubKeysList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 5933
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    .line 5934
    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getSlotPubKeysList()Ljava/util/List;

    move-result-object v0

    .line 5933
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 5669
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5682
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getValidatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCommissionRates()Z
    .locals 1

    .line 5808
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->hasCommissionRates()Z

    move-result v0

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .line 5737
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->hasDescription()Z

    move-result v0

    return v0
.end method

.method public mergeCommissionRates(Lwallet/core/jni/proto/Harmony$CommissionRate;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5854
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10800(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lwallet/core/jni/proto/Harmony$CommissionRate;)V

    return-object p0
.end method

.method public mergeDescription(Lwallet/core/jni/proto/Harmony$Description;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5783
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5784
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10500(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lwallet/core/jni/proto/Harmony$Description;)V

    return-object p0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6078
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6079
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$12200(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCommissionRates(Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5842
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5843
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10700(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lwallet/core/jni/proto/Harmony$CommissionRate;)V

    return-object p0
.end method

.method public setCommissionRates(Lwallet/core/jni/proto/Harmony$CommissionRate;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5829
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5830
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10700(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lwallet/core/jni/proto/Harmony$CommissionRate;)V

    return-object p0
.end method

.method public setDescription(Lwallet/core/jni/proto/Harmony$Description$Builder;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5771
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5772
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10400(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lwallet/core/jni/proto/Harmony$Description;)V

    return-object p0
.end method

.method public setDescription(Lwallet/core/jni/proto/Harmony$Description;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5758
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5759
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10400(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lwallet/core/jni/proto/Harmony$Description;)V

    return-object p0
.end method

.method public setMaxTotalDelegation(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5912
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5913
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$11200(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMinSelfDelegation(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5884
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5885
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$11000(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSlotKeySigs(ILcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
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

    .line 6029
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6030
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$11800(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;ILcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSlotPubKeys(ILcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
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

    .line 5960
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5961
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$11400(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;ILcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5695
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5696
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10100(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5723
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5724
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->access$10300(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
