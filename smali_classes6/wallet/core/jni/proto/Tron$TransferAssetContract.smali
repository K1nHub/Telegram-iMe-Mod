.class public final Lwallet/core/jni/proto/Tron$TransferAssetContract;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$TransferAssetContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferAssetContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$TransferAssetContract;",
        "Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$TransferAssetContractOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x4

.field public static final ASSET_NAME_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

.field public static final OWNER_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$TransferAssetContract;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x3


# instance fields
.field private amount_:J

.field private assetName_:Ljava/lang/String;

.field private ownerAddress_:Ljava/lang/String;

.field private toAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1342
    new-instance v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;-><init>()V

    .line 1345
    sput-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    .line 1346
    const-class v1, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 693
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 694
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->assetName_:Ljava/lang/String;

    .line 695
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->ownerAddress_:Ljava/lang/String;

    .line 696
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000()Lwallet/core/jni/proto/Tron$TransferAssetContract;
    .locals 1

    .line 688
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object v0
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Tron$TransferAssetContract;Ljava/lang/String;)V
    .locals 0

    .line 688
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->setAssetName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V
    .locals 0

    .line 688
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->clearAssetName()V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Tron$TransferAssetContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 688
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->setAssetNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Tron$TransferAssetContract;Ljava/lang/String;)V
    .locals 0

    .line 688
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V
    .locals 0

    .line 688
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Tron$TransferAssetContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 688
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Tron$TransferAssetContract;Ljava/lang/String;)V
    .locals 0

    .line 688
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V
    .locals 0

    .line 688
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->clearToAddress()V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Tron$TransferAssetContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 688
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Tron$TransferAssetContract;J)V
    .locals 0

    .line 688
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->setAmount(J)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V
    .locals 0

    .line 688
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->clearAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 934
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->amount_:J

    return-void
.end method

.method private clearAssetName()V
    .locals 1

    .line 748
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferAssetContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getAssetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->assetName_:Ljava/lang/String;

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 815
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferAssetContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 882
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferAssetContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferAssetContract;
    .locals 1

    .line 1351
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1

    .line 1012
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$TransferAssetContract;)Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1015
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 989
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 995
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 953
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 960
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 1000
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 1007
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 977
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 984
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 940
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 947
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 965
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferAssetContract;
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

    .line 972
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$TransferAssetContract;",
            ">;"
        }
    .end annotation

    .line 1357
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

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

    .line 923
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->amount_:J

    return-void
.end method

.method private setAssetName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 735
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 737
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->assetName_:Ljava/lang/String;

    return-void
.end method

.method private setAssetNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 760
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 761
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->assetName_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 802
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 804
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 827
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 828
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->ownerAddress_:Ljava/lang/String;

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

    .line 869
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 871
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->toAddress_:Ljava/lang/String;

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

    .line 894
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 895
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->toAddress_:Ljava/lang/String;

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

    .line 1290
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1335
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1329
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1314
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$TransferAssetContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1316
    const-class p2, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    monitor-enter p2

    .line 1317
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$TransferAssetContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1319
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1322
    sput-object p1, Lwallet/core/jni/proto/Tron$TransferAssetContract;->PARSER:Lcom/google/protobuf/Parser;

    .line 1324
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

    .line 1311
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "assetName_"

    aput-object v0, p1, p3

    const-string p3, "ownerAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0002"

    .line 1307
    sget-object p3, Lwallet/core/jni/proto/Tron$TransferAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1295
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 1292
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$TransferAssetContract;-><init>()V

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

    .line 911
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->amount_:J

    return-wide v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->assetName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 723
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->assetName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 777
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 790
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 844
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 857
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferAssetContract;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
