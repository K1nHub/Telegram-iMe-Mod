.class public final Lwallet/core/jni/proto/NEO$TransactionOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEO.java"

# interfaces
.implements Lwallet/core/jni/proto/NEO$TransactionOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEO$TransactionOutput;",
        "Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEO$TransactionOutputOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field public static final ASSET_ID_FIELD_NUMBER:I = 0x1

.field public static final CHANGE_ADDRESS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x3


# instance fields
.field private amount_:J

.field private assetId_:Ljava/lang/String;

.field private changeAddress_:Ljava/lang/String;

.field private toAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1364
    new-instance v0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;-><init>()V

    .line 1367
    sput-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    .line 1368
    const-class v1, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 715
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 716
    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->assetId_:Ljava/lang/String;

    .line 717
    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->toAddress_:Ljava/lang/String;

    .line 718
    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1100()Lwallet/core/jni/proto/NEO$TransactionOutput;
    .locals 1

    .line 710
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object v0
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/NEO$TransactionOutput;Ljava/lang/String;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->setAssetId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/NEO$TransactionOutput;)V
    .locals 0

    .line 710
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->clearAssetId()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/NEO$TransactionOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->setAssetIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/NEO$TransactionOutput;J)V
    .locals 0

    .line 710
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionOutput;->setAmount(J)V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/NEO$TransactionOutput;)V
    .locals 0

    .line 710
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->clearAmount()V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/NEO$TransactionOutput;Ljava/lang/String;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/NEO$TransactionOutput;)V
    .locals 0

    .line 710
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->clearToAddress()V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/NEO$TransactionOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/NEO$TransactionOutput;Ljava/lang/String;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->setChangeAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/NEO$TransactionOutput;)V
    .locals 0

    .line 710
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->clearChangeAddress()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/NEO$TransactionOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;->setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 822
    iput-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->amount_:J

    return-void
.end method

.method private clearAssetId()V
    .locals 1

    .line 770
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getAssetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->assetId_:Ljava/lang/String;

    return-void
.end method

.method private clearChangeAddress()V
    .locals 1

    .line 942
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 875
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionOutput;
    .locals 1

    .line 1373
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1

    .line 1034
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEO$TransactionOutput;)Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1037
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 1011
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 1017
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 975
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 982
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 1022
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 1029
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 999
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 1006
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 962
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 969
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 987
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionOutput;
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

    .line 994
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 1379
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

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

    .line 811
    iput-wide p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->amount_:J

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

    .line 757
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->assetId_:Ljava/lang/String;

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

    .line 782
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 783
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->assetId_:Ljava/lang/String;

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

    .line 929
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 931
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->changeAddress_:Ljava/lang/String;

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

    .line 954
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 955
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->changeAddress_:Ljava/lang/String;

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

    .line 862
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 864
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->toAddress_:Ljava/lang/String;

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

    .line 887
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 888
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->toAddress_:Ljava/lang/String;

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

    .line 1312
    sget-object p2, Lwallet/core/jni/proto/NEO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1357
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1351
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1336
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1338
    const-class p2, Lwallet/core/jni/proto/NEO$TransactionOutput;

    monitor-enter p2

    .line 1339
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1341
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1344
    sput-object p1, Lwallet/core/jni/proto/NEO$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1346
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

    .line 1333
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "assetId_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "changeAddress_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0010\u0003\u0208\u0004\u0208"

    .line 1329
    sget-object p3, Lwallet/core/jni/proto/NEO$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1317
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEO$TransactionOutput$Builder;-><init>(Lwallet/core/jni/proto/NEO$1;)V

    return-object p1

    .line 1314
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEO$TransactionOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEO$TransactionOutput;-><init>()V

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

    .line 799
    iget-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->amount_:J

    return-wide v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .line 732
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 745
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->assetId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 904
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->changeAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 917
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->changeAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 837
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 850
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionOutput;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
