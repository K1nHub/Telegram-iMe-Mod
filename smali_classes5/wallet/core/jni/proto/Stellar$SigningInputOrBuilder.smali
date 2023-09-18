.class public interface abstract Lwallet/core/jni/proto/Stellar$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Stellar.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getAccountBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getFee()I
.end method

.method public abstract getMemoHash()Lwallet/core/jni/proto/Stellar$MemoHash;
.end method

.method public abstract getMemoId()Lwallet/core/jni/proto/Stellar$MemoId;
.end method

.method public abstract getMemoReturnHash()Lwallet/core/jni/proto/Stellar$MemoHash;
.end method

.method public abstract getMemoText()Lwallet/core/jni/proto/Stellar$MemoText;
.end method

.method public abstract getMemoTypeOneofCase()Lwallet/core/jni/proto/Stellar$SigningInput$MemoTypeOneofCase;
.end method

.method public abstract getMemoVoid()Lwallet/core/jni/proto/Stellar$MemoVoid;
.end method

.method public abstract getOpChangeTrust()Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
.end method

.method public abstract getOpClaimClaimableBalance()Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;
.end method

.method public abstract getOpCreateAccount()Lwallet/core/jni/proto/Stellar$OperationCreateAccount;
.end method

.method public abstract getOpCreateClaimableBalance()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
.end method

.method public abstract getOpPayment()Lwallet/core/jni/proto/Stellar$OperationPayment;
.end method

.method public abstract getOperationOneofCase()Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;
.end method

.method public abstract getPassphrase()Ljava/lang/String;
.end method

.method public abstract getPassphraseBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSequence()J
.end method

.method public abstract hasMemoHash()Z
.end method

.method public abstract hasMemoId()Z
.end method

.method public abstract hasMemoReturnHash()Z
.end method

.method public abstract hasMemoText()Z
.end method

.method public abstract hasMemoVoid()Z
.end method

.method public abstract hasOpChangeTrust()Z
.end method

.method public abstract hasOpClaimClaimableBalance()Z
.end method

.method public abstract hasOpCreateAccount()Z
.end method

.method public abstract hasOpCreateClaimableBalance()Z
.end method

.method public abstract hasOpPayment()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
