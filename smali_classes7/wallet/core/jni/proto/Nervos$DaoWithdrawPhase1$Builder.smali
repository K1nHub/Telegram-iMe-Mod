.class public final Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1OrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6163
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->access$10100()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 6156
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChangeAddress()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;
    .locals 1

    .line 6287
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6288
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->access$10600(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V

    return-object p0
.end method

.method public clearDepositCell()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;
    .locals 1

    .line 6233
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6234
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->access$10400(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V

    return-object p0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 6248
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6261
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->getChangeAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDepositCell()Lwallet/core/jni/proto/Nervos$Cell;
    .locals 1

    .line 6187
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->getDepositCell()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v0

    return-object v0
.end method

.method public hasDepositCell()Z
    .locals 1

    .line 6176
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->hasDepositCell()Z

    move-result v0

    return v0
.end method

.method public mergeDepositCell(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6222
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6223
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->access$10300(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public setChangeAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6274
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6275
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->access$10500(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChangeAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6302
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6303
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->access$10700(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDepositCell(Lwallet/core/jni/proto/Nervos$Cell$Builder;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6210
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6211
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->access$10200(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public setDepositCell(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6197
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6198
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->access$10200(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method
