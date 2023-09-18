.class public final Lwallet/core/jni/proto/Cardano$OutPoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$OutPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$OutPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$OutPoint;",
        "Lwallet/core/jni/proto/Cardano$OutPoint$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$OutPointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 222
    invoke-static {}, Lwallet/core/jni/proto/Cardano$OutPoint;->access$000()Lwallet/core/jni/proto/Cardano$OutPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$OutPoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOutputIndex()Lwallet/core/jni/proto/Cardano$OutPoint$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$OutPoint;->access$400(Lwallet/core/jni/proto/Cardano$OutPoint;)V

    return-object p0
.end method

.method public clearTxHash()Lwallet/core/jni/proto/Cardano$OutPoint$Builder;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 262
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$OutPoint;->access$200(Lwallet/core/jni/proto/Cardano$OutPoint;)V

    return-object p0
.end method

.method public getOutputIndex()J
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$OutPoint;->getOutputIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTxHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$OutPoint;->getTxHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setOutputIndex(J)Lwallet/core/jni/proto/Cardano$OutPoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 289
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$OutPoint;->access$300(Lwallet/core/jni/proto/Cardano$OutPoint;J)V

    return-object p0
.end method

.method public setTxHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$OutPoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 249
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$OutPoint;->access$100(Lwallet/core/jni/proto/Cardano$OutPoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
