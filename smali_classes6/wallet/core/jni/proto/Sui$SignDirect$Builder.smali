.class public final Lwallet/core/jni/proto/Sui$SignDirect$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sui.java"

# interfaces
.implements Lwallet/core/jni/proto/Sui$SignDirectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Sui$SignDirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Sui$SignDirect;",
        "Lwallet/core/jni/proto/Sui$SignDirect$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Sui$SignDirectOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 212
    invoke-static {}, Lwallet/core/jni/proto/Sui$SignDirect;->access$000()Lwallet/core/jni/proto/Sui$SignDirect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Sui$1;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lwallet/core/jni/proto/Sui$SignDirect$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearUnsignedTxMsg()Lwallet/core/jni/proto/Sui$SignDirect$Builder;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 266
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SignDirect;

    invoke-static {v0}, Lwallet/core/jni/proto/Sui$SignDirect;->access$200(Lwallet/core/jni/proto/Sui$SignDirect;)V

    return-object p0
.end method

.method public getUnsignedTxMsg()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SignDirect;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Sui$SignDirect;->getUnsignedTxMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsignedTxMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SignDirect;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Sui$SignDirect;->getUnsignedTxMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setUnsignedTxMsg(Ljava/lang/String;)Lwallet/core/jni/proto/Sui$SignDirect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 253
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SignDirect;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Sui$SignDirect;->access$100(Lwallet/core/jni/proto/Sui$SignDirect;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUnsignedTxMsgBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Sui$SignDirect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 281
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SignDirect;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Sui$SignDirect;->access$300(Lwallet/core/jni/proto/Sui$SignDirect;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
