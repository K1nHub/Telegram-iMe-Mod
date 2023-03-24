.class public final Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$CreateAccountMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$CreateAccountMessage;",
        "Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$CreateAccountMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2257
    invoke-static {}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->access$3300()Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 2250
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAuthKey()Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;
    .locals 1

    .line 2310
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2311
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->access$3500(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)V

    return-object p0
.end method

.method public getAuthKey()Ljava/lang/String;
    .locals 1

    .line 2271
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->getAuthKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2284
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->getAuthKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAuthKey(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2297
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2298
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->access$3400(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAuthKeyBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2325
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2326
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->access$3600(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
