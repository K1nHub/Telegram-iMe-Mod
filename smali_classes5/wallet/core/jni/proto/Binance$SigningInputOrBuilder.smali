.class public interface abstract Lwallet/core/jni/proto/Binance$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Binance.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccountNumber()J
.end method

.method public abstract getBurnOrder()Lwallet/core/jni/proto/Binance$TokenBurnOrder;
.end method

.method public abstract getCancelTradeOrder()Lwallet/core/jni/proto/Binance$CancelTradeOrder;
.end method

.method public abstract getChainId()Ljava/lang/String;
.end method

.method public abstract getChainIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getClaimHTLTOrder()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getDepositHTLTOrder()Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
.end method

.method public abstract getFreezeOrder()Lwallet/core/jni/proto/Binance$TokenFreezeOrder;
.end method

.method public abstract getHtltOrder()Lwallet/core/jni/proto/Binance$HTLTOrder;
.end method

.method public abstract getIssueOrder()Lwallet/core/jni/proto/Binance$TokenIssueOrder;
.end method

.method public abstract getMemo()Ljava/lang/String;
.end method

.method public abstract getMemoBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMintOrder()Lwallet/core/jni/proto/Binance$TokenMintOrder;
.end method

.method public abstract getOrderOneofCase()Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRefundHTLTOrder()Lwallet/core/jni/proto/Binance$RefundHTLTOrder;
.end method

.method public abstract getSendOrder()Lwallet/core/jni/proto/Binance$SendOrder;
.end method

.method public abstract getSequence()J
.end method

.method public abstract getSideDelegateOrder()Lwallet/core/jni/proto/Binance$SideChainDelegate;
.end method

.method public abstract getSideRedelegateOrder()Lwallet/core/jni/proto/Binance$SideChainRedelegate;
.end method

.method public abstract getSideUndelegateOrder()Lwallet/core/jni/proto/Binance$SideChainUndelegate;
.end method

.method public abstract getSource()J
.end method

.method public abstract getTimeLockOrder()Lwallet/core/jni/proto/Binance$TimeLockOrder;
.end method

.method public abstract getTimeRelockOrder()Lwallet/core/jni/proto/Binance$TimeRelockOrder;
.end method

.method public abstract getTimeUnlockOrder()Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
.end method

.method public abstract getTradeOrder()Lwallet/core/jni/proto/Binance$TradeOrder;
.end method

.method public abstract getTransferOutOrder()Lwallet/core/jni/proto/Binance$TransferOut;
.end method

.method public abstract getUnfreezeOrder()Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;
.end method

.method public abstract hasBurnOrder()Z
.end method

.method public abstract hasCancelTradeOrder()Z
.end method

.method public abstract hasClaimHTLTOrder()Z
.end method

.method public abstract hasDepositHTLTOrder()Z
.end method

.method public abstract hasFreezeOrder()Z
.end method

.method public abstract hasHtltOrder()Z
.end method

.method public abstract hasIssueOrder()Z
.end method

.method public abstract hasMintOrder()Z
.end method

.method public abstract hasRefundHTLTOrder()Z
.end method

.method public abstract hasSendOrder()Z
.end method

.method public abstract hasSideDelegateOrder()Z
.end method

.method public abstract hasSideRedelegateOrder()Z
.end method

.method public abstract hasSideUndelegateOrder()Z
.end method

.method public abstract hasTimeLockOrder()Z
.end method

.method public abstract hasTimeRelockOrder()Z
.end method

.method public abstract hasTimeUnlockOrder()Z
.end method

.method public abstract hasTradeOrder()Z
.end method

.method public abstract hasTransferOutOrder()Z
.end method

.method public abstract hasUnfreezeOrder()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
