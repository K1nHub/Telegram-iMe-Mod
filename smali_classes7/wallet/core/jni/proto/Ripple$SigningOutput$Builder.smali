.class public final Lwallet/core/jni/proto/Ripple$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ripple$SigningOutput;",
        "Lwallet/core/jni/proto/Ripple$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4887
    invoke-static {}, Lwallet/core/jni/proto/Ripple$SigningOutput;->access$8400()Lwallet/core/jni/proto/Ripple$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ripple$1;)V
    .locals 0

    .line 4880
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Ripple$SigningOutput$Builder;
    .locals 1

    .line 4926
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4927
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningOutput;->access$8600(Lwallet/core/jni/proto/Ripple$SigningOutput;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/Ripple$SigningOutput$Builder;
    .locals 1

    .line 4992
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4993
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$SigningOutput;->access$8900(Lwallet/core/jni/proto/Ripple$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4901
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 4967
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningOutput;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 4941
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$SigningOutput;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4913
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4914
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningOutput;->access$8500(Lwallet/core/jni/proto/Ripple$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/Ripple$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4979
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4980
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningOutput;->access$8800(Lwallet/core/jni/proto/Ripple$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/Ripple$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4953
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4954
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$SigningOutput;->access$8700(Lwallet/core/jni/proto/Ripple$SigningOutput;I)V

    return-object p0
.end method
