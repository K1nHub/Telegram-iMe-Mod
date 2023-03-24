.class public interface abstract Lwallet/core/jni/proto/Tezos$FA2ParametersOrBuilder;
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
    name = "FA2ParametersOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getEntrypoint()Ljava/lang/String;
.end method

.method public abstract getEntrypointBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTxsObject(I)Lwallet/core/jni/proto/Tezos$TxObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getTxsObjectCount()I
.end method

.method public abstract getTxsObjectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Tezos$TxObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
