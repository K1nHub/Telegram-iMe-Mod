.class public interface abstract Lwallet/core/jni/proto/Bitcoin$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Bitcoin.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract containsScripts(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract getAmount()J
.end method

.method public abstract getByteFee()J
.end method

.method public abstract getChangeAddress()Ljava/lang/String;
.end method

.method public abstract getChangeAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCoinType()I
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getHashType()I
.end method

.method public abstract getLockTime()I
.end method

.method public abstract getOutputOpReturn()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPlan()Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
.end method

.method public abstract getPrivateKey(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getPrivateKeyCount()I
.end method

.method public abstract getPrivateKeyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScripts()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getScriptsCount()I
.end method

.method public abstract getScriptsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScriptsOrDefault(Ljava/lang/String;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract getScriptsOrThrow(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract getToAddress()Ljava/lang/String;
.end method

.method public abstract getToAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUseMaxAmount()Z
.end method

.method public abstract getUtxo(I)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getUtxoCount()I
.end method

.method public abstract getUtxoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasPlan()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
