.class public final Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbondOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;",
        "Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbondOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4329
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;->access$6300()Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 4322
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValue()Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond$Builder;
    .locals 1

    .line 4368
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4369
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;->access$6500(Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)V

    return-object p0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4343
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4355
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4356
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;->access$6400(Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
