.class public final Lwallet/core/jni/proto/Algorand$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Algorand.java"

# interfaces
.implements Lwallet/core/jni/proto/Algorand$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Algorand$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Algorand$SigningOutput;",
        "Lwallet/core/jni/proto/Algorand$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Algorand$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2698
    invoke-static {}, Lwallet/core/jni/proto/Algorand$SigningOutput;->access$4700()Lwallet/core/jni/proto/Algorand$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Algorand$1;)V
    .locals 0

    .line 2691
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Algorand$SigningOutput$Builder;
    .locals 1

    .line 2737
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningOutput;->access$4900(Lwallet/core/jni/proto/Algorand$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Algorand$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2724
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2725
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningOutput;->access$4800(Lwallet/core/jni/proto/Algorand$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
