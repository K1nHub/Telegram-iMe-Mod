.class public final Lwallet/core/jni/proto/Icon$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Icon.java"

# interfaces
.implements Lwallet/core/jni/proto/Icon$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Icon$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Icon$SigningOutput;",
        "Lwallet/core/jni/proto/Icon$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Icon$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1313
    invoke-static {}, Lwallet/core/jni/proto/Icon$SigningOutput;->access$2000()Lwallet/core/jni/proto/Icon$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Icon$1;)V
    .locals 0

    .line 1306
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Icon$SigningOutput$Builder;
    .locals 1

    .line 1366
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1367
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Icon$SigningOutput;->access$2200(Lwallet/core/jni/proto/Icon$SigningOutput;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/Icon$SigningOutput$Builder;
    .locals 1

    .line 1421
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1422
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Icon$SigningOutput;->access$2500(Lwallet/core/jni/proto/Icon$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Ljava/lang/String;
    .locals 1

    .line 1327
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningOutput;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningOutput;->getEncodedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1396
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Ljava/lang/String;)Lwallet/core/jni/proto/Icon$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1353
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1354
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningOutput;->access$2100(Lwallet/core/jni/proto/Icon$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEncodedBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Icon$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1381
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1382
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningOutput;->access$2300(Lwallet/core/jni/proto/Icon$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Icon$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1408
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1409
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Icon$SigningOutput;->access$2400(Lwallet/core/jni/proto/Icon$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
