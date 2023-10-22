.class public interface abstract Lwallet/core/jni/proto/Ripple$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Ripple.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple;
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

.method public abstract getFee()J
.end method

.method public abstract getFlags()J
.end method

.method public abstract getLastLedgerSequence()I
.end method

.method public abstract getOpNftokenAcceptOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;
.end method

.method public abstract getOpNftokenBurn()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
.end method

.method public abstract getOpNftokenCancelOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
.end method

.method public abstract getOpNftokenCreateOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
.end method

.method public abstract getOpPayment()Lwallet/core/jni/proto/Ripple$OperationPayment;
.end method

.method public abstract getOpTrustSet()Lwallet/core/jni/proto/Ripple$OperationTrustSet;
.end method

.method public abstract getOperationOneofCase()Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSequence()I
.end method

.method public abstract hasOpNftokenAcceptOffer()Z
.end method

.method public abstract hasOpNftokenBurn()Z
.end method

.method public abstract hasOpNftokenCancelOffer()Z
.end method

.method public abstract hasOpNftokenCreateOffer()Z
.end method

.method public abstract hasOpPayment()Z
.end method

.method public abstract hasOpTrustSet()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
