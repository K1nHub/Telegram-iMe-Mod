.class public interface abstract Lwallet/core/jni/proto/FIO$Action$AddPubAddressOrBuilder;
.super Ljava/lang/Object;
.source "FIO.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AddPubAddressOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getFee()J
.end method

.method public abstract getFioAddress()Ljava/lang/String;
.end method

.method public abstract getFioAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPublicAddresses(I)Lwallet/core/jni/proto/FIO$PublicAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getPublicAddressesCount()I
.end method

.method public abstract getPublicAddressesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/FIO$PublicAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
