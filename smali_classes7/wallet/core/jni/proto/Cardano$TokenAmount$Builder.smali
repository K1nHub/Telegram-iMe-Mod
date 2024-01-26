.class public final Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$TokenAmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$TokenAmount;",
        "Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 721
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TokenAmount;->access$600()Lwallet/core/jni/proto/Cardano$TokenAmount;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 714
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
    .locals 1

    .line 898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->access$1400(Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public clearAssetName()Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
    .locals 1

    .line 843
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 844
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->access$1100(Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public clearPolicyId()Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
    .locals 1

    .line 774
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 775
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->access$800(Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->getAssetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->getAssetNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPolicyId()Ljava/lang/String;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->getPolicyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPolicyIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->getPolicyIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 885
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TokenAmount;->access$1300(Lwallet/core/jni/proto/Cardano$TokenAmount;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAssetName(Ljava/lang/String;)Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 830
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 831
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TokenAmount;->access$1000(Lwallet/core/jni/proto/Cardano$TokenAmount;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAssetNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 858
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 859
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TokenAmount;->access$1200(Lwallet/core/jni/proto/Cardano$TokenAmount;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPolicyId(Ljava/lang/String;)Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 761
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 762
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TokenAmount;->access$700(Lwallet/core/jni/proto/Cardano$TokenAmount;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPolicyIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 789
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TokenAmount;->access$900(Lwallet/core/jni/proto/Cardano$TokenAmount;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
