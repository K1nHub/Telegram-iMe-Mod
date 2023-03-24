.class public final Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$SudtTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$SudtTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$SudtTransfer;",
        "Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$SudtTransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4919
    invoke-static {}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$7600()Lwallet/core/jni/proto/Nervos$SudtTransfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 4912
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1

    .line 5150
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5151
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$8600(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V

    return-object p0
.end method

.method public clearChangeAddress()Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1

    .line 5041
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5042
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$8100(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V

    return-object p0
.end method

.method public clearSudtAddress()Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1

    .line 5096
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5097
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$8400(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1

    .line 4972
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4973
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$7800(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V

    return-object p0
.end method

.method public clearUseMaxAmount()Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1

    .line 5205
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5206
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$8900(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V

    return-object p0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 5111
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5124
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 5002
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getChangeAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSudtAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5071
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getSudtAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 4933
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4946
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUseMaxAmount()Z
    .locals 1

    .line 5180
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getUseMaxAmount()Z

    move-result v0

    return v0
.end method

.method public setAmount(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5137
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5138
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$8500(Lwallet/core/jni/proto/Nervos$SudtTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5165
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5166
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$8700(Lwallet/core/jni/proto/Nervos$SudtTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setChangeAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5028
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$8000(Lwallet/core/jni/proto/Nervos$SudtTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChangeAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5056
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5057
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$8200(Lwallet/core/jni/proto/Nervos$SudtTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSudtAddress(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5083
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5084
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$8300(Lwallet/core/jni/proto/Nervos$SudtTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4959
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4960
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$7700(Lwallet/core/jni/proto/Nervos$SudtTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4987
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4988
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$7900(Lwallet/core/jni/proto/Nervos$SudtTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUseMaxAmount(Z)Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5192
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5193
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->access$8800(Lwallet/core/jni/proto/Nervos$SudtTransfer;Z)V

    return-object p0
.end method
