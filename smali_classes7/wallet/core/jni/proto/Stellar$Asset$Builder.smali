.class public final Lwallet/core/jni/proto/Stellar$Asset$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$AssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$Asset;",
        "Lwallet/core/jni/proto/Stellar$Asset$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$AssetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 388
    invoke-static {}, Lwallet/core/jni/proto/Stellar$Asset;->access$000()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 381
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$Asset$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAlphanum4()Lwallet/core/jni/proto/Stellar$Asset$Builder;
    .locals 1

    .line 510
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 511
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$Asset;->access$500(Lwallet/core/jni/proto/Stellar$Asset;)V

    return-object p0
.end method

.method public clearIssuer()Lwallet/core/jni/proto/Stellar$Asset$Builder;
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 442
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$Asset;->access$200(Lwallet/core/jni/proto/Stellar$Asset;)V

    return-object p0
.end method

.method public getAlphanum4()Ljava/lang/String;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$Asset;->getAlphanum4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlphanum4Bytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$Asset;->getAlphanum4Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$Asset;->getIssuer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$Asset;->getIssuerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAlphanum4(Ljava/lang/String;)Lwallet/core/jni/proto/Stellar$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 498
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$Asset;->access$400(Lwallet/core/jni/proto/Stellar$Asset;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAlphanum4Bytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$Asset;->access$600(Lwallet/core/jni/proto/Stellar$Asset;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIssuer(Ljava/lang/String;)Lwallet/core/jni/proto/Stellar$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$Asset;->access$100(Lwallet/core/jni/proto/Stellar$Asset;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIssuerBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$Asset;->access$300(Lwallet/core/jni/proto/Stellar$Asset;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
