.class public final Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$SigningOutput;",
        "Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6958
    invoke-static {}, Lwallet/core/jni/proto/NEAR$SigningOutput;->access$12400()Lwallet/core/jni/proto/NEAR$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 6951
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHash()Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;
    .locals 1

    .line 7037
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7038
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$SigningOutput;->access$12800(Lwallet/core/jni/proto/NEAR$SigningOutput;)V

    return-object p0
.end method

.method public clearSignedTransaction()Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;
    .locals 1

    .line 6997
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6998
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$SigningOutput;->access$12600(Lwallet/core/jni/proto/NEAR$SigningOutput;)V

    return-object p0
.end method

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7012
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningOutput;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignedTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6972
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningOutput;->getSignedTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7024
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7025
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningOutput;->access$12700(Lwallet/core/jni/proto/NEAR$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignedTransaction(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6984
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6985
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningOutput;->access$12500(Lwallet/core/jni/proto/NEAR$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
