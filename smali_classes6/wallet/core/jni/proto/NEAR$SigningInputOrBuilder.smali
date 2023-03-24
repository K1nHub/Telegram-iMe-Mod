.class public interface abstract Lwallet/core/jni/proto/NEAR$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "NEAR.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getActions(I)Lwallet/core/jni/proto/NEAR$Action;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getActionsCount()I
.end method

.method public abstract getActionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/NEAR$Action;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBlockHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getNonce()J
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getReceiverId()Ljava/lang/String;
.end method

.method public abstract getReceiverIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSignerId()Ljava/lang/String;
.end method

.method public abstract getSignerIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
