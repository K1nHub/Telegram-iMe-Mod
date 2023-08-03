.class public final Lwallet/core/jni/proto/Polkadot$Era$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$EraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Era;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$Era;",
        "Lwallet/core/jni/proto/Polkadot$Era$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$EraOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 322
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Era;->access$000()Lwallet/core/jni/proto/Polkadot$Era;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 315
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Era$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBlockNumber()Lwallet/core/jni/proto/Polkadot$Era$Builder;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 362
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Era;->access$200(Lwallet/core/jni/proto/Polkadot$Era;)V

    return-object p0
.end method

.method public clearPeriod()Lwallet/core/jni/proto/Polkadot$Era$Builder;
    .locals 1

    .line 401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Era;->access$400(Lwallet/core/jni/proto/Polkadot$Era;)V

    return-object p0
.end method

.method public getBlockNumber()J
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Era;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Era;->getBlockNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPeriod()J
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Era;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Era;->getPeriod()J

    move-result-wide v0

    return-wide v0
.end method

.method public setBlockNumber(J)Lwallet/core/jni/proto/Polkadot$Era$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 349
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Polkadot$Era;->access$100(Lwallet/core/jni/proto/Polkadot$Era;J)V

    return-object p0
.end method

.method public setPeriod(J)Lwallet/core/jni/proto/Polkadot$Era$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Polkadot$Era;->access$300(Lwallet/core/jni/proto/Polkadot$Era;J)V

    return-object p0
.end method
