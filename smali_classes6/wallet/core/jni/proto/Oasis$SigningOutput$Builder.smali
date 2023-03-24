.class public final Lwallet/core/jni/proto/Oasis$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Oasis.java"

# interfaces
.implements Lwallet/core/jni/proto/Oasis$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Oasis$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Oasis$SigningOutput;",
        "Lwallet/core/jni/proto/Oasis$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Oasis$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1624
    invoke-static {}, Lwallet/core/jni/proto/Oasis$SigningOutput;->access$2600()Lwallet/core/jni/proto/Oasis$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Oasis$1;)V
    .locals 0

    .line 1617
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Oasis$SigningOutput$Builder;
    .locals 1

    .line 1663
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1664
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$SigningOutput;->access$2800(Lwallet/core/jni/proto/Oasis$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1638
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Oasis$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1650
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1651
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$SigningOutput;->access$2700(Lwallet/core/jni/proto/Oasis$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
