.class public final Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$Transaction$ERC721TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC721TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1814
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->access$2000()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ethereum$1;)V
    .locals 0

    .line 1807
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFrom()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
    .locals 1

    .line 1867
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1868
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->access$2200(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
    .locals 1

    .line 1936
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1937
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->access$2500(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V

    return-object p0
.end method

.method public clearTokenId()Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
    .locals 1

    .line 1991
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1992
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->access$2800(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;)V

    return-object p0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getFromBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1897
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1910
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1966
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->getTokenId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1854
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->access$2100(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1882
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1883
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->access$2300(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1923
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1924
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->access$2400(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1951
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1952
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->access$2600(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1978
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;->access$2700(Lwallet/core/jni/proto/Ethereum$Transaction$ERC721Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
