.class public interface abstract Lwallet/core/jni/proto/FIO$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "FIO.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getAction()Lwallet/core/jni/proto/FIO$Action;
.end method

.method public abstract getChainParams()Lwallet/core/jni/proto/FIO$ChainParams;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getExpiry()I
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTpid()Ljava/lang/String;
.end method

.method public abstract getTpidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAction()Z
.end method

.method public abstract hasChainParams()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
