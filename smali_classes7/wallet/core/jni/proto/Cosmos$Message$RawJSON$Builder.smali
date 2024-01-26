.class public final Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$RawJSONOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$RawJSON;",
        "Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$RawJSONOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13096
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->access$23300()Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 13089
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearType()Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;
    .locals 1

    .line 13133
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13134
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->access$23500(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;
    .locals 1

    .line 13182
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13183
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->access$23800(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 13106
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13115
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 13155
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13164
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13124
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13125
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->access$23400(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13144
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13145
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->access$23600(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13173
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13174
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->access$23700(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13193
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13194
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->access$23900(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
