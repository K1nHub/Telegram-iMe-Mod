.class public interface abstract Lwallet/core/jni/proto/Solana$TransferOrBuilder;
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
    name = "TransferOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getMemo()Ljava/lang/String;
.end method

.method public abstract getMemoBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRecipient()Ljava/lang/String;
.end method

.method public abstract getRecipientBytes()Lcom/google/protobuf/ByteString;
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

.method public abstract getValue()J
.end method

.method public abstract synthetic isInitialized()Z
.end method
