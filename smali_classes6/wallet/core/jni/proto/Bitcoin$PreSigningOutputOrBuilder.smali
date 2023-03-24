.class public interface abstract Lwallet/core/jni/proto/Bitcoin$PreSigningOutputOrBuilder;
.super Ljava/lang/Object;
.source "Bitcoin.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreSigningOutputOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getError()Lwallet/core/jni/proto/Common$SigningError;
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getErrorMessageBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getErrorValue()I
.end method

.method public abstract getHashPublicKeys(I)Lwallet/core/jni/proto/Bitcoin$HashPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getHashPublicKeysCount()I
.end method

.method public abstract getHashPublicKeysList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Bitcoin$HashPublicKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
