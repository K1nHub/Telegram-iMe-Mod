.class public final Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$Transfer;",
        "Lwallet/core/jni/proto/IoTeX$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 350
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Transfer;->access$000()Lwallet/core/jni/proto/IoTeX$Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 404
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->access$200(Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
    .locals 1

    .line 527
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 528
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->access$800(Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-object p0
.end method

.method public clearRecipient()Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
    .locals 1

    .line 472
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 473
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->access$500(Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-object p0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->getAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->getAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->getRecipient()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->getRecipientBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 391
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Transfer;->access$100(Lwallet/core/jni/proto/IoTeX$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 419
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Transfer;->access$300(Lwallet/core/jni/proto/IoTeX$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Transfer;->access$700(Lwallet/core/jni/proto/IoTeX$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecipient(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Transfer;->access$400(Lwallet/core/jni/proto/IoTeX$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecipientBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 488
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Transfer;->access$600(Lwallet/core/jni/proto/IoTeX$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
