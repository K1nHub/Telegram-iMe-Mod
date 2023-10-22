.class public final Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$DeactivateStakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$DeactivateStake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$DeactivateStake;",
        "Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$DeactivateStakeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1708
    invoke-static {}, Lwallet/core/jni/proto/Solana$DeactivateStake;->access$2500()Lwallet/core/jni/proto/Solana$DeactivateStake;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 1701
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStakeAccount()Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;
    .locals 1

    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1762
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$DeactivateStake;->access$2700(Lwallet/core/jni/proto/Solana$DeactivateStake;)V

    return-object p0
.end method

.method public getStakeAccount()Ljava/lang/String;
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DeactivateStake;->getStakeAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStakeAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DeactivateStake;->getStakeAccountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setStakeAccount(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1748
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1749
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$DeactivateStake;->access$2600(Lwallet/core/jni/proto/Solana$DeactivateStake;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStakeAccountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$DeactivateStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1776
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1777
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$DeactivateStake;->access$2800(Lwallet/core/jni/proto/Solana$DeactivateStake;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
