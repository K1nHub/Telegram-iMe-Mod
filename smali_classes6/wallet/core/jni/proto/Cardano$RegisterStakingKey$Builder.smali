.class public final Lwallet/core/jni/proto/Cardano$RegisterStakingKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$RegisterStakingKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$RegisterStakingKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$RegisterStakingKey;",
        "Lwallet/core/jni/proto/Cardano$RegisterStakingKey$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$RegisterStakingKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4259
    invoke-static {}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->access$7000()Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 4252
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDepositAmount()Lwallet/core/jni/proto/Cardano$RegisterStakingKey$Builder;
    .locals 1

    .line 4367
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4368
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->access$7500(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)V

    return-object p0
.end method

.method public clearStakingAddress()Lwallet/core/jni/proto/Cardano$RegisterStakingKey$Builder;
    .locals 1

    .line 4312
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4313
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->access$7200(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)V

    return-object p0
.end method

.method public getDepositAmount()J
    .locals 2

    .line 4342
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->getDepositAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStakingAddress()Ljava/lang/String;
    .locals 1

    .line 4273
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->getStakingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStakingAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4286
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->getStakingAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDepositAmount(J)Lwallet/core/jni/proto/Cardano$RegisterStakingKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4354
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4355
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->access$7400(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;J)V

    return-object p0
.end method

.method public setStakingAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cardano$RegisterStakingKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4299
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4300
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->access$7100(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStakingAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$RegisterStakingKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4327
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4328
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->access$7300(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
