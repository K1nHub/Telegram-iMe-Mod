.class public final Lwallet/core/jni/proto/Hedera$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Hedera.java"

# interfaces
.implements Lwallet/core/jni/proto/Hedera$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Hedera$SigningOutput;",
        "Lwallet/core/jni/proto/Hedera$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Hedera$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3405
    invoke-static {}, Lwallet/core/jni/proto/Hedera$SigningOutput;->access$5400()Lwallet/core/jni/proto/Hedera$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Hedera$1;)V
    .locals 0

    .line 3398
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Hedera$SigningOutput$Builder;
    .locals 1

    .line 3444
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3445
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$SigningOutput;->access$5600(Lwallet/core/jni/proto/Hedera$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3419
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3431
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3432
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$SigningOutput;->access$5500(Lwallet/core/jni/proto/Hedera$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
