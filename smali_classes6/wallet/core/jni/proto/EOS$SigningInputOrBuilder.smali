.class public interface abstract Lwallet/core/jni/proto/EOS$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "EOS.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/EOS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getAsset()Lwallet/core/jni/proto/EOS$Asset;
.end method

.method public abstract getChainId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCurrency()Ljava/lang/String;
.end method

.method public abstract getCurrencyBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getMemo()Ljava/lang/String;
.end method

.method public abstract getMemoBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrivateKeyType()Lwallet/core/jni/proto/EOS$KeyType;
.end method

.method public abstract getPrivateKeyTypeValue()I
.end method

.method public abstract getRecipient()Ljava/lang/String;
.end method

.method public abstract getRecipientBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getReferenceBlockId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getReferenceBlockTime()I
.end method

.method public abstract getSender()Ljava/lang/String;
.end method

.method public abstract getSenderBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAsset()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
