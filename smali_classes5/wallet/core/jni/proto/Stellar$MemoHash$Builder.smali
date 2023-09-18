.class public final Lwallet/core/jni/proto/Stellar$MemoHash$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$MemoHashOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$MemoHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$MemoHash;",
        "Lwallet/core/jni/proto/Stellar$MemoHash$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$MemoHashOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4494
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoHash;->access$6800()Lwallet/core/jni/proto/Stellar$MemoHash;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 4487
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$MemoHash$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHash()Lwallet/core/jni/proto/Stellar$MemoHash$Builder;
    .locals 1

    .line 4521
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4522
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$MemoHash;->access$7000(Lwallet/core/jni/proto/Stellar$MemoHash;)V

    return-object p0
.end method

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4504
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$MemoHash;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$MemoHash$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4512
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4513
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$MemoHash;->access$6900(Lwallet/core/jni/proto/Stellar$MemoHash;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
