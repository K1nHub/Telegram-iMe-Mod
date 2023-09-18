.class public interface abstract Lwallet/core/jni/proto/Cosmos$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Cosmos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccountNumber()J
.end method

.method public abstract getChainId()Ljava/lang/String;
.end method

.method public abstract getChainIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getFee()Lwallet/core/jni/proto/Cosmos$Fee;
.end method

.method public abstract getMemo()Ljava/lang/String;
.end method

.method public abstract getMemoBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMessages(I)Lwallet/core/jni/proto/Cosmos$Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getMessagesCount()I
.end method

.method public abstract getMessagesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMode()Lwallet/core/jni/proto/Cosmos$BroadcastMode;
.end method

.method public abstract getModeValue()I
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSequence()J
.end method

.method public abstract getSigningMode()Lwallet/core/jni/proto/Cosmos$SigningMode;
.end method

.method public abstract getSigningModeValue()I
.end method

.method public abstract hasFee()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
