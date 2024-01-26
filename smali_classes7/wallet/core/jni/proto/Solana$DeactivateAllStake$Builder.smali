.class public final Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$DeactivateAllStakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$DeactivateAllStake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$DeactivateAllStake;",
        "Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$DeactivateAllStakeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2139
    invoke-static {}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->access$3000()Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 2132
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllStakeAccounts(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;"
        }
    .end annotation

    .line 2238
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2239
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->access$3300(Lwallet/core/jni/proto/Solana$DeactivateAllStake;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addStakeAccounts(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2223
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2224
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->access$3200(Lwallet/core/jni/proto/Solana$DeactivateAllStake;Ljava/lang/String;)V

    return-object p0
.end method

.method public addStakeAccountsBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2266
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2267
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->access$3500(Lwallet/core/jni/proto/Solana$DeactivateAllStake;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearStakeAccounts()Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;
    .locals 1

    .line 2251
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2252
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->access$3400(Lwallet/core/jni/proto/Solana$DeactivateAllStake;)V

    return-object p0
.end method

.method public getStakeAccounts(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2180
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->getStakeAccounts(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStakeAccountsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2194
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->getStakeAccountsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getStakeAccountsCount()I
    .locals 1

    .line 2167
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->getStakeAccountsCount()I

    move-result v0

    return v0
.end method

.method public getStakeAccountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2154
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    .line 2155
    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->getStakeAccountsList()Ljava/util/List;

    move-result-object v0

    .line 2154
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setStakeAccounts(ILjava/lang/String;)Lwallet/core/jni/proto/Solana$DeactivateAllStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 2208
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2209
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$DeactivateAllStake;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$DeactivateAllStake;->access$3100(Lwallet/core/jni/proto/Solana$DeactivateAllStake;ILjava/lang/String;)V

    return-object p0
.end method
