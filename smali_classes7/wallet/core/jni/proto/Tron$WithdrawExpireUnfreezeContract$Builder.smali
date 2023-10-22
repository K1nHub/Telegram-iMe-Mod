.class public final Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;",
        "Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4353
    invoke-static {}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->access$7100()Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 4346
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;
    .locals 1

    .line 4406
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4407
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->access$7300(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)V

    return-object p0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 4367
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4380
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4393
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4394
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->access$7200(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4421
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4422
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->access$7400(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
