.class public interface abstract Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGenericOrBuilder;
.super Ljava/lang/Object;
.source "Cosmos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WasmExecuteContractGenericOrBuilder"
.end annotation


# virtual methods
.method public abstract getCoins(I)Lwallet/core/jni/proto/Cosmos$Amount;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getCoinsCount()I
.end method

.method public abstract getCoinsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContractAddress()Ljava/lang/String;
.end method

.method public abstract getContractAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getExecuteMsg()Ljava/lang/String;
.end method

.method public abstract getExecuteMsgBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSenderAddress()Ljava/lang/String;
.end method

.method public abstract getSenderAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
