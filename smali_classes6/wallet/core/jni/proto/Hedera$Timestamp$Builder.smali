.class public final Lwallet/core/jni/proto/Hedera$Timestamp$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Hedera.java"

# interfaces
.implements Lwallet/core/jni/proto/Hedera$TimestampOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera$Timestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Hedera$Timestamp;",
        "Lwallet/core/jni/proto/Hedera$Timestamp$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Hedera$TimestampOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 222
    invoke-static {}, Lwallet/core/jni/proto/Hedera$Timestamp;->access$000()Lwallet/core/jni/proto/Hedera$Timestamp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Hedera$1;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$Timestamp$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNanos()Lwallet/core/jni/proto/Hedera$Timestamp$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$Timestamp;->access$400(Lwallet/core/jni/proto/Hedera$Timestamp;)V

    return-object p0
.end method

.method public clearSeconds()Lwallet/core/jni/proto/Hedera$Timestamp$Builder;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 262
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$Timestamp;->access$200(Lwallet/core/jni/proto/Hedera$Timestamp;)V

    return-object p0
.end method

.method public getNanos()I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$Timestamp;->getNanos()I

    move-result v0

    return v0
.end method

.method public getSeconds()J
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$Timestamp;->getSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public setNanos(I)Lwallet/core/jni/proto/Hedera$Timestamp$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$Timestamp;->access$300(Lwallet/core/jni/proto/Hedera$Timestamp;I)V

    return-object p0
.end method

.method public setSeconds(J)Lwallet/core/jni/proto/Hedera$Timestamp$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Hedera$Timestamp;->access$100(Lwallet/core/jni/proto/Hedera$Timestamp;J)V

    return-object p0
.end method
