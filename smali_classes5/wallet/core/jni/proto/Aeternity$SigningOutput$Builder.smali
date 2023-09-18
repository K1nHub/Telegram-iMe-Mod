.class public final Lwallet/core/jni/proto/Aeternity$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aeternity.java"

# interfaces
.implements Lwallet/core/jni/proto/Aeternity$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aeternity$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aeternity$SigningOutput;",
        "Lwallet/core/jni/proto/Aeternity$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aeternity$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1416
    invoke-static {}, Lwallet/core/jni/proto/Aeternity$SigningOutput;->access$2100()Lwallet/core/jni/proto/Aeternity$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aeternity$1;)V
    .locals 0

    .line 1409
    invoke-direct {p0}, Lwallet/core/jni/proto/Aeternity$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Aeternity$SigningOutput$Builder;
    .locals 1

    .line 1469
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1470
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aeternity$SigningOutput;->access$2300(Lwallet/core/jni/proto/Aeternity$SigningOutput;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/Aeternity$SigningOutput$Builder;
    .locals 1

    .line 1538
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1539
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aeternity$SigningOutput;->access$2600(Lwallet/core/jni/proto/Aeternity$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Ljava/lang/String;
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningOutput;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningOutput;->getEncodedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningOutput;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningOutput;->getSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Ljava/lang/String;)Lwallet/core/jni/proto/Aeternity$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1456
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningOutput;->access$2200(Lwallet/core/jni/proto/Aeternity$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEncodedBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aeternity$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1484
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1485
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningOutput;->access$2400(Lwallet/core/jni/proto/Aeternity$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lwallet/core/jni/proto/Aeternity$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningOutput;->access$2500(Lwallet/core/jni/proto/Aeternity$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSignatureBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aeternity$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aeternity$SigningOutput;->access$2700(Lwallet/core/jni/proto/Aeternity$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
