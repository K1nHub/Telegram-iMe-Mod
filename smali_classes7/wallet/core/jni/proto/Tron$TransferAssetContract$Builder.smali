.class public final Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$TransferAssetContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$TransferAssetContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$TransferAssetContract;",
        "Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$TransferAssetContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1032
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$1000()Lwallet/core/jni/proto/Tron$TransferAssetContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 1025
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1

    .line 1278
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1279
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$2100(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V

    return-object p0
.end method

.method public clearAssetName()Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1086
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$1200(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V

    return-object p0
.end method

.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1

    .line 1154
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1155
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$1500(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1

    .line 1223
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1224
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$1800(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 1253
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getAssetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getAssetNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1265
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1266
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$2000(Lwallet/core/jni/proto/Tron$TransferAssetContract;J)V

    return-object p0
.end method

.method public setAssetName(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1072
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1073
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$1100(Lwallet/core/jni/proto/Tron$TransferAssetContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAssetNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1100
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1101
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$1300(Lwallet/core/jni/proto/Tron$TransferAssetContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1141
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1142
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$1400(Lwallet/core/jni/proto/Tron$TransferAssetContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1169
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1170
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$1600(Lwallet/core/jni/proto/Tron$TransferAssetContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1210
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1211
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$1700(Lwallet/core/jni/proto/Tron$TransferAssetContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1238
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1239
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->access$1900(Lwallet/core/jni/proto/Tron$TransferAssetContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
