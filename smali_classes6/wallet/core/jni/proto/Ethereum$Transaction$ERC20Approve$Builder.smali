.class public final Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$Transaction$ERC20ApproveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC20ApproveOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1286
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->access$1300()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ethereum$1;)V
    .locals 0

    .line 1279
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;
    .locals 1

    .line 1394
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1395
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->access$1800(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)V

    return-object p0
.end method

.method public clearSpender()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->access$1500(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSpender()Ljava/lang/String;
    .locals 1

    .line 1300
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->getSpender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpenderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->getSpenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->access$1700(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSpender(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1326
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1327
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->access$1400(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSpenderBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1354
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1355
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->access$1600(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
