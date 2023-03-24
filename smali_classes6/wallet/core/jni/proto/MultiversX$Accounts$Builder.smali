.class public final Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$AccountsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX$Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/MultiversX$Accounts;",
        "Lwallet/core/jni/proto/MultiversX$Accounts$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$AccountsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3275
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$4700()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/MultiversX$1;)V
    .locals 0

    .line 3268
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$Accounts$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearReceiver()Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1

    .line 3506
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$5700(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public clearReceiverUsername()Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1

    .line 3559
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3560
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$6000(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public clearSender()Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1

    .line 3368
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3369
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$5100(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public clearSenderNonce()Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1

    .line 3314
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3315
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$4900(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public clearSenderUsername()Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1

    .line 3437
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$5400(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .line 3467
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getReceiver()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3480
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getReceiverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverUsername()Ljava/lang/String;
    .locals 1

    .line 3532
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getReceiverUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverUsernameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3541
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getReceiverUsernameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 3329
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getSender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3342
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getSenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderNonce()J
    .locals 2

    .line 3289
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getSenderNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSenderUsername()Ljava/lang/String;
    .locals 1

    .line 3398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getSenderUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderUsernameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3411
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getSenderUsernameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setReceiver(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3493
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3494
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$5600(Lwallet/core/jni/proto/MultiversX$Accounts;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReceiverBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3521
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3522
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$5800(Lwallet/core/jni/proto/MultiversX$Accounts;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReceiverUsername(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3550
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3551
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$5900(Lwallet/core/jni/proto/MultiversX$Accounts;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReceiverUsernameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3570
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3571
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$6100(Lwallet/core/jni/proto/MultiversX$Accounts;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSender(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3355
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3356
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$5000(Lwallet/core/jni/proto/MultiversX$Accounts;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3383
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3384
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$5200(Lwallet/core/jni/proto/MultiversX$Accounts;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSenderNonce(J)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3301
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$4800(Lwallet/core/jni/proto/MultiversX$Accounts;J)V

    return-object p0
.end method

.method public setSenderUsername(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$5300(Lwallet/core/jni/proto/MultiversX$Accounts;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderUsernameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->access$5500(Lwallet/core/jni/proto/MultiversX$Accounts;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
