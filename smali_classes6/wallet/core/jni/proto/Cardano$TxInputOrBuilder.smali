.class public interface abstract Lwallet/core/jni/proto/Cardano$TxInputOrBuilder;
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
    name = "TxInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAmount()J
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getOutPoint()Lwallet/core/jni/proto/Cardano$OutPoint;
.end method

.method public abstract getTokenAmount(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getTokenAmountCount()I
.end method

.method public abstract getTokenAmountList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasOutPoint()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
