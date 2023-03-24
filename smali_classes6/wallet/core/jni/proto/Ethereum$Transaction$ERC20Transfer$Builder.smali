.class public final Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$Transaction$ERC20TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC20TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 846
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->access$600()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ethereum$1;)V
    .locals 0

    .line 839
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;
    .locals 1

    .line 954
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 955
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->access$1100(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;
    .locals 1

    .line 899
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 900
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->access$800(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 942
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->access$1000(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 886
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 887
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->access$700(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 914
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 915
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->access$900(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
