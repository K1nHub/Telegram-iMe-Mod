.class public interface abstract Lwallet/core/jni/proto/Polkadot$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Polkadot.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getBalanceCall()Lwallet/core/jni/proto/Polkadot$Balance;
.end method

.method public abstract getBlockHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getEra()Lwallet/core/jni/proto/Polkadot$Era;
.end method

.method public abstract getGenesisHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMessageOneofCase()Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;
.end method

.method public abstract getNetwork()I
.end method

.method public abstract getNonce()J
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSpecVersion()I
.end method

.method public abstract getStakingCall()Lwallet/core/jni/proto/Polkadot$Staking;
.end method

.method public abstract getTip()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTransactionVersion()I
.end method

.method public abstract hasBalanceCall()Z
.end method

.method public abstract hasEra()Z
.end method

.method public abstract hasStakingCall()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
