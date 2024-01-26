.class public final Lwallet/core/jni/proto/Nimiq$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nimiq.java"

# interfaces
.implements Lwallet/core/jni/proto/Nimiq$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nimiq$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nimiq$SigningOutput;",
        "Lwallet/core/jni/proto/Nimiq$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nimiq$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 881
    invoke-static {}, Lwallet/core/jni/proto/Nimiq$SigningOutput;->access$1300()Lwallet/core/jni/proto/Nimiq$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nimiq$1;)V
    .locals 0

    .line 874
    invoke-direct {p0}, Lwallet/core/jni/proto/Nimiq$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Nimiq$SigningOutput$Builder;
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 921
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nimiq$SigningOutput;->access$1500(Lwallet/core/jni/proto/Nimiq$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nimiq$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nimiq$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 907
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 908
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nimiq$SigningOutput;->access$1400(Lwallet/core/jni/proto/Nimiq$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
