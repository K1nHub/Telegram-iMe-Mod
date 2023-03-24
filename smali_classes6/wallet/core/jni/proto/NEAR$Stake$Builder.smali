.class public final Lwallet/core/jni/proto/NEAR$Stake$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$StakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$Stake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$Stake;",
        "Lwallet/core/jni/proto/NEAR$Stake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$StakeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3323
    invoke-static {}, Lwallet/core/jni/proto/NEAR$Stake;->access$5200()Lwallet/core/jni/proto/NEAR$Stake;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 3316
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Stake$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPublicKey()Lwallet/core/jni/proto/NEAR$Stake$Builder;
    .locals 1

    .line 3433
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3434
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Stake;->access$5700(Lwallet/core/jni/proto/NEAR$Stake;)V

    return-object p0
.end method

.method public clearStake()Lwallet/core/jni/proto/NEAR$Stake$Builder;
    .locals 1

    .line 3362
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3363
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Stake;->access$5400(Lwallet/core/jni/proto/NEAR$Stake;)V

    return-object p0
.end method

.method public getPublicKey()Lwallet/core/jni/proto/NEAR$PublicKey;
    .locals 1

    .line 3387
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Stake;->getPublicKey()Lwallet/core/jni/proto/NEAR$PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getStake()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3337
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Stake;->getStake()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasPublicKey()Z
    .locals 1

    .line 3376
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Stake;->hasPublicKey()Z

    move-result v0

    return v0
.end method

.method public mergePublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)Lwallet/core/jni/proto/NEAR$Stake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3422
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3423
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Stake;->access$5600(Lwallet/core/jni/proto/NEAR$Stake;Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-object p0
.end method

.method public setPublicKey(Lwallet/core/jni/proto/NEAR$PublicKey$Builder;)Lwallet/core/jni/proto/NEAR$Stake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3410
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3411
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$PublicKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Stake;->access$5500(Lwallet/core/jni/proto/NEAR$Stake;Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-object p0
.end method

.method public setPublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)Lwallet/core/jni/proto/NEAR$Stake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3397
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Stake;->access$5500(Lwallet/core/jni/proto/NEAR$Stake;Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-object p0
.end method

.method public setStake(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$Stake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3349
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3350
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Stake;->access$5300(Lwallet/core/jni/proto/NEAR$Stake;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
