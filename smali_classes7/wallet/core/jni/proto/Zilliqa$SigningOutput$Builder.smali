.class public final Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Zilliqa.java"

# interfaces
.implements Lwallet/core/jni/proto/Zilliqa$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Zilliqa$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Zilliqa$SigningOutput;",
        "Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Zilliqa$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2432
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->access$3900()Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Zilliqa$1;)V
    .locals 0

    .line 2425
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearJson()Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;
    .locals 1

    .line 2525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->access$4300(Lwallet/core/jni/proto/Zilliqa$SigningOutput;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;
    .locals 1

    .line 2471
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2472
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->access$4100(Lwallet/core/jni/proto/Zilliqa$SigningOutput;)V

    return-object p0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 2486
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2499
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->getJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2446
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setJson(Ljava/lang/String;)Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2512
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2513
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->access$4200(Lwallet/core/jni/proto/Zilliqa$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJsonBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2540
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2541
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->access$4400(Lwallet/core/jni/proto/Zilliqa$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2458
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2459
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->access$4000(Lwallet/core/jni/proto/Zilliqa$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
