.class public interface abstract Lwallet/core/jni/proto/Waves$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Waves.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getCancelLeaseMessage()Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getLeaseMessage()Lwallet/core/jni/proto/Waves$LeaseMessage;
.end method

.method public abstract getMessageOneofCase()Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getTransferMessage()Lwallet/core/jni/proto/Waves$TransferMessage;
.end method

.method public abstract hasCancelLeaseMessage()Z
.end method

.method public abstract hasLeaseMessage()Z
.end method

.method public abstract hasTransferMessage()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
