.class public interface abstract Lwallet/core/jni/proto/Algorand$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Algorand.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Algorand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getAssetOptIn()Lwallet/core/jni/proto/Algorand$AssetOptIn;
.end method

.method public abstract getAssetTransfer()Lwallet/core/jni/proto/Algorand$AssetTransfer;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getFee()J
.end method

.method public abstract getFirstRound()J
.end method

.method public abstract getGenesisHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGenesisId()Ljava/lang/String;
.end method

.method public abstract getGenesisIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLastRound()J
.end method

.method public abstract getMessageOneofCase()Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;
.end method

.method public abstract getNote()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTransfer()Lwallet/core/jni/proto/Algorand$Transfer;
.end method

.method public abstract hasAssetOptIn()Z
.end method

.method public abstract hasAssetTransfer()Z
.end method

.method public abstract hasTransfer()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
