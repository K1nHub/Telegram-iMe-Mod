.class public interface abstract Lwallet/core/jni/proto/Harmony$StakingMessageOrBuilder;
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
    name = "StakingMessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getCollectRewards()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
.end method

.method public abstract getCreateValidatorMessage()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getDelegateMessage()Lwallet/core/jni/proto/Harmony$DirectiveDelegate;
.end method

.method public abstract getEditValidatorMessage()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
.end method

.method public abstract getGasLimit()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGasPrice()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNonce()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStakeMsgCase()Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;
.end method

.method public abstract getUndelegateMessage()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
.end method

.method public abstract hasCollectRewards()Z
.end method

.method public abstract hasCreateValidatorMessage()Z
.end method

.method public abstract hasDelegateMessage()Z
.end method

.method public abstract hasEditValidatorMessage()Z
.end method

.method public abstract hasUndelegateMessage()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
