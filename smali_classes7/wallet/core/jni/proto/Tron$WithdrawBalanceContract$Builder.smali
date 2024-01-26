.class public final Lwallet/core/jni/proto/Tron$WithdrawBalanceContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$WithdrawBalanceContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;",
        "Lwallet/core/jni/proto/Tron$WithdrawBalanceContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$WithdrawBalanceContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9261
    invoke-static {}, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;->access$15400()Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 9254
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$WithdrawBalanceContract$Builder;
    .locals 1

    .line 9314
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9315
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;->access$15600(Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)V

    return-object p0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 9275
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9288
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$WithdrawBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9301
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;->access$15500(Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$WithdrawBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9329
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9330
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;->access$15700(Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
