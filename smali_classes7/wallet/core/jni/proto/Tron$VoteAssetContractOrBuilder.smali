.class public interface abstract Lwallet/core/jni/proto/Tron$VoteAssetContractOrBuilder;
.super Ljava/lang/Object;
.source "Tron.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoteAssetContractOrBuilder"
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getOwnerAddress()Ljava/lang/String;
.end method

.method public abstract getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSupport()Z
.end method

.method public abstract getVoteAddress(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getVoteAddressBytes(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getVoteAddressCount()I
.end method

.method public abstract getVoteAddressList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
