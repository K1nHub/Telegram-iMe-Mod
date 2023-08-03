.class public interface abstract Lwallet/core/jni/proto/Cardano$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Cardano.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getDelegate()Lwallet/core/jni/proto/Cardano$Delegate;
.end method

.method public abstract getDeregisterStakingKey()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
.end method

.method public abstract getPlan()Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

.method public abstract getRegisterStakingKey()Lwallet/core/jni/proto/Cardano$RegisterStakingKey;
.end method

.method public abstract getTransferMessage()Lwallet/core/jni/proto/Cardano$Transfer;
.end method

.method public abstract getTtl()J
.end method

.method public abstract getUtxos(I)Lwallet/core/jni/proto/Cardano$TxInput;
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
            "Lwallet/core/jni/proto/Cardano$TxInput;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWithdraw()Lwallet/core/jni/proto/Cardano$Withdraw;
.end method

.method public abstract hasDelegate()Z
.end method

.method public abstract hasDeregisterStakingKey()Z
.end method

.method public abstract hasPlan()Z
.end method

.method public abstract hasRegisterStakingKey()Z
.end method

.method public abstract hasTransferMessage()Z
.end method

.method public abstract hasWithdraw()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
