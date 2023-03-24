.class public final Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEO.java"

# interfaces
.implements Lwallet/core/jni/proto/NEO$TransactionOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO$TransactionOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEO$TransactionOutput;",
        "Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEO$TransactionOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1054
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$1100()Lwallet/core/jni/proto/NEO$TransactionOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEO$1;)V
    .locals 0

    .line 1047
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1

    .line 1162
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1163
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$1600(Lwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-object p0
.end method

.method public clearAssetId()Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1

    .line 1107
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1108
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$1300(Lwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-object p0
.end method

.method public clearChangeAddress()Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1

    .line 1285
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1286
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$2100(Lwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1

    .line 1216
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1217
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$1800(Lwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getAssetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getAssetIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getChangeAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1149
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1150
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$1500(Lwallet/core/jni/proto/NEO$TransactionOutput;J)V

    return-object p0
.end method

.method public setAssetId(Ljava/lang/String;)Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1094
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1095
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$1200(Lwallet/core/jni/proto/NEO$TransactionOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAssetIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1122
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$1400(Lwallet/core/jni/proto/NEO$TransactionOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setChangeAddress(Ljava/lang/String;)Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1272
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1273
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$2000(Lwallet/core/jni/proto/NEO$TransactionOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChangeAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1300
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1301
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$2200(Lwallet/core/jni/proto/NEO$TransactionOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1203
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1204
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$1700(Lwallet/core/jni/proto/NEO$TransactionOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1231
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1232
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->access$1900(Lwallet/core/jni/proto/NEO$TransactionOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
