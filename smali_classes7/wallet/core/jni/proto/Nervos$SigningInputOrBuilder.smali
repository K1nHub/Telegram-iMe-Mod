.class public interface abstract Lwallet/core/jni/proto/Nervos$SigningInputOrBuilder;
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
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getByteFee()J
.end method

.method public abstract getCell(I)Lwallet/core/jni/proto/Nervos$Cell;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getCellCount()I
.end method

.method public abstract getCellList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Nervos$Cell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDaoDeposit()Lwallet/core/jni/proto/Nervos$DaoDeposit;
.end method

.method public abstract getDaoWithdrawPhase1()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
.end method

.method public abstract getDaoWithdrawPhase2()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getNativeTransfer()Lwallet/core/jni/proto/Nervos$NativeTransfer;
.end method

.method public abstract getOperationOneofCase()Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;
.end method

.method public abstract getPlan()Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

.method public abstract getSudtTransfer()Lwallet/core/jni/proto/Nervos$SudtTransfer;
.end method

.method public abstract hasDaoDeposit()Z
.end method

.method public abstract hasDaoWithdrawPhase1()Z
.end method

.method public abstract hasDaoWithdrawPhase2()Z
.end method

.method public abstract hasNativeTransfer()Z
.end method

.method public abstract hasPlan()Z
.end method

.method public abstract hasSudtTransfer()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
