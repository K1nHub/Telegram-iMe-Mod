.class public final Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$BondExtraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;",
        "Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$BondExtraOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3026
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->access$4400()Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 3019
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValue()Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;
    .locals 1

    .line 3065
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3066
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->access$4600(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)V

    return-object p0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3040
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3052
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3053
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->access$4500(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
