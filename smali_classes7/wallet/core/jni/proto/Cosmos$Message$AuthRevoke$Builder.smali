.class public final Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$AuthRevokeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthRevokeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15887
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->access$28300()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 15880
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGrantee()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    .locals 1

    .line 15973
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15974
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->access$28800(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V

    return-object p0
.end method

.method public clearGranter()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    .locals 1

    .line 15924
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15925
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->access$28500(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V

    return-object p0
.end method

.method public clearMsgTypeUrl()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    .locals 1

    .line 16022
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16023
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->access$29100(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V

    return-object p0
.end method

.method public getGrantee()Ljava/lang/String;
    .locals 1

    .line 15946
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getGrantee()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGranteeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15955
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getGranteeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGranter()Ljava/lang/String;
    .locals 1

    .line 15897
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getGranter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGranterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15906
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getGranterBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMsgTypeUrl()Ljava/lang/String;
    .locals 1

    .line 15995
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getMsgTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16004
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getMsgTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setGrantee(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15964
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15965
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->access$28700(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGranteeBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15984
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15985
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->access$28900(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGranter(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15915
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15916
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->access$28400(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGranterBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15935
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15936
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->access$28600(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMsgTypeUrl(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16013
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->access$29000(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMsgTypeUrlBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16033
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16034
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->access$29200(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
