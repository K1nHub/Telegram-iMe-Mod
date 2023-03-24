.class public final Lwallet/core/jni/proto/Cardano$Transfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$Transfer;",
        "Lwallet/core/jni/proto/Cardano$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final CHANGE_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

.field public static final FORCE_FEE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$Transfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_AMOUNT_FIELD_NUMBER:I = 0x4

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final USE_MAX_AMOUNT_FIELD_NUMBER:I = 0x5


# instance fields
.field private amount_:J

.field private changeAddress_:Ljava/lang/String;

.field private forceFee_:J

.field private toAddress_:Ljava/lang/String;

.field private tokenAmount_:Lwallet/core/jni/proto/Cardano$TokenBundle;

.field private useMaxAmount_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3989
    new-instance v0, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$Transfer;-><init>()V

    .line 3992
    sput-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    .line 3993
    const-class v1, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3159
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3160
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->toAddress_:Ljava/lang/String;

    .line 3161
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5300()Lwallet/core/jni/proto/Cardano$Transfer;
    .locals 1

    .line 3154
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    return-object v0
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Cardano$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 3154
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Cardano$Transfer;)V
    .locals 0

    .line 3154
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Transfer;->clearToAddress()V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Cardano$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3154
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Cardano$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 3154
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->setChangeAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Cardano$Transfer;)V
    .locals 0

    .line 3154
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Transfer;->clearChangeAddress()V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Cardano$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3154
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Cardano$Transfer;J)V
    .locals 0

    .line 3154
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$Transfer;->setAmount(J)V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Cardano$Transfer;)V
    .locals 0

    .line 3154
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Transfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/Cardano$Transfer;Lwallet/core/jni/proto/Cardano$TokenBundle;)V
    .locals 0

    .line 3154
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->setTokenAmount(Lwallet/core/jni/proto/Cardano$TokenBundle;)V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/Cardano$Transfer;Lwallet/core/jni/proto/Cardano$TokenBundle;)V
    .locals 0

    .line 3154
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->mergeTokenAmount(Lwallet/core/jni/proto/Cardano$TokenBundle;)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/Cardano$Transfer;)V
    .locals 0

    .line 3154
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Transfer;->clearTokenAmount()V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Cardano$Transfer;Z)V
    .locals 0

    .line 3154
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Transfer;->setUseMaxAmount(Z)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Cardano$Transfer;)V
    .locals 0

    .line 3154
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Transfer;->clearUseMaxAmount()V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/Cardano$Transfer;J)V
    .locals 0

    .line 3154
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$Transfer;->setForceFee(J)V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/Cardano$Transfer;)V
    .locals 0

    .line 3154
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Transfer;->clearForceFee()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3335
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->amount_:J

    return-void
.end method

.method private clearChangeAddress()V
    .locals 1

    .line 3280
    invoke-static {}, Lwallet/core/jni/proto/Cardano$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearForceFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3485
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->forceFee_:J

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 3213
    invoke-static {}, Lwallet/core/jni/proto/Cardano$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 3405
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->tokenAmount_:Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-void
.end method

.method private clearUseMaxAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 3444
    iput-boolean v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->useMaxAmount_:Z

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$Transfer;
    .locals 1

    .line 3998
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    return-object v0
.end method

.method private mergeTokenAmount(Lwallet/core/jni/proto/Cardano$TokenBundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3388
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->tokenAmount_:Lwallet/core/jni/proto/Cardano$TokenBundle;

    if-eqz v0, :cond_0

    .line 3389
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TokenBundle;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$TokenBundle;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3390
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->tokenAmount_:Lwallet/core/jni/proto/Cardano$TokenBundle;

    .line 3391
    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TokenBundle;->newBuilder(Lwallet/core/jni/proto/Cardano$TokenBundle;)Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenBundle;

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Transfer;->tokenAmount_:Lwallet/core/jni/proto/Cardano$TokenBundle;

    goto :goto_0

    .line 3393
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Transfer;->tokenAmount_:Lwallet/core/jni/proto/Cardano$TokenBundle;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1

    .line 3563
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$Transfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$Transfer;)Lwallet/core/jni/proto/Cardano$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3566
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3540
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3546
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3504
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3511
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3551
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3558
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3528
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3535
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3491
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3498
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3516
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Transfer;
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

    .line 3523
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$Transfer;",
            ">;"
        }
    .end annotation

    .line 4004
    sget-object v0, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3323
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$Transfer;->amount_:J

    return-void
.end method

.method private setChangeAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3267
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3269
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Transfer;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3292
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3293
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Transfer;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private setForceFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3473
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$Transfer;->forceFee_:J

    return-void
.end method

.method private setToAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3202
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Transfer;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setToAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3225
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3226
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Transfer;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setTokenAmount(Lwallet/core/jni/proto/Cardano$TokenBundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3373
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3374
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Transfer;->tokenAmount_:Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-void
.end method

.method private setUseMaxAmount(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3433
    iput-boolean p1, p0, Lwallet/core/jni/proto/Cardano$Transfer;->useMaxAmount_:Z

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

    .line 3935
    sget-object p2, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3982
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3976
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3961
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3963
    const-class p2, Lwallet/core/jni/proto/Cardano$Transfer;

    monitor-enter p2

    .line 3964
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3966
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3969
    sput-object p1, Lwallet/core/jni/proto/Cardano$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 3971
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

    .line 3958
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "toAddress_"

    aput-object v0, p1, p3

    const-string p3, "changeAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "tokenAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "useMaxAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "forceFee_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0003\u0004\t\u0005\u0007\u0006\u0003"

    .line 3954
    sget-object p3, Lwallet/core/jni/proto/Cardano$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3940
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$Transfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cardano$Transfer$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 3937
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$Transfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$Transfer;-><init>()V

    return-object p1

    nop

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

.method public getAmount()J
    .locals 2

    .line 3310
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->amount_:J

    return-wide v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 3242
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->changeAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3255
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->changeAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceFee()J
    .locals 2

    .line 3460
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->forceFee_:J

    return-wide v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 3175
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3188
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenAmount()Lwallet/core/jni/proto/Cardano$TokenBundle;
    .locals 1

    .line 3362
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->tokenAmount_:Lwallet/core/jni/proto/Cardano$TokenBundle;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cardano$TokenBundle;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$TokenBundle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUseMaxAmount()Z
    .locals 1

    .line 3421
    iget-boolean v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->useMaxAmount_:Z

    return v0
.end method

.method public hasTokenAmount()Z
    .locals 1

    .line 3350
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Transfer;->tokenAmount_:Lwallet/core/jni/proto/Cardano$TokenBundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
