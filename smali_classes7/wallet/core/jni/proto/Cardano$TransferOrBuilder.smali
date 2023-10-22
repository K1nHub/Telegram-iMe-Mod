.class public interface abstract Lwallet/core/jni/proto/Cardano$TransferOrBuilder;
.super Ljava/lang/Object;
.source "Cardano.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransferOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmount()J
.end method

.method public abstract getChangeAddress()Ljava/lang/String;
.end method

.method public abstract getChangeAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getForceFee()J
.end method

.method public abstract getToAddress()Ljava/lang/String;
.end method

.method public abstract getToAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTokenAmount()Lwallet/core/jni/proto/Cardano$TokenBundle;
.end method

.method public abstract getUseMaxAmount()Z
.end method

.method public abstract hasTokenAmount()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
