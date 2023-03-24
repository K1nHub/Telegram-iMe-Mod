.class public final Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$Action$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/FIO$Action$Transfer;",
        "Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$Action$TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3384
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$Transfer;->access$5100()Lwallet/core/jni/proto/FIO$Action$Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/FIO$1;)V
    .locals 0

    .line 3377
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;
    .locals 1

    .line 3492
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3493
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->access$5600(Lwallet/core/jni/proto/FIO$Action$Transfer;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;
    .locals 1

    .line 3532
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3533
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->access$5800(Lwallet/core/jni/proto/FIO$Action$Transfer;)V

    return-object p0
.end method

.method public clearPayeePublicKey()Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;
    .locals 1

    .line 3437
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->access$5300(Lwallet/core/jni/proto/FIO$Action$Transfer;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 3467
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFee()J
    .locals 2

    .line 3507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPayeePublicKey()Ljava/lang/String;
    .locals 1

    .line 3398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->getPayeePublicKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayeePublicKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3411
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->getPayeePublicKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3479
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3480
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$Transfer;->access$5500(Lwallet/core/jni/proto/FIO$Action$Transfer;J)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3519
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3520
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$Transfer;->access$5700(Lwallet/core/jni/proto/FIO$Action$Transfer;J)V

    return-object p0
.end method

.method public setPayeePublicKey(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3424
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3425
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$Transfer;->access$5200(Lwallet/core/jni/proto/FIO$Action$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPayeePublicKeyBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3452
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3453
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$Transfer;->access$5400(Lwallet/core/jni/proto/FIO$Action$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
