.class public interface abstract Lwallet/core/jni/proto/Aptos$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Aptos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getAnyEncoded()Ljava/lang/String;
.end method

.method public abstract getAnyEncodedBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getChainId()I
.end method

.method public abstract getCreateAccount()Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getExpirationTimestampSecs()J
.end method

.method public abstract getGasUnitPrice()J
.end method

.method public abstract getMaxGasAmount()J
.end method

.method public abstract getNftMessage()Lwallet/core/jni/proto/Aptos$NftMessage;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRegisterToken()Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
.end method

.method public abstract getSender()Ljava/lang/String;
.end method

.method public abstract getSenderBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSequenceNumber()J
.end method

.method public abstract getTokenTransfer()Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
.end method

.method public abstract getTransactionPayloadCase()Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;
.end method

.method public abstract getTransfer()Lwallet/core/jni/proto/Aptos$TransferMessage;
.end method

.method public abstract hasCreateAccount()Z
.end method

.method public abstract hasNftMessage()Z
.end method

.method public abstract hasRegisterToken()Z
.end method

.method public abstract hasTokenTransfer()Z
.end method

.method public abstract hasTransfer()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
