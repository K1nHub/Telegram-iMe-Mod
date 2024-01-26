.class public interface abstract Lwallet/core/jni/proto/Harmony$DirectiveCreateValidatorOrBuilder;
.super Ljava/lang/Object;
.source "Harmony.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DirectiveCreateValidatorOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmount()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCommissionRates()Lwallet/core/jni/proto/Harmony$CommissionRate;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getDescription()Lwallet/core/jni/proto/Harmony$Description;
.end method

.method public abstract getMaxTotalDelegation()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMinSelfDelegation()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSlotKeySigs(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getSlotKeySigsCount()I
.end method

.method public abstract getSlotKeySigsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSlotPubKeys(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getSlotPubKeysCount()I
.end method

.method public abstract getSlotPubKeysList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValidatorAddress()Ljava/lang/String;
.end method

.method public abstract getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasCommissionRates()Z
.end method

.method public abstract hasDescription()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
