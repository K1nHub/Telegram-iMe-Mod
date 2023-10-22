.class public interface abstract Lwallet/core/jni/proto/Nervos$TransactionPlanOrBuilder;
.super Ljava/lang/Object;
.source "Nervos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransactionPlanOrBuilder"
.end annotation


# virtual methods
.method public abstract getCellDeps(I)Lwallet/core/jni/proto/Nervos$CellDep;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getCellDepsCount()I
.end method

.method public abstract getCellDepsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Nervos$CellDep;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getError()Lwallet/core/jni/proto/Common$SigningError;
.end method

.method public abstract getErrorValue()I
.end method

.method public abstract getHeaderDeps(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getHeaderDepsCount()I
.end method

.method public abstract getHeaderDepsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutputs(I)Lwallet/core/jni/proto/Nervos$CellOutput;
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

.method public abstract getOutputsData(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getOutputsDataCount()I
.end method

.method public abstract getOutputsDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutputsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Nervos$CellOutput;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedCells(I)Lwallet/core/jni/proto/Nervos$Cell;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getSelectedCellsCount()I
.end method

.method public abstract getSelectedCellsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Nervos$Cell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
