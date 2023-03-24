.class public interface abstract Lwallet/core/jni/proto/Bitcoin$TransactionPlanOrBuilder;
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
    name = "TransactionPlanOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmount()J
.end method

.method public abstract getAvailableAmount()J
.end method

.method public abstract getBranchId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getChange()J
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getError()Lwallet/core/jni/proto/Common$SigningError;
.end method

.method public abstract getErrorValue()I
.end method

.method public abstract getFee()J
.end method

.method public abstract getOutputOpReturn()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUtxos(I)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getUtxosCount()I
.end method

.method public abstract getUtxosList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
