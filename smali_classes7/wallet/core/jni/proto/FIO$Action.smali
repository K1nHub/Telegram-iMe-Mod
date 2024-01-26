.class public final Lwallet/core/jni/proto/FIO$Action;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$ActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/FIO$Action$Builder;,
        Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;,
        Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;,
        Lwallet/core/jni/proto/FIO$Action$NewFundsRequestOrBuilder;,
        Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;,
        Lwallet/core/jni/proto/FIO$Action$RenewFioAddressOrBuilder;,
        Lwallet/core/jni/proto/FIO$Action$Transfer;,
        Lwallet/core/jni/proto/FIO$Action$TransferOrBuilder;,
        Lwallet/core/jni/proto/FIO$Action$AddPubAddress;,
        Lwallet/core/jni/proto/FIO$Action$AddPubAddressOrBuilder;,
        Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;,
        Lwallet/core/jni/proto/FIO$Action$RegisterFioAddressOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/FIO$Action;",
        "Lwallet/core/jni/proto/FIO$Action$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$ActionOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADD_PUB_ADDRESS_MESSAGE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

.field public static final NEW_FUNDS_REQUEST_MESSAGE_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGISTER_FIO_ADDRESS_MESSAGE_FIELD_NUMBER:I = 0x1

.field public static final RENEW_FIO_ADDRESS_MESSAGE_FIELD_NUMBER:I = 0x4

.field public static final TRANSFER_MESSAGE_FIELD_NUMBER:I = 0x3


# instance fields
.field private messageOneofCase_:I

.field private messageOneof_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5837
    new-instance v0, Lwallet/core/jni/proto/FIO$Action;

    invoke-direct {v0}, Lwallet/core/jni/proto/FIO$Action;-><init>()V

    .line 5840
    sput-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    .line 5841
    const-class v1, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1730
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 5125
    iput v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V
    .locals 0

    .line 1725
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action;->setNewFundsRequestMessage(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V
    .locals 0

    .line 1725
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action;->mergeNewFundsRequestMessage(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/FIO$Action;)V
    .locals 0

    .line 1725
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action;->clearNewFundsRequestMessage()V

    return-void
.end method

.method static synthetic access$8600()Lwallet/core/jni/proto/FIO$Action;
    .locals 1

    .line 1725
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    return-object v0
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/FIO$Action;)V
    .locals 0

    .line 1725
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action;->clearMessageOneof()V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V
    .locals 0

    .line 1725
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action;->setRegisterFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V
    .locals 0

    .line 1725
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action;->mergeRegisterFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/FIO$Action;)V
    .locals 0

    .line 1725
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action;->clearRegisterFioAddressMessage()V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V
    .locals 0

    .line 1725
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action;->setAddPubAddressMessage(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V

    return-void
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V
    .locals 0

    .line 1725
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action;->mergeAddPubAddressMessage(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/FIO$Action;)V
    .locals 0

    .line 1725
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action;->clearAddPubAddressMessage()V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$Transfer;)V
    .locals 0

    .line 1725
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action;->setTransferMessage(Lwallet/core/jni/proto/FIO$Action$Transfer;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$Transfer;)V
    .locals 0

    .line 1725
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action;->mergeTransferMessage(Lwallet/core/jni/proto/FIO$Action$Transfer;)V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/FIO$Action;)V
    .locals 0

    .line 1725
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action;->clearTransferMessage()V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V
    .locals 0

    .line 1725
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action;->setRenewFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/FIO$Action;Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V
    .locals 0

    .line 1725
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action;->mergeRenewFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/FIO$Action;)V
    .locals 0

    .line 1725
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action;->clearRenewFioAddressMessage()V

    return-void
.end method

.method private clearAddPubAddressMessage()V
    .locals 2

    .line 5268
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5269
    iput v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 5270
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessageOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 5170
    iput v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 5171
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearNewFundsRequestMessage()V
    .locals 2

    .line 5418
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5419
    iput v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 5420
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRegisterFioAddressMessage()V
    .locals 2

    .line 5218
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5219
    iput v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 5220
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRenewFioAddressMessage()V
    .locals 2

    .line 5368
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5369
    iput v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 5370
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransferMessage()V
    .locals 2

    .line 5318
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5319
    iput v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 5320
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/FIO$Action;
    .locals 1

    .line 5846
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    return-object v0
.end method

