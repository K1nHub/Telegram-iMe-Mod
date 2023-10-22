.class public final Lwallet/core/jni/proto/IoTeX$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$SigningOutput;",
        "Lwallet/core/jni/proto/IoTeX$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9274
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$SigningOutput;->access$18200()Lwallet/core/jni/proto/IoTeX$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 9267
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/IoTeX$SigningOutput$Builder;
    .locals 1

    .line 9313
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9314
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningOutput;->access$18400(Lwallet/core/jni/proto/IoTeX$SigningOutput;)V

    return-object p0
.end method

.method public clearHash()Lwallet/core/jni/proto/IoTeX$SigningOutput$Builder;
    .locals 1

    .line 9353
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9354
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningOutput;->access$18600(Lwallet/core/jni/proto/IoTeX$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9288
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9328
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningOutput;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9300
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9301
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningOutput;->access$18300(Lwallet/core/jni/proto/IoTeX$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9340
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9341
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningOutput;->access$18500(Lwallet/core/jni/proto/IoTeX$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
