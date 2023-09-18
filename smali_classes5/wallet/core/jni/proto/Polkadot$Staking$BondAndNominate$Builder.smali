.class public final Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;",
        "Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2478
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$2900()Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 2471
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllNominators(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;"
        }
    .end annotation

    .line 2752
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2753
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$4000(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addNominators(Ljava/lang/String;)Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2737
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$3900(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;Ljava/lang/String;)V

    return-object p0
.end method

.method public addNominatorsBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2780
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2781
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$4200(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearController()Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
    .locals 1

    .line 2531
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2532
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$3100(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V

    return-object p0
.end method

.method public clearNominators()Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
    .locals 1

    .line 2765
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2766
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$4100(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V

    return-object p0
.end method

.method public clearRewardDestination()Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
    .locals 1

    .line 2652
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2653
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$3700(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
    .locals 1

    .line 2586
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2587
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$3400(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V

    return-object p0
.end method

.method public getController()Ljava/lang/String;
    .locals 1

    .line 2492
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->getController()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getControllerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2505
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->getControllerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNominators(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2694
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->getNominators(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNominatorsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2708
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->getNominatorsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getNominatorsCount()I
    .locals 1

    .line 2681
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->getNominatorsCount()I

    move-result v0

    return v0
.end method

.method public getNominatorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2668
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    .line 2669
    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->getNominatorsList()Ljava/util/List;

    move-result-object v0

    .line 2668
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRewardDestination()Lwallet/core/jni/proto/Polkadot$RewardDestination;
    .locals 1

    .line 2627
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->getRewardDestination()Lwallet/core/jni/proto/Polkadot$RewardDestination;

    move-result-object v0

    return-object v0
.end method

.method public getRewardDestinationValue()I
    .locals 1

    .line 2601
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->getRewardDestinationValue()I

    move-result v0

    return v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2561
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setController(Ljava/lang/String;)Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2518
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2519
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$3000(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setControllerBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2546
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2547
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$3200(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNominators(ILjava/lang/String;)Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
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

    .line 2722
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2723
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$3800(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;ILjava/lang/String;)V

    return-object p0
.end method

.method public setRewardDestination(Lwallet/core/jni/proto/Polkadot$RewardDestination;)Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2639
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2640
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$3600(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;Lwallet/core/jni/proto/Polkadot$RewardDestination;)V

    return-object p0
.end method

.method public setRewardDestinationValue(I)Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2613
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2614
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$3500(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;I)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2573
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2574
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->access$3300(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