.method private mergeAddPubAddressMessage(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5255
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    .line 5256
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5257
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->newBuilder(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;

    move-result-object v0

    .line 5258
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5260
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    .line 5262
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    return-void
.end method

.method private mergeNewFundsRequestMessage(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5404
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5405
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    .line 5406
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5407
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->newBuilder(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;

    move-result-object v0

    .line 5408
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5410
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    .line 5412
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    return-void
.end method

.method private mergeRegisterFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5205
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    .line 5206
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5207
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->newBuilder(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;

    move-result-object v0

    .line 5208
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5210
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    .line 5212
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    return-void
.end method

.method private mergeRenewFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5354
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5355
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    .line 5356
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5357
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->newBuilder(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;

    move-result-object v0

    .line 5358
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5360
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    .line 5362
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    return-void
.end method

.method private mergeTransferMessage(Lwallet/core/jni/proto/FIO$Action$Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5305
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    .line 5306
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5307
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->newBuilder(Lwallet/core/jni/proto/FIO$Action$Transfer;)Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;

    move-result-object v0

    .line 5308
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5310
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    .line 5312
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1

    .line 5499
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/FIO$Action;)Lwallet/core/jni/proto/FIO$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5502
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5476
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5482
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5440
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5447
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5487
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5494
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5464
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5471
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5427
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5434
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5452
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5459
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action;",
            ">;"
        }
    .end annotation

    .line 5852
    sget-object v0, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAddPubAddressMessage(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5247
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 5248
    iput p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    return-void
.end method

.method private setNewFundsRequestMessage(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5396
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5397
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 5398
    iput p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    return-void
.end method

.method private setRegisterFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5197
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5198
    iput p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    return-void
.end method

.method private setRenewFioAddressMessage(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5346
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5347
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 5348
    iput p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    return-void
.end method

.method private setTransferMessage(Lwallet/core/jni/proto/FIO$Action$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5296
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5297
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 5298
    iput p1, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 5782
    sget-object p2, Lwallet/core/jni/proto/FIO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5830
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5824
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5809
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/FIO$Action;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5811
    const-class p2, Lwallet/core/jni/proto/FIO$Action;

    monitor-enter p2

    .line 5812
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/FIO$Action;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5814
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5817
    sput-object p1, Lwallet/core/jni/proto/FIO$Action;->PARSER:Lcom/google/protobuf/Parser;

    .line 5819
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 5806
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageOneof_"

    aput-object v0, p1, p3

    const-string p3, "messageOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 5790
    const-class p3, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lwallet/core/jni/proto/FIO$Action$Transfer;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0001\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000"

    .line 5802
    sget-object p3, Lwallet/core/jni/proto/FIO$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5787
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/FIO$Action$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/FIO$Action$Builder;-><init>(Lwallet/core/jni/proto/FIO$1;)V

    return-object p1

    .line 5784
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/FIO$Action;

    invoke-direct {p1}, Lwallet/core/jni/proto/FIO$Action;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAddPubAddressMessage()Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
    .locals 2

    .line 5237
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5238
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object v0

    .line 5240
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;
    .locals 1

    .line 5165
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getNewFundsRequestMessage()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
    .locals 2

    .line 5387
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 5388
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object v0

    .line 5390
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterFioAddressMessage()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
    .locals 2

    .line 5187
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5188
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object v0

    .line 5190
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRenewFioAddressMessage()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
    .locals 2

    .line 5337
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5338
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object v0

    .line 5340
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransferMessage()Lwallet/core/jni/proto/FIO$Action$Transfer;
    .locals 2

    .line 5287
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5288
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object v0

    .line 5290
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasAddPubAddressMessage()Z
    .locals 2

    .line 5230
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNewFundsRequestMessage()Z
    .locals 2

    .line 5380
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRegisterFioAddressMessage()Z
    .locals 2

    .line 5180
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRenewFioAddressMessage()Z
    .locals 2

    .line 5330
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransferMessage()Z
    .locals 2

    .line 5280
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
