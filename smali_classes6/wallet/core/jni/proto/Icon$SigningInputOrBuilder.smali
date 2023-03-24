.class public interface abstract Lwallet/core/jni/proto/Icon$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getFromAddress()Ljava/lang/String;
.end method

.method public abstract getFromAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNetworkId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNonce()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStepLimit()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getToAddress()Ljava/lang/String;
.end method

.method public abstract getToAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getValue()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
