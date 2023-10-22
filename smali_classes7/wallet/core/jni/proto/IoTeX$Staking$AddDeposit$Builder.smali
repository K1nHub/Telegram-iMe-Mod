.class public final Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$AddDepositOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;",
        "Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$AddDepositOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2174
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->access$3000()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 2167
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;
    .locals 1

    .line 2267
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2268
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->access$3400(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public clearBucketIndex()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;
    .locals 1

    .line 2213
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2214
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->access$3200(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;
    .locals 1

    .line 2322
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2323
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->access$3700(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 2228
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->getAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2241
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->getAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBucketIndex()J
    .locals 2

    .line 2188
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->getBucketIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2297
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2254
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2255
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->access$3300(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2282
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2283
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->access$3500(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBucketIndex(J)Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2200
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2201
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->access$3100(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;J)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2309
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2310
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->access$3600(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
