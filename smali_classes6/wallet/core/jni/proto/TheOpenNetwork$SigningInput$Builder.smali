.class public final Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TheOpenNetwork.java"

# interfaces
.implements Lwallet/core/jni/proto/TheOpenNetwork$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1517
    invoke-static {}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->access$1900()Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/TheOpenNetwork$1;)V
    .locals 0

    .line 1510
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearActionOneof()Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;
    .locals 1

    .line 1527
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1528
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->access$2000(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;
    .locals 1

    .line 1568
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1569
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->access$2200(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;
    .locals 1

    .line 1616
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1617
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->access$2500(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;)V

    return-object p0
.end method

.method public getActionOneofCase()Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;
    .locals 1

    .line 1523
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->getActionOneofCase()Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1543
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
    .locals 1

    .line 1585
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->getTransfer()Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 1578
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1608
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1609
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->access$2400(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1555
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1556
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->access$2100(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1600
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1601
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->access$2300(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1591
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->access$2300(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-object p0
.end method
