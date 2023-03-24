.class public final Lwallet/core/jni/proto/Oasis$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Oasis.java"

# interfaces
.implements Lwallet/core/jni/proto/Oasis$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Oasis$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Oasis$SigningInput;",
        "Lwallet/core/jni/proto/Oasis$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Oasis$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1279
    invoke-static {}, Lwallet/core/jni/proto/Oasis$SigningInput;->access$1800()Lwallet/core/jni/proto/Oasis$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Oasis$1;)V
    .locals 0

    .line 1272
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMessage()Lwallet/core/jni/proto/Oasis$SigningInput$Builder;
    .locals 1

    .line 1289
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1290
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$SigningInput;->access$1900(Lwallet/core/jni/proto/Oasis$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Oasis$SigningInput$Builder;
    .locals 1

    .line 1330
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1331
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$SigningInput;->access$2100(Lwallet/core/jni/proto/Oasis$SigningInput;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/Oasis$SigningInput$Builder;
    .locals 1

    .line 1378
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1379
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$SigningInput;->access$2400(Lwallet/core/jni/proto/Oasis$SigningInput;)V

    return-object p0
.end method

.method public getMessageCase()Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$SigningInput;->getMessageCase()Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Oasis$TransferMessage;
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$SigningInput;->getTransfer()Lwallet/core/jni/proto/Oasis$TransferMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 1340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$SigningInput;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/Oasis$TransferMessage;)Lwallet/core/jni/proto/Oasis$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1370
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1371
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$SigningInput;->access$2300(Lwallet/core/jni/proto/Oasis$SigningInput;Lwallet/core/jni/proto/Oasis$TransferMessage;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Oasis$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1317
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1318
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$SigningInput;->access$2000(Lwallet/core/jni/proto/Oasis$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;)Lwallet/core/jni/proto/Oasis$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1362
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1363
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$SigningInput;->access$2200(Lwallet/core/jni/proto/Oasis$SigningInput;Lwallet/core/jni/proto/Oasis$TransferMessage;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Oasis$TransferMessage;)Lwallet/core/jni/proto/Oasis$SigningInput$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$SigningInput;->access$2200(Lwallet/core/jni/proto/Oasis$SigningInput;Lwallet/core/jni/proto/Oasis$TransferMessage;)V

    return-object p0
.end method
