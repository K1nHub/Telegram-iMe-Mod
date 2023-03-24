.class public final Lwallet/core/jni/proto/Stellar$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$SigningOutput;",
        "Lwallet/core/jni/proto/Stellar$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6808
    invoke-static {}, Lwallet/core/jni/proto/Stellar$SigningOutput;->access$11800()Lwallet/core/jni/proto/Stellar$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 6801
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSignature()Lwallet/core/jni/proto/Stellar$SigningOutput$Builder;
    .locals 1

    .line 6861
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$SigningOutput;->access$12000(Lwallet/core/jni/proto/Stellar$SigningOutput;)V

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 6822
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningOutput;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6835
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$SigningOutput;->getSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setSignature(Ljava/lang/String;)Lwallet/core/jni/proto/Stellar$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6848
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6849
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningOutput;->access$11900(Lwallet/core/jni/proto/Stellar$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSignatureBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6876
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6877
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$SigningOutput;->access$12100(Lwallet/core/jni/proto/Stellar$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
