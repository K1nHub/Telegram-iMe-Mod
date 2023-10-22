.class public final Lwallet/core/jni/proto/FIO$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/FIO$SigningOutput;",
        "Lwallet/core/jni/proto/FIO$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7441
    invoke-static {}, Lwallet/core/jni/proto/FIO$SigningOutput;->access$12700()Lwallet/core/jni/proto/FIO$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/FIO$1;)V
    .locals 0

    .line 7434
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearError()Lwallet/core/jni/proto/FIO$SigningOutput$Builder;
    .locals 1

    .line 7575
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7576
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$SigningOutput;->access$13300(Lwallet/core/jni/proto/FIO$SigningOutput;)V

    return-object p0
.end method

.method public clearJson()Lwallet/core/jni/proto/FIO$SigningOutput$Builder;
    .locals 1

    .line 7494
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7495
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$SigningOutput;->access$12900(Lwallet/core/jni/proto/FIO$SigningOutput;)V

    return-object p0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 7550
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningOutput;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 7524
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningOutput;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 7455
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7468
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningOutput;->getJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/FIO$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7562
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7563
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningOutput;->access$13200(Lwallet/core/jni/proto/FIO$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/FIO$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7536
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7537
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningOutput;->access$13100(Lwallet/core/jni/proto/FIO$SigningOutput;I)V

    return-object p0
.end method

.method public setJson(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7481
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7482
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningOutput;->access$12800(Lwallet/core/jni/proto/FIO$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJsonBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7509
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7510
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningOutput;->access$13000(Lwallet/core/jni/proto/FIO$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
