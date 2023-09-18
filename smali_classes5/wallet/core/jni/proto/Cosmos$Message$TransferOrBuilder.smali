.class public interface abstract Lwallet/core/jni/proto/Cosmos$Message$TransferOrBuilder;
.super Ljava/lang/Object;
.source "Cosmos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransferOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getReceiver()Ljava/lang/String;
.end method

.method public abstract getReceiverBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSender()Ljava/lang/String;
.end method

.method public abstract getSenderBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSourceChannel()Ljava/lang/String;
.end method

.method public abstract getSourceChannelBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSourcePort()Ljava/lang/String;
.end method

.method public abstract getSourcePortBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimeoutHeight()Lwallet/core/jni/proto/Cosmos$Height;
.end method

.method public abstract getTimeoutTimestamp()J
.end method

.method public abstract getToken()Lwallet/core/jni/proto/Cosmos$Amount;
.end method

.method public abstract hasTimeoutHeight()Z
.end method

.method public abstract hasToken()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
