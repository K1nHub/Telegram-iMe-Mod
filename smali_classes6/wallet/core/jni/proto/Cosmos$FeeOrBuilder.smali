.class public interface abstract Lwallet/core/jni/proto/Cosmos$FeeOrBuilder;
.super Ljava/lang/Object;
.source "Cosmos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeeOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmounts(I)Lwallet/core/jni/proto/Cosmos$Amount;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getAmountsCount()I
.end method

.method public abstract getAmountsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getGas()J
.end method

.method public abstract synthetic isInitialized()Z
.end method
