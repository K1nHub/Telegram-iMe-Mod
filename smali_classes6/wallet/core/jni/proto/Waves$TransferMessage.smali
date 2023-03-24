.class public final Lwallet/core/jni/proto/Waves$TransferMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Waves.java"

# interfaces
.implements Lwallet/core/jni/proto/Waves$TransferMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Waves$TransferMessage;",
        "Lwallet/core/jni/proto/Waves$TransferMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Waves$TransferMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x1

.field public static final ASSET_FIELD_NUMBER:I = 0x2

.field public static final ATTACHMENT_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

.field public static final FEE_ASSET_FIELD_NUMBER:I = 0x4

.field public static final FEE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Waves$TransferMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_FIELD_NUMBER:I = 0x5


# instance fields
.field private amount_:J

.field private asset_:Ljava/lang/String;

.field private attachment_:Lcom/google/protobuf/ByteString;

.field private feeAsset_:Ljava/lang/String;

.field private fee_:J

.field private to_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 926
    new-instance v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;-><init>()V

    .line 929
    sput-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    .line 930
    const-class v1, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 118
    iput-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->asset_:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->feeAsset_:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->to_:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->attachment_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Waves$TransferMessage;
    .locals 1

    .line 112
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Waves$TransferMessage;J)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Waves$TransferMessage;->setAmount(J)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Waves$TransferMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->setFeeAssetBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Waves$TransferMessage;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Waves$TransferMessage;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$TransferMessage;->clearTo()V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Waves$TransferMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Waves$TransferMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->setAttachment(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Waves$TransferMessage;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$TransferMessage;->clearAttachment()V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Waves$TransferMessage;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$TransferMessage;->clearAmount()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Waves$TransferMessage;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->setAsset(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Waves$TransferMessage;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$TransferMessage;->clearAsset()V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Waves$TransferMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->setAssetBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Waves$TransferMessage;J)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Waves$TransferMessage;->setFee(J)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Waves$TransferMessage;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$TransferMessage;->clearFee()V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Waves$TransferMessage;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$TransferMessage;->setFeeAsset(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Waves$TransferMessage;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$TransferMessage;->clearFeeAsset()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 158
    iput-wide v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->amount_:J

    return-void
.end method

.method private clearAsset()V
    .locals 1

    .line 211
    invoke-static {}, Lwallet/core/jni/proto/Waves$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$TransferMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getAsset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->asset_:Ljava/lang/String;

    return-void
.end method

.method private clearAttachment()V
    .locals 1

    .line 436
    invoke-static {}, Lwallet/core/jni/proto/Waves$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$TransferMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getAttachment()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->attachment_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 263
    iput-wide v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->fee_:J

    return-void
.end method

.method private clearFeeAsset()V
    .locals 1

    .line 316
    invoke-static {}, Lwallet/core/jni/proto/Waves$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$TransferMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getFeeAsset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->feeAsset_:Ljava/lang/String;

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 383
    invoke-static {}, Lwallet/core/jni/proto/Waves$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$TransferMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->to_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Waves$TransferMessage;
    .locals 1

    .line 935
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1

    .line 514
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Waves$TransferMessage;)Lwallet/core/jni/proto/Waves$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 517
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 491
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 497
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 455
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 462
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 502
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 509
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 479
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 486
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 442
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 449
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 467
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$TransferMessage;
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

    .line 474
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Waves$TransferMessage;",
            ">;"
        }
    .end annotation

    .line 941
    sget-object v0, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

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

    .line 147
    iput-wide p1, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->amount_:J

    return-void
.end method

.method private setAsset(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->asset_:Ljava/lang/String;

    return-void
.end method

.method private setAssetBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 223
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 224
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->asset_:Ljava/lang/String;

    return-void
.end method

.method private setAttachment(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->attachment_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 252
    iput-wide p1, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->fee_:J

    return-void
.end method

.method private setFeeAsset(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->feeAsset_:Ljava/lang/String;

    return-void
.end method

.method private setFeeAssetBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 328
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 329
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->feeAsset_:Ljava/lang/String;

    return-void
.end method

.method private setTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->to_:Ljava/lang/String;

    return-void
.end method

.method private setToBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 395
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 396
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->to_:Ljava/lang/String;

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

    .line 872
    sget-object p2, Lwallet/core/jni/proto/Waves$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 919
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 913
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 898
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Waves$TransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 900
    const-class p2, Lwallet/core/jni/proto/Waves$TransferMessage;

    monitor-enter p2

    .line 901
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Waves$TransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 903
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 906
    sput-object p1, Lwallet/core/jni/proto/Waves$TransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 908
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

    .line 895
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "amount_"

    aput-object v0, p1, p3

    const-string p3, "asset_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "feeAsset_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "to_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "attachment_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0002\u0208\u0003\u0002\u0004\u0208\u0005\u0208\u0006\n"

    .line 891
    sget-object p3, Lwallet/core/jni/proto/Waves$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 877
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Waves$TransferMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Waves$TransferMessage$Builder;-><init>(Lwallet/core/jni/proto/Waves$1;)V

    return-object p1

    .line 874
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Waves$TransferMessage;-><init>()V

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

    .line 135
    iget-wide v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->amount_:J

    return-wide v0
.end method

.method public getAsset()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->asset_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 186
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->asset_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAttachment()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 412
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->attachment_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->fee_:J

    return-wide v0
.end method

.method public getFeeAsset()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->feeAsset_:Ljava/lang/String;

    return-object v0
.end method

.method public getFeeAssetBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 291
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->feeAsset_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 358
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$TransferMessage;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
