.class public final Lwallet/core/jni/proto/Solana$StakeAccountValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$StakeAccountValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$StakeAccountValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$StakeAccountValue;",
        "Lwallet/core/jni/proto/Solana$StakeAccountValue$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$StakeAccountValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3032
    invoke-static {}, Lwallet/core/jni/proto/Solana$StakeAccountValue;->access$4400()Lwallet/core/jni/proto/Solana$StakeAccountValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 3025
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$StakeAccountValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStakeAccount()Lwallet/core/jni/proto/Solana$StakeAccountValue$Builder;
    .locals 1

    .line 3085
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3086
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$StakeAccountValue;->access$4600(Lwallet/core/jni/proto/Solana$StakeAccountValue;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Solana$StakeAccountValue$Builder;
    .locals 1

    .line 3140
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3141
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$StakeAccountValue;->access$4900(Lwallet/core/jni/proto/Solana$StakeAccountValue;)V

    return-object p0
.end method

.method public getStakeAccount()Ljava/lang/String;
    .locals 1

    .line 3046
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$StakeAccountValue;->getStakeAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStakeAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3059
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$StakeAccountValue;->getStakeAccountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 3115
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$StakeAccountValue;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setStakeAccount(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$StakeAccountValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3072
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3073
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$StakeAccountValue;->access$4500(Lwallet/core/jni/proto/Solana$StakeAccountValue;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStakeAccountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$StakeAccountValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3100
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3101
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$StakeAccountValue;->access$4700(Lwallet/core/jni/proto/Solana$StakeAccountValue;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(J)Lwallet/core/jni/proto/Solana$StakeAccountValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3127
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3128
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$StakeAccountValue;->access$4800(Lwallet/core/jni/proto/Solana$StakeAccountValue;J)V

    return-object p0
.end method
