.class public final Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEO.java"

# interfaces
.implements Lwallet/core/jni/proto/NEO$TransactionOutputPlanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionOutputPlan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEO$TransactionOutputPlan;",
        "Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEO$TransactionOutputPlanOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x1

.field public static final ASSET_ID_FIELD_NUMBER:I = 0x4

.field public static final AVAILABLE_AMOUNT_FIELD_NUMBER:I = 0x2

.field public static final CHANGE_ADDRESS_FIELD_NUMBER:I = 0x6

.field public static final CHANGE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$TransactionOutputPlan;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x5


# instance fields
.field private amount_:J

.field private assetId_:Ljava/lang/String;

.field private availableAmount_:J

.field private changeAddress_:Ljava/lang/String;

.field private change_:J

.field private toAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4203
    new-instance v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;-><init>()V

    .line 4206
    sput-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    .line 4207
    const-class v1, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3396
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3397
    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->assetId_:Ljava/lang/String;

    .line 3398
    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->toAddress_:Ljava/lang/String;

    .line 3399
    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5800()Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
    .locals 1

    .line 3391
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object v0
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;J)V
    .locals 0

    .line 3391
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->setAmount(J)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 0

    .line 3391
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->clearAmount()V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;J)V
    .locals 0

    .line 3391
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->setAvailableAmount(J)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 0

    .line 3391
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->clearAvailableAmount()V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;J)V
    .locals 0

    .line 3391
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->setChange(J)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 0

    .line 3391
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->clearChange()V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Ljava/lang/String;)V
    .locals 0

    .line 3391
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->setAssetId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 0

    .line 3391
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->clearAssetId()V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3391
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->setAssetIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Ljava/lang/String;)V
    .locals 0

    .line 3391
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 0

    .line 3391
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->clearToAddress()V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3391
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Ljava/lang/String;)V
    .locals 0

    .line 3391
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->setChangeAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 0

    .line 3391
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->clearChangeAddress()V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3391
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3436
    iput-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->amount_:J

    return-void
.end method

.method private clearAssetId()V
    .locals 1

    .line 3565
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getAssetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->assetId_:Ljava/lang/String;

    return-void
.end method

.method private clearAvailableAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3474
    iput-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->availableAmount_:J

    return-void
.end method

.method private clearChange()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3512
    iput-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->change_:J

    return-void
.end method

.method private clearChangeAddress()V
    .locals 1

    .line 3699
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 3632
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
    .locals 1

    .line 4212
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1

    .line 3791
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3794
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3768
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3774
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3732
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3739
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3779
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3786
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3756
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3763
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3719
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3726
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3744
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
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

    .line 3751
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$TransactionOutputPlan;",
            ">;"
        }
    .end annotation

    .line 4218
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

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

    .line 3425
    iput-wide p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->amount_:J

    return-void
.end method

.method private setAssetId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3552
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3554
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->assetId_:Ljava/lang/String;

    return-void
.end method

.method private setAssetIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3577
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3578
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->assetId_:Ljava/lang/String;

    return-void
.end method

.method private setAvailableAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3463
    iput-wide p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->availableAmount_:J

    return-void
.end method

.method private setChange(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3501
    iput-wide p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->change_:J

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

    .line 3686
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3688
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->changeAddress_:Ljava/lang/String;

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

    .line 3711
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3712
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->changeAddress_:Ljava/lang/String;

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

    .line 3619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3621
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->toAddress_:Ljava/lang/String;

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

    .line 3644
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3645
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->toAddress_:Ljava/lang/String;

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

    .line 4149
    sget-object p2, Lwallet/core/jni/proto/NEO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4196
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4190
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4175
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4177
    const-class p2, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    monitor-enter p2

    .line 4178
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4180
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4183
    sput-object p1, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->PARSER:Lcom/google/protobuf/Parser;

    .line 4185
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

    .line 4172
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "amount_"

    aput-object v0, p1, p3

    const-string p3, "availableAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "change_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "assetId_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "changeAddress_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0002\u0002\u0003\u0002\u0004\u0208\u0005\u0208\u0006\u0208"

    .line 4168
    sget-object p3, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4154
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;-><init>(Lwallet/core/jni/proto/NEO$1;)V

    return-object p1

    .line 4151
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;-><init>()V

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

    .line 3413
    iget-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->amount_:J

    return-wide v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .line 3527
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3540
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->assetId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableAmount()J
    .locals 2

    .line 3451
    iget-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->availableAmount_:J

    return-wide v0
.end method

.method public getChange()J
    .locals 2

    .line 3489
    iget-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->change_:J

    return-wide v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 3661
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->changeAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3674
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->changeAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 3594
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3607
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
