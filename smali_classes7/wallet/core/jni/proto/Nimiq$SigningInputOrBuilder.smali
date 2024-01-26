.class public interface abstract Lwallet/core/jni/proto/Nimiq$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Nimiq.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nimiq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getDestination()Ljava/lang/String;
.end method

.method public abstract getDestinationBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getFee()J
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getValidityStartHeight()I
.end method

.method public abstract getValue()J
.end method

.method public abstract synthetic isInitialized()Z
.end method
