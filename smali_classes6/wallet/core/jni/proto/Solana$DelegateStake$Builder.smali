.class public final Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$DelegateStakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$DelegateStake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$DelegateStake;",
        "Lwallet/core/jni/proto/Solana$DelegateStake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$DelegateStakeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1248
    invoke-static {}, Lwallet/core/jni/proto/Solana$DelegateStake;->access$1500()Lwallet/core/jni/proto/Solana$DelegateStake;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 1241
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DelegateStake$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStakeAccount()Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1411
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;->access$2200(Lwallet/core/jni/proto/Solana$DelegateStake;)V

    return-object p0
.end method

.method public clearValidatorPubkey()Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
    .locals 1

    .line 1301
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;->access$1700(Lwallet/core/jni/proto/Solana$DelegateStake;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
    .locals 1

    .line 1356
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1357
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;->access$2000(Lwallet/core/jni/proto/Solana$DelegateStake;)V

    return-object p0
.end method

.method public getStakeAccount()Ljava/lang/String;
    .locals 1

    .line 1371
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;->getStakeAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStakeAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;->getStakeAccountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorPubkey()Ljava/lang/String;
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;->getValidatorPubkey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorPubkeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1275
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;->getValidatorPubkeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 1331
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setStakeAccount(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1397
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$DelegateStake;->access$2100(Lwallet/core/jni/proto/Solana$DelegateStake;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStakeAccountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1425
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1426
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$DelegateStake;->access$2300(Lwallet/core/jni/proto/Solana$DelegateStake;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorPubkey(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1288
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1289
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$DelegateStake;->access$1600(Lwallet/core/jni/proto/Solana$DelegateStake;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValidatorPubkeyBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1316
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1317
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$DelegateStake;->access$1800(Lwallet/core/jni/proto/Solana$DelegateStake;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(J)Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1343
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1344
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$DelegateStake;->access$1900(Lwallet/core/jni/proto/Solana$DelegateStake;J)V

    return-object p0
.end method
