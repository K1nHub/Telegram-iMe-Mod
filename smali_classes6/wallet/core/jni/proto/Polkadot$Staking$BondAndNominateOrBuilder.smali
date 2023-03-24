.class public interface abstract Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominateOrBuilder;
.super Ljava/lang/Object;
.source "Polkadot.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BondAndNominateOrBuilder"
.end annotation


# virtual methods
.method public abstract getController()Ljava/lang/String;
.end method

.method public abstract getControllerBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getNominators(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getNominatorsBytes(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getNominatorsCount()I
.end method

.method public abstract getNominatorsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRewardDestination()Lwallet/core/jni/proto/Polkadot$RewardDestination;
.end method

.method public abstract getRewardDestinationValue()I
.end method

.method public abstract getValue()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
