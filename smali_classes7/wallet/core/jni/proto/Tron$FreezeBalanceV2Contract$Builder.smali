.class public final Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$FreezeBalanceV2ContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceV2ContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3297
    invoke-static {}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->access$5100()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 3290
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFrozenBalance()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
    .locals 1

    .line 3405
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3406
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->access$5600(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
    .locals 1

    .line 3350
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3351
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->access$5300(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public clearResource()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
    .locals 1

    .line 3459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->access$5800(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public getFrozenBalance()J
    .locals 2

    .line 3380
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->getFrozenBalance()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 3311
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3324
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 3420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->getResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setFrozenBalance(J)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3392
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3393
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->access$5500(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;J)V

    return-object p0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3337
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3338
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->access$5200(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3365
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3366
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->access$5400(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResource(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3446
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3447
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->access$5700(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResourceBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3474
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3475
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->access$5900(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
