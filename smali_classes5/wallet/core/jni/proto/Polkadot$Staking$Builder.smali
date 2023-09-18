.class public final Lwallet/core/jni/proto/Polkadot$Staking$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$StakingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$Staking;",
        "Lwallet/core/jni/proto/Polkadot$Staking$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$StakingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5185
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking;->access$6900()Lwallet/core/jni/proto/Polkadot$Staking;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 5178
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBond()Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1

    .line 5244
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5245
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7300(Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public clearBondAndNominate()Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1

    .line 5292
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5293
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7600(Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public clearBondExtra()Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1

    .line 5340
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5341
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7900(Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public clearChill()Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1

    .line 5532
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5533
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->access$9100(Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public clearChillAndUnbond()Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1

    .line 5580
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5581
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->access$9400(Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public clearMessageOneof()Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1

    .line 5195
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5196
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7000(Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public clearNominate()Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1

    .line 5484
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5485
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8800(Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public clearUnbond()Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1

    .line 5388
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8200(Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public clearWithdrawUnbonded()Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1

    .line 5436
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5437
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8500(Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-object p0
.end method

.method public getBond()Lwallet/core/jni/proto/Polkadot$Staking$Bond;
    .locals 1

    .line 5213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->getBond()Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    move-result-object v0

    return-object v0
.end method

.method public getBondAndNominate()Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;
    .locals 1

    .line 5261
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->getBondAndNominate()Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    move-result-object v0

    return-object v0
.end method

.method public getBondExtra()Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
    .locals 1

    .line 5309
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->getBondExtra()Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    move-result-object v0

    return-object v0
.end method

.method public getChill()Lwallet/core/jni/proto/Polkadot$Staking$Chill;
    .locals 1

    .line 5501
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->getChill()Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    move-result-object v0

    return-object v0
.end method

.method public getChillAndUnbond()Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;
    .locals 1

    .line 5549
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->getChillAndUnbond()Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;
    .locals 1

    .line 5191
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->getMessageOneofCase()Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getNominate()Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
    .locals 1

    .line 5453
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->getNominate()Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    move-result-object v0

    return-object v0
.end method

.method public getUnbond()Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
    .locals 1

    .line 5357
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->getUnbond()Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawUnbonded()Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
    .locals 1

    .line 5405
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->getWithdrawUnbonded()Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    move-result-object v0

    return-object v0
.end method

.method public hasBond()Z
    .locals 1

    .line 5206
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->hasBond()Z

    move-result v0

    return v0
.end method

.method public hasBondAndNominate()Z
    .locals 1

    .line 5254
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->hasBondAndNominate()Z

    move-result v0

    return v0
.end method

.method public hasBondExtra()Z
    .locals 1

    .line 5302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->hasBondExtra()Z

    move-result v0

    return v0
.end method

.method public hasChill()Z
    .locals 1

    .line 5494
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->hasChill()Z

    move-result v0

    return v0
.end method

.method public hasChillAndUnbond()Z
    .locals 1

    .line 5542
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->hasChillAndUnbond()Z

    move-result v0

    return v0
.end method

.method public hasNominate()Z
    .locals 1

    .line 5446
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->hasNominate()Z

    move-result v0

    return v0
.end method

.method public hasUnbond()Z
    .locals 1

    .line 5350
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->hasUnbond()Z

    move-result v0

    return v0
.end method

.method public hasWithdrawUnbonded()Z
    .locals 1

    .line 5398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->hasWithdrawUnbonded()Z

    move-result v0

    return v0
.end method

.method public mergeBond(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5236
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5237
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7200(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V

    return-object p0
.end method

.method public mergeBondAndNominate(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5284
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5285
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7500(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V

    return-object p0
.end method

.method public mergeBondExtra(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5332
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5333
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7800(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)V

    return-object p0
.end method

.method public mergeChill(Lwallet/core/jni/proto/Polkadot$Staking$Chill;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5524
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5525
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$9000(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Chill;)V

    return-object p0
.end method

.method public mergeChillAndUnbond(Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5572
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5573
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$9300(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)V

    return-object p0
.end method

.method public mergeNominate(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5476
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5477
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8700(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)V

    return-object p0
.end method

.method public mergeUnbond(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5380
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5381
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8100(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)V

    return-object p0
.end method

.method public mergeWithdrawUnbonded(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5428
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5429
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8400(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)V

    return-object p0
.end method

.method public setBond(Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5228
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5229
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7100(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V

    return-object p0
.end method

.method public setBond(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5219
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5220
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7100(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V

    return-object p0
.end method

.method public setBondAndNominate(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5276
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5277
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7400(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V

    return-object p0
.end method

.method public setBondAndNominate(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5267
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5268
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7400(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V

    return-object p0
.end method

.method public setBondExtra(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5324
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5325
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7700(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)V

    return-object p0
.end method

.method public setBondExtra(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5315
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5316
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$7700(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)V

    return-object p0
.end method

.method public setChill(Lwallet/core/jni/proto/Polkadot$Staking$Chill$Builder;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5516
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5517
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8900(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Chill;)V

    return-object p0
.end method

.method public setChill(Lwallet/core/jni/proto/Polkadot$Staking$Chill;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5507
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5508
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8900(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Chill;)V

    return-object p0
.end method

.method public setChillAndUnbond(Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond$Builder;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5564
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5565
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$9200(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)V

    return-object p0
.end method

.method public setChillAndUnbond(Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5555
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5556
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$9200(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)V

    return-object p0
.end method

.method public setNominate(Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5468
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5469
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8600(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)V

    return-object p0
.end method

.method public setNominate(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8600(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)V

    return-object p0
.end method

.method public setUnbond(Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5372
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5373
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8000(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)V

    return-object p0
.end method

.method public setUnbond(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5363
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5364
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8000(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)V

    return-object p0
.end method

.method public setWithdrawUnbonded(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5420
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5421
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8300(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)V

    return-object p0
.end method

.method public setWithdrawUnbonded(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5411
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->access$8300(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)V

    return-object p0
.end method
