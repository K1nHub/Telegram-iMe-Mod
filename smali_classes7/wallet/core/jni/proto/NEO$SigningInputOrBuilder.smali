.class public interface abstract Lwallet/core/jni/proto/NEO$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "NEO.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getFee()J
.end method

.method public abstract getGasAssetId()Ljava/lang/String;
.end method

.method public abstract getGasAssetIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGasChangeAddress()Ljava/lang/String;
.end method

.method public abstract getGasChangeAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getInputs(I)Lwallet/core/jni/proto/NEO$TransactionInput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getInputsCount()I
.end method

.method public abstract getInputsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/NEO$TransactionInput;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutputs(I)Lwallet/core/jni/proto/NEO$TransactionOutput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getOutputsCount()I
.end method

.method public abstract getOutputsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/NEO$TransactionOutput;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlan()Lwallet/core/jni/proto/NEO$TransactionPlan;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasPlan()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
