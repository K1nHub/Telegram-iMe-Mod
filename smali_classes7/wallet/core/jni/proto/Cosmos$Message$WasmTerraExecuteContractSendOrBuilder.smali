.class public interface abstract Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSendOrBuilder;
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
    name = "WasmTerraExecuteContractSendOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmount()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCoin(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getCoinBytes(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getCoinCount()I
.end method

.method public abstract getCoinList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

.method public abstract getMsg()Ljava/lang/String;
.end method

.method public abstract getMsgBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRecipientContractAddress()Ljava/lang/String;
.end method

.method public abstract getRecipientContractAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSenderAddress()Ljava/lang/String;
.end method

.method public abstract getSenderAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
