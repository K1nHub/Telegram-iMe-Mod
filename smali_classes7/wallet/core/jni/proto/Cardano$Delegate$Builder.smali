.class public final Lwallet/core/jni/proto/Cardano$Delegate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$DelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$Delegate;",
        "Lwallet/core/jni/proto/Cardano$Delegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$DelegateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5185
    invoke-static {}, Lwallet/core/jni/proto/Cardano$Delegate;->access$8400()Lwallet/core/jni/proto/Cardano$Delegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 5178
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Delegate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDepositAmount()Lwallet/core/jni/proto/Cardano$Delegate$Builder;
    .locals 1

    .line 5333
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5334
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Delegate;->access$9100(Lwallet/core/jni/proto/Cardano$Delegate;)V

    return-object p0
.end method

.method public clearPoolId()Lwallet/core/jni/proto/Cardano$Delegate$Builder;
    .locals 1

    .line 5293
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5294
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Delegate;->access$8900(Lwallet/core/jni/proto/Cardano$Delegate;)V

    return-object p0
.end method

.method public clearStakingAddress()Lwallet/core/jni/proto/Cardano$Delegate$Builder;
    .locals 1

    .line 5238
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5239
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Delegate;->access$8600(Lwallet/core/jni/proto/Cardano$Delegate;)V

    return-object p0
.end method

.method public getDepositAmount()J
    .locals 2

    .line 5308
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Delegate;->getDepositAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPoolId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5268
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Delegate;->getPoolId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStakingAddress()Ljava/lang/String;
    .locals 1

    .line 5199
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Delegate;->getStakingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStakingAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5212
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Delegate;->getStakingAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDepositAmount(J)Lwallet/core/jni/proto/Cardano$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5320
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5321
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$Delegate;->access$9000(Lwallet/core/jni/proto/Cardano$Delegate;J)V

    return-object p0
.end method

.method public setPoolId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5280
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5281
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Delegate;->access$8800(Lwallet/core/jni/proto/Cardano$Delegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStakingAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cardano$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5225
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5226
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Delegate;->access$8500(Lwallet/core/jni/proto/Cardano$Delegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStakingAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5253
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5254
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Delegate;->access$8700(Lwallet/core/jni/proto/Cardano$Delegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
