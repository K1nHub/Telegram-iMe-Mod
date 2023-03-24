.class public final Lwallet/core/jni/proto/Aptos$TransferMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$TransferMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$TransferMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$TransferMessage;",
        "Lwallet/core/jni/proto/Aptos$TransferMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$TransferMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 260
    invoke-static {}, Lwallet/core/jni/proto/Aptos$TransferMessage;->access$000()Lwallet/core/jni/proto/Aptos$TransferMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$TransferMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Aptos$TransferMessage$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$TransferMessage;->access$500(Lwallet/core/jni/proto/Aptos$TransferMessage;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Aptos$TransferMessage$Builder;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 314
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$TransferMessage;->access$200(Lwallet/core/jni/proto/Aptos$TransferMessage;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$TransferMessage;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$TransferMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$TransferMessage;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Aptos$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 356
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransferMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aptos$TransferMessage;->access$400(Lwallet/core/jni/proto/Aptos$TransferMessage;J)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 301
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$TransferMessage;->access$100(Lwallet/core/jni/proto/Aptos$TransferMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 329
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$TransferMessage;->access$300(Lwallet/core/jni/proto/Aptos$TransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
