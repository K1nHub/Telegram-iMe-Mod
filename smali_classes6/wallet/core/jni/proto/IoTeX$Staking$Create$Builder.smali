.class public final Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$CreateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking$Create;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$Staking$Create;",
        "Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$CreateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1163
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$1000()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 1156
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAutoStake()Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1

    .line 1380
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1381
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$2000(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public clearCandidateName()Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1

    .line 1216
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1217
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$1200(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1

    .line 1420
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1421
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$2200(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public clearStakedAmount()Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1

    .line 1285
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1286
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$1500(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public clearStakedDuration()Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1

    .line 1340
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1341
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$1800(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public getAutoStake()Z
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getAutoStake()Z

    move-result v0

    return v0
.end method

.method public getCandidateName()Ljava/lang/String;
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getCandidateName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getCandidateNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStakedAmount()Ljava/lang/String;
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getStakedAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStakedAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getStakedAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStakedDuration()I
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getStakedDuration()I

    move-result v0

    return v0
.end method

.method public setAutoStake(Z)Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1367
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1368
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$1900(Lwallet/core/jni/proto/IoTeX$Staking$Create;Z)V

    return-object p0
.end method

.method public setCandidateName(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1203
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1204
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$1100(Lwallet/core/jni/proto/IoTeX$Staking$Create;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCandidateNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1231
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1232
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$1300(Lwallet/core/jni/proto/IoTeX$Staking$Create;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1407
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1408
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$2100(Lwallet/core/jni/proto/IoTeX$Staking$Create;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStakedAmount(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1272
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1273
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$1400(Lwallet/core/jni/proto/IoTeX$Staking$Create;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStakedAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1300
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1301
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$1600(Lwallet/core/jni/proto/IoTeX$Staking$Create;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStakedDuration(I)Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1327
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1328
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->access$1700(Lwallet/core/jni/proto/IoTeX$Staking$Create;I)V

    return-object p0
.end method
