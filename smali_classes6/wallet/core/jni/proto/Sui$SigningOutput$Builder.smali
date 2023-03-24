.class public final Lwallet/core/jni/proto/Sui$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sui.java"

# interfaces
.implements Lwallet/core/jni/proto/Sui$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Sui$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Sui$SigningOutput;",
        "Lwallet/core/jni/proto/Sui$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Sui$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1097
    invoke-static {}, Lwallet/core/jni/proto/Sui$SigningOutput;->access$1300()Lwallet/core/jni/proto/Sui$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Sui$1;)V
    .locals 0

    .line 1090
    invoke-direct {p0}, Lwallet/core/jni/proto/Sui$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSignature()Lwallet/core/jni/proto/Sui$SigningOutput$Builder;
    .locals 1

    .line 1219
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1220
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Sui$SigningOutput;->access$1800(Lwallet/core/jni/proto/Sui$SigningOutput;)V

    return-object p0
.end method

.method public clearUnsignedTx()Lwallet/core/jni/proto/Sui$SigningOutput$Builder;
    .locals 1

    .line 1150
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1151
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Sui$SigningOutput;->access$1500(Lwallet/core/jni/proto/Sui$SigningOutput;)V

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Sui$SigningOutput;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Sui$SigningOutput;->getSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUnsignedTx()Ljava/lang/String;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Sui$SigningOutput;->getUnsignedTx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsignedTxBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Sui$SigningOutput;->getUnsignedTxBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setSignature(Ljava/lang/String;)Lwallet/core/jni/proto/Sui$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1206
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1207
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Sui$SigningOutput;->access$1700(Lwallet/core/jni/proto/Sui$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSignatureBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Sui$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1234
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1235
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Sui$SigningOutput;->access$1900(Lwallet/core/jni/proto/Sui$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUnsignedTx(Ljava/lang/String;)Lwallet/core/jni/proto/Sui$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1137
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1138
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Sui$SigningOutput;->access$1400(Lwallet/core/jni/proto/Sui$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUnsignedTxBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Sui$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1165
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1166
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Sui$SigningOutput;->access$1600(Lwallet/core/jni/proto/Sui$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
