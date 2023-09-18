.class public final Lwallet/core/jni/proto/Everscale$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Everscale.java"

# interfaces
.implements Lwallet/core/jni/proto/Everscale$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Everscale$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Everscale$SigningOutput;",
        "Lwallet/core/jni/proto/Everscale$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Everscale$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1761
    invoke-static {}, Lwallet/core/jni/proto/Everscale$SigningOutput;->access$2600()Lwallet/core/jni/proto/Everscale$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Everscale$1;)V
    .locals 0

    .line 1754
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Everscale$SigningOutput$Builder;
    .locals 1

    .line 1798
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1799
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$SigningOutput;->access$2800(Lwallet/core/jni/proto/Everscale$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Ljava/lang/String;
    .locals 1

    .line 1771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$SigningOutput;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$SigningOutput;->getEncodedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Ljava/lang/String;)Lwallet/core/jni/proto/Everscale$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1789
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$SigningOutput;->access$2700(Lwallet/core/jni/proto/Everscale$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEncodedBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Everscale$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1809
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$SigningOutput;->access$2900(Lwallet/core/jni/proto/Everscale$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
