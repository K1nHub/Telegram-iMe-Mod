.class public final Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$NativeTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$NativeTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$NativeTransfer;",
        "Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$NativeTransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4144
    invoke-static {}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->access$6400()Lwallet/core/jni/proto/Nervos$NativeTransfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 4137
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1

    .line 4321
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4322
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->access$7200(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V

    return-object p0
.end method

.method public clearChangeAddress()Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1

    .line 4266
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4267
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->access$6900(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1

    .line 4197
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4198
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->access$6600(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V

    return-object p0
.end method

.method public clearUseMaxAmount()Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1

    .line 4361
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4362
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->access$7400(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 4296
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 4227
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4240
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getChangeAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 4158
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4171
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUseMaxAmount()Z
    .locals 1

    .line 4336
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getUseMaxAmount()Z

    move-result v0

    return v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4308
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4309
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->access$7100(Lwallet/core/jni/proto/Nervos$NativeTransfer;J)V

    return-object p0
.end method

.method public setChangeAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4253
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4254
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->access$6800(Lwallet/core/jni/proto/Nervos$NativeTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChangeAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4281
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4282
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->access$7000(Lwallet/core/jni/proto/Nervos$NativeTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4184
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4185
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->access$6500(Lwallet/core/jni/proto/Nervos$NativeTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4212
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->access$6700(Lwallet/core/jni/proto/Nervos$NativeTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUseMaxAmount(Z)Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4348
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4349
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->access$7300(Lwallet/core/jni/proto/Nervos$NativeTransfer;Z)V

    return-object p0
.end method
