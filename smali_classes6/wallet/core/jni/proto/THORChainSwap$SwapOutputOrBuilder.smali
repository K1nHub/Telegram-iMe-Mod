.class public interface abstract Lwallet/core/jni/proto/THORChainSwap$SwapOutputOrBuilder;
.super Ljava/lang/Object;
.source "THORChainSwap.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/THORChainSwap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SwapOutputOrBuilder"
.end annotation


# virtual methods
.method public abstract getBinance()Lwallet/core/jni/proto/Binance$SigningInput;
.end method

.method public abstract getBitcoin()Lwallet/core/jni/proto/Bitcoin$SigningInput;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getError()Lwallet/core/jni/proto/THORChainSwap$Error;
.end method

.method public abstract getEthereum()Lwallet/core/jni/proto/Ethereum$SigningInput;
.end method

.method public abstract getFromChain()Lwallet/core/jni/proto/THORChainSwap$Chain;
.end method

.method public abstract getFromChainValue()I
.end method

.method public abstract getSigningInputOneofCase()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;
.end method

.method public abstract getToChain()Lwallet/core/jni/proto/THORChainSwap$Chain;
.end method

.method public abstract getToChainValue()I
.end method

.method public abstract hasBinance()Z
.end method

.method public abstract hasBitcoin()Z
.end method

.method public abstract hasError()Z
.end method

.method public abstract hasEthereum()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
