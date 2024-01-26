.class public interface abstract Lwallet/core/jni/proto/MultiversX$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "MultiversX.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getChainId()Ljava/lang/String;
.end method

.method public abstract getChainIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getEgldTransfer()Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
.end method

.method public abstract getEsdtTransfer()Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
.end method

.method public abstract getEsdtnftTransfer()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
.end method

.method public abstract getGasLimit()J
.end method

.method public abstract getGasPrice()J
.end method

.method public abstract getGenericAction()Lwallet/core/jni/proto/MultiversX$GenericAction;
.end method

.method public abstract getMessageOneofCase()Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasEgldTransfer()Z
.end method

.method public abstract hasEsdtTransfer()Z
.end method

.method public abstract hasEsdtnftTransfer()Z
.end method

.method public abstract hasGenericAction()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
