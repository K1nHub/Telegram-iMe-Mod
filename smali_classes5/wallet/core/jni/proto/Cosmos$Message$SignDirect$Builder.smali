.class public final Lwallet/core/jni/proto/Cosmos$Message$SignDirect$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$SignDirectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$SignDirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$SignDirect;",
        "Lwallet/core/jni/proto/Cosmos$Message$SignDirect$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$SignDirectOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13487
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;->access$24100()Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 13480
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$SignDirect$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAuthInfoBytes()Lwallet/core/jni/proto/Cosmos$Message$SignDirect$Builder;
    .locals 1

    .line 13566
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13567
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;->access$24500(Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)V

    return-object p0
.end method

.method public clearBodyBytes()Lwallet/core/jni/proto/Cosmos$Message$SignDirect$Builder;
    .locals 1

    .line 13526
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13527
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;->access$24300(Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)V

    return-object p0
.end method

.method public getAuthInfoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13541
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;->getAuthInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13501
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;->getBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAuthInfoBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$SignDirect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;->access$24400(Lwallet/core/jni/proto/Cosmos$Message$SignDirect;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBodyBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$SignDirect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13513
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;->access$24200(Lwallet/core/jni/proto/Cosmos$Message$SignDirect;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
