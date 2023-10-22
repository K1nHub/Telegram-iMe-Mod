.class public final Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$BondOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking$Bond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$Staking$Bond;",
        "Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$BondOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1719
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->access$1900()Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 1712
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearController()Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
    .locals 1

    .line 1772
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1773
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->access$2100(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V

    return-object p0
.end method

.method public clearRewardDestination()Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
    .locals 1

    .line 1893
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->access$2700(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
    .locals 1

    .line 1827
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1828
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->access$2400(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V

    return-object p0
.end method

.method public getController()Ljava/lang/String;
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->getController()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getControllerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1746
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->getControllerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRewardDestination()Lwallet/core/jni/proto/Polkadot$RewardDestination;
    .locals 1

    .line 1868
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->getRewardDestination()Lwallet/core/jni/proto/Polkadot$RewardDestination;

    move-result-object v0

    return-object v0
.end method

.method public getRewardDestinationValue()I
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->getRewardDestinationValue()I

    move-result v0

    return v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1802
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setController(Ljava/lang/String;)Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1759
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1760
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->access$2000(Lwallet/core/jni/proto/Polkadot$Staking$Bond;Ljava/lang/String;)V

    return-object p0
.end method

.method public setControllerBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1787
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1788
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->access$2200(Lwallet/core/jni/proto/Polkadot$Staking$Bond;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRewardDestination(Lwallet/core/jni/proto/Polkadot$RewardDestination;)Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1880
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1881
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->access$2600(Lwallet/core/jni/proto/Polkadot$Staking$Bond;Lwallet/core/jni/proto/Polkadot$RewardDestination;)V

    return-object p0
.end method

.method public setRewardDestinationValue(I)Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1854
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->access$2500(Lwallet/core/jni/proto/Polkadot$Staking$Bond;I)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1814
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1815
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->access$2300(Lwallet/core/jni/proto/Polkadot$Staking$Bond;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
