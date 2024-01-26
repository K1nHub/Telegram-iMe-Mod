.class public interface abstract Lwallet/core/jni/proto/Solana$CreateAndTransferTokenOrBuilder;
.super Ljava/lang/Object;
.source "Solana.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CreateAndTransferTokenOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmount()J
.end method

.method public abstract getDecimals()I
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getMemo()Ljava/lang/String;
.end method

.method public abstract getMemoBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRecipientMainAddress()Ljava/lang/String;
.end method

.method public abstract getRecipientMainAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRecipientTokenAddress()Ljava/lang/String;
.end method

.method public abstract getRecipientTokenAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getReferences(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getReferencesBytes(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getReferencesCount()I
.end method

.method public abstract getReferencesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSenderTokenAddress()Ljava/lang/String;
.end method

.method public abstract getSenderTokenAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTokenMintAddress()Ljava/lang/String;
.end method

.method public abstract getTokenMintAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
