.class public final Lwallet/core/jni/proto/Everscale$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Everscale.java"

# interfaces
.implements Lwallet/core/jni/proto/Everscale$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Everscale$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Everscale$SigningInput;",
        "Lwallet/core/jni/proto/Everscale$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Everscale$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1406
    invoke-static {}, Lwallet/core/jni/proto/Everscale$SigningInput;->access$1800()Lwallet/core/jni/proto/Everscale$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Everscale$1;)V
    .locals 0

    .line 1399
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearActionOneof()Lwallet/core/jni/proto/Everscale$SigningInput$Builder;
    .locals 1

    .line 1416
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1417
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$SigningInput;->access$1900(Lwallet/core/jni/proto/Everscale$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Everscale$SigningInput$Builder;
    .locals 1

    .line 1505
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1506
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$SigningInput;->access$2400(Lwallet/core/jni/proto/Everscale$SigningInput;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/Everscale$SigningInput$Builder;
    .locals 1

    .line 1465
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1466
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$SigningInput;->access$2200(Lwallet/core/jni/proto/Everscale$SigningInput;)V

    return-object p0
.end method

.method public getActionOneofCase()Lwallet/core/jni/proto/Everscale$SigningInput$ActionOneofCase;
    .locals 1

    .line 1412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$SigningInput;->getActionOneofCase()Lwallet/core/jni/proto/Everscale$SigningInput$ActionOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1480
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Everscale$Transfer;
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$SigningInput;->getTransfer()Lwallet/core/jni/proto/Everscale$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 1427
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$SigningInput;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/Everscale$Transfer;)Lwallet/core/jni/proto/Everscale$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1457
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1458
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$SigningInput;->access$2100(Lwallet/core/jni/proto/Everscale$SigningInput;Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Everscale$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1492
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1493
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$SigningInput;->access$2300(Lwallet/core/jni/proto/Everscale$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Everscale$Transfer$Builder;)Lwallet/core/jni/proto/Everscale$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1449
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1450
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$SigningInput;->access$2000(Lwallet/core/jni/proto/Everscale$SigningInput;Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Everscale$Transfer;)Lwallet/core/jni/proto/Everscale$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1440
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1441
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$SigningInput;->access$2000(Lwallet/core/jni/proto/Everscale$SigningInput;Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-object p0
.end method
