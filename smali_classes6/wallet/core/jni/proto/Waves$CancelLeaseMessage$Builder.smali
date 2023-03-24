.class public final Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Waves.java"

# interfaces
.implements Lwallet/core/jni/proto/Waves$CancelLeaseMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Waves$CancelLeaseMessage;",
        "Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Waves$CancelLeaseMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1721
    invoke-static {}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->access$2600()Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Waves$1;)V
    .locals 0

    .line 1714
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFee()Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;
    .locals 1

    .line 1829
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1830
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->access$3100(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V

    return-object p0
.end method

.method public clearLeaseId()Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;
    .locals 1

    .line 1774
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1775
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->access$2800(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V

    return-object p0
.end method

.method public getFee()J
    .locals 2

    .line 1804
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLeaseId()Ljava/lang/String;
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->getLeaseId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeaseIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1748
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->getLeaseIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setFee(J)Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1816
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1817
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->access$3000(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;J)V

    return-object p0
.end method

.method public setLeaseId(Ljava/lang/String;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1762
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->access$2700(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLeaseIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1789
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->access$2900(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
