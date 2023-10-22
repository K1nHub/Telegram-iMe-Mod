.class public final Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbondedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;",
        "Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbondedOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3570
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->access$5200()Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 3563
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSlashingSpans()Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;
    .locals 1

    .line 3597
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3598
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->access$5400(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)V

    return-object p0
.end method

.method public getSlashingSpans()I
    .locals 1

    .line 3580
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->getSlashingSpans()I

    move-result v0

    return v0
.end method

.method public setSlashingSpans(I)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3588
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3589
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->access$5300(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;I)V

    return-object p0
.end method
