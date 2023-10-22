.class public final Lwallet/core/jni/proto/FIO$ChainParams$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$ChainParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$ChainParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/FIO$ChainParams;",
        "Lwallet/core/jni/proto/FIO$ChainParams$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$ChainParamsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6115
    invoke-static {}, Lwallet/core/jni/proto/FIO$ChainParams;->access$10400()Lwallet/core/jni/proto/FIO$ChainParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/FIO$1;)V
    .locals 0

    .line 6108
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$ChainParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChainId()Lwallet/core/jni/proto/FIO$ChainParams$Builder;
    .locals 1

    .line 6154
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6155
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$ChainParams;->access$10600(Lwallet/core/jni/proto/FIO$ChainParams;)V

    return-object p0
.end method

.method public clearHeadBlockNumber()Lwallet/core/jni/proto/FIO$ChainParams$Builder;
    .locals 1

    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6195
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$ChainParams;->access$10800(Lwallet/core/jni/proto/FIO$ChainParams;)V

    return-object p0
.end method

.method public clearRefBlockPrefix()Lwallet/core/jni/proto/FIO$ChainParams$Builder;
    .locals 1

    .line 6234
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6235
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$ChainParams;->access$11000(Lwallet/core/jni/proto/FIO$ChainParams;)V

    return-object p0
.end method

.method public getChainId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6129
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$ChainParams;->getChainId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHeadBlockNumber()J
    .locals 2

    .line 6169
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$ChainParams;->getHeadBlockNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRefBlockPrefix()J
    .locals 2

    .line 6209
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$ChainParams;->getRefBlockPrefix()J

    move-result-wide v0

    return-wide v0
.end method

.method public setChainId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$ChainParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6141
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6142
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$ChainParams;->access$10500(Lwallet/core/jni/proto/FIO$ChainParams;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setHeadBlockNumber(J)Lwallet/core/jni/proto/FIO$ChainParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6181
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6182
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$ChainParams;->access$10700(Lwallet/core/jni/proto/FIO$ChainParams;J)V

    return-object p0
.end method

.method public setRefBlockPrefix(J)Lwallet/core/jni/proto/FIO$ChainParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6221
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6222
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$ChainParams;->access$10900(Lwallet/core/jni/proto/FIO$ChainParams;J)V

    return-object p0
.end method
