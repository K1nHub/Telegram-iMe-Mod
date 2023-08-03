.class public final Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$UnfreezeAssetContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;",
        "Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$UnfreezeAssetContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6977
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->access$11500()Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 6970
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;
    .locals 1

    .line 7030
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7031
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->access$11700(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)V

    return-object p0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 6991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7004
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7017
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7018
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->access$11600(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7045
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7046
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->access$11800(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
