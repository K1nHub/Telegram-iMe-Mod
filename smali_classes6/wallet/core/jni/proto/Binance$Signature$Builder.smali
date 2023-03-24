.class public final Lwallet/core/jni/proto/Binance$Signature$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SignatureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$Signature;",
        "Lwallet/core/jni/proto/Binance$Signature$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SignatureOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1305
    invoke-static {}, Lwallet/core/jni/proto/Binance$Signature;->access$1700()Lwallet/core/jni/proto/Binance$Signature;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 1298
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Signature$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccountNumber()Lwallet/core/jni/proto/Binance$Signature$Builder;
    .locals 1

    .line 1424
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1425
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$Signature;->access$2300(Lwallet/core/jni/proto/Binance$Signature;)V

    return-object p0
.end method

.method public clearPubKey()Lwallet/core/jni/proto/Binance$Signature$Builder;
    .locals 1

    .line 1344
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$Signature;->access$1900(Lwallet/core/jni/proto/Binance$Signature;)V

    return-object p0
.end method

.method public clearSequence()Lwallet/core/jni/proto/Binance$Signature$Builder;
    .locals 1

    .line 1464
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1465
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$Signature;->access$2500(Lwallet/core/jni/proto/Binance$Signature;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/Binance$Signature$Builder;
    .locals 1

    .line 1384
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1385
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$Signature;->access$2100(Lwallet/core/jni/proto/Binance$Signature;)V

    return-object p0
.end method

.method public getAccountNumber()J
    .locals 2

    .line 1399
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Signature;->getAccountNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPubKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1319
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Signature;->getPubKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 1439
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Signature;->getSequence()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Signature;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAccountNumber(J)Lwallet/core/jni/proto/Binance$Signature$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1411
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$Signature;->access$2200(Lwallet/core/jni/proto/Binance$Signature;J)V

    return-object p0
.end method

.method public setPubKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$Signature$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1331
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1332
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$Signature;->access$1800(Lwallet/core/jni/proto/Binance$Signature;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSequence(J)Lwallet/core/jni/proto/Binance$Signature$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1451
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1452
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$Signature;->access$2400(Lwallet/core/jni/proto/Binance$Signature;J)V

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$Signature$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1371
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1372
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$Signature;->access$2000(Lwallet/core/jni/proto/Binance$Signature;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
