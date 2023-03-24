.class public interface abstract Lwallet/core/jni/proto/Tezos$TxObjectOrBuilder;
.super Ljava/lang/Object;
.source "Tezos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TxObjectOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getFrom()Ljava/lang/String;
.end method

.method public abstract getFromBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTxs(I)Lwallet/core/jni/proto/Tezos$Txs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getTxsCount()I
.end method

.method public abstract getTxsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Tezos$Txs;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
