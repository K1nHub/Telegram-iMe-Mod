.class public final Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Waves.java"

# interfaces
.implements Lwallet/core/jni/proto/Waves$LeaseMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves$LeaseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Waves$LeaseMessage;",
        "Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Waves$LeaseMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1242
    invoke-static {}, Lwallet/core/jni/proto/Waves$LeaseMessage;->access$1700()Lwallet/core/jni/proto/Waves$LeaseMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Waves$1;)V
    .locals 0

    .line 1235
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;
    .locals 1

    .line 1281
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1282
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->access$1900(Lwallet/core/jni/proto/Waves$LeaseMessage;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;
    .locals 1

    .line 1390
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1391
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->access$2400(Lwallet/core/jni/proto/Waves$LeaseMessage;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;
    .locals 1

    .line 1335
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1336
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->access$2100(Lwallet/core/jni/proto/Waves$LeaseMessage;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 1256
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFee()J
    .locals 2

    .line 1365
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1309
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1268
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1269
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Waves$LeaseMessage;->access$1800(Lwallet/core/jni/proto/Waves$LeaseMessage;J)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1377
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1378
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Waves$LeaseMessage;->access$2300(Lwallet/core/jni/proto/Waves$LeaseMessage;J)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1322
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1323
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$LeaseMessage;->access$2000(Lwallet/core/jni/proto/Waves$LeaseMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1350
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1351
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$LeaseMessage;->access$2200(Lwallet/core/jni/proto/Waves$LeaseMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
