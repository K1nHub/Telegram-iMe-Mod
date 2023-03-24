.class public final Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$UnbondOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$Staking$Unbond;",
        "Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$UnbondOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3307
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->access$4800()Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 3300
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValue()Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;
    .locals 1

    .line 3346
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3347
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->access$5000(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)V

    return-object p0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3321
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3333
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3334
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->access$4900(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
