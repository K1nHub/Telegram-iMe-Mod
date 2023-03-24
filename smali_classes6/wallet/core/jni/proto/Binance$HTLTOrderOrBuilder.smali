.class public interface abstract Lwallet/core/jni/proto/Binance$HTLTOrderOrBuilder;
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
    name = "HTLTOrderOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmount(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getAmountCount()I
.end method

.method public abstract getAmountList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCrossChain()Z
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getExpectedIncome()Ljava/lang/String;
.end method

.method public abstract getExpectedIncomeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getFrom()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHeightSpan()J
.end method

.method public abstract getRandomNumberHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRecipientOtherChain()Ljava/lang/String;
.end method

.method public abstract getRecipientOtherChainBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSenderOtherChain()Ljava/lang/String;
.end method

.method public abstract getSenderOtherChainBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getTo()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
