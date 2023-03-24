.class public final Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$DeregisterStakingKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;",
        "Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$DeregisterStakingKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4697
    invoke-static {}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->access$7700()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 4690
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStakingAddress()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;
    .locals 1

    .line 4750
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->access$7900(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V

    return-object p0
.end method

.method public clearUndepositAmount()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;
    .locals 1

    .line 4805
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4806
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->access$8200(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V

    return-object p0
.end method

.method public getStakingAddress()Ljava/lang/String;
    .locals 1

    .line 4711
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->getStakingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStakingAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4724
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->getStakingAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUndepositAmount()J
    .locals 2

    .line 4780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->getUndepositAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public setStakingAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4737
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->access$7800(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStakingAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4765
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4766
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->access$8000(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUndepositAmount(J)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4792
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4793
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->access$8100(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;J)V

    return-object p0
.end method
