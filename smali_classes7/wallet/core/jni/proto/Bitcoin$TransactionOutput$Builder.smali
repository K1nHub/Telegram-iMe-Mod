.class public final Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$TransactionOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Bitcoin$TransactionOutput;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2213
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->access$3500()Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Bitcoin$1;)V
    .locals 0

    .line 2206
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearScript()Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;
    .locals 1

    .line 2292
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2293
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->access$3900(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;
    .locals 1

    .line 2252
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2253
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->access$3700(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;)V

    return-object p0
.end method

.method public getScript()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2267
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 2227
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setScript(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2279
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2280
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->access$3800(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(J)Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2239
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2240
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->access$3600(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;J)V

    return-object p0
.end method
