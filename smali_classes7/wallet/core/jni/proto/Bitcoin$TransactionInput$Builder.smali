.class public final Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$TransactionInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin$TransactionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Bitcoin$TransactionInput;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1310
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->access$1800()Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Bitcoin$1;)V
    .locals 0

    .line 1303
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPreviousOutput()Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
    .locals 1

    .line 1380
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1381
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->access$2100(Lwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-object p0
.end method

.method public clearScript()Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
    .locals 1

    .line 1460
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1461
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->access$2500(Lwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-object p0
.end method

.method public clearSequence()Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
    .locals 1

    .line 1420
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1421
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->access$2300(Lwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-object p0
.end method

.method public getPreviousOutput()Lwallet/core/jni/proto/Bitcoin$OutPoint;
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->getPreviousOutput()Lwallet/core/jni/proto/Bitcoin$OutPoint;

    move-result-object v0

    return-object v0
.end method

.method public getScript()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->getSequence()I

    move-result v0

    return v0
.end method

.method public hasPreviousOutput()Z
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->hasPreviousOutput()Z

    move-result v0

    return v0
.end method

.method public mergePreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1369
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1370
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->access$2000(Lwallet/core/jni/proto/Bitcoin$TransactionInput;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public setPreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;)Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1357
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1358
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->access$1900(Lwallet/core/jni/proto/Bitcoin$TransactionInput;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public setPreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1344
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->access$1900(Lwallet/core/jni/proto/Bitcoin$TransactionInput;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public setScript(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1447
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1448
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->access$2400(Lwallet/core/jni/proto/Bitcoin$TransactionInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSequence(I)Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1407
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1408
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->access$2200(Lwallet/core/jni/proto/Bitcoin$TransactionInput;I)V

    return-object p0
.end method
