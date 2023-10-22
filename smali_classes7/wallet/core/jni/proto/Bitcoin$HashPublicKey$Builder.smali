.class public final Lwallet/core/jni/proto/Bitcoin$HashPublicKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$HashPublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin$HashPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Bitcoin$HashPublicKey;",
        "Lwallet/core/jni/proto/Bitcoin$HashPublicKey$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$HashPublicKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7385
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;->access$12500()Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Bitcoin$1;)V
    .locals 0

    .line 7378
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$HashPublicKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDataHash()Lwallet/core/jni/proto/Bitcoin$HashPublicKey$Builder;
    .locals 1

    .line 7424
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7425
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;->access$12700(Lwallet/core/jni/proto/Bitcoin$HashPublicKey;)V

    return-object p0
.end method

.method public clearPublicKeyHash()Lwallet/core/jni/proto/Bitcoin$HashPublicKey$Builder;
    .locals 1

    .line 7464
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7465
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;->access$12900(Lwallet/core/jni/proto/Bitcoin$HashPublicKey;)V

    return-object p0
.end method

.method public getDataHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7399
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;->getDataHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7439
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;->getPublicKeyHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDataHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$HashPublicKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7411
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;->access$12600(Lwallet/core/jni/proto/Bitcoin$HashPublicKey;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPublicKeyHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$HashPublicKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7451
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7452
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;->access$12800(Lwallet/core/jni/proto/Bitcoin$HashPublicKey;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
