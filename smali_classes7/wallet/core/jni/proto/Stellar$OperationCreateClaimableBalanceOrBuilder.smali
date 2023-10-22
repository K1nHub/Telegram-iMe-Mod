.class public interface abstract Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalanceOrBuilder;
.super Ljava/lang/Object;
.source "Stellar.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperationCreateClaimableBalanceOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmount()J
.end method

.method public abstract getAsset()Lwallet/core/jni/proto/Stellar$Asset;
.end method

.method public abstract getClaimants(I)Lwallet/core/jni/proto/Stellar$Claimant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getClaimantsCount()I
.end method

.method public abstract getClaimantsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Stellar$Claimant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract hasAsset()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
