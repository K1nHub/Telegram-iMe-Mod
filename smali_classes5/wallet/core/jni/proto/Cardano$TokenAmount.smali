.class public final Lwallet/core/jni/proto/Cardano$TokenAmount;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenAmount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$TokenAmount;",
        "Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final ASSET_NAME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private assetName_:Ljava/lang/String;

.field private policyId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 961
    new-instance v0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;-><init>()V

    .line 964
    sput-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 965
    const-class v1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 448
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 449
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->policyId_:Ljava/lang/String;

    .line 450
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->assetName_:Ljava/lang/String;

    .line 451
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Cardano$TokenAmount;Ljava/lang/String;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TokenAmount;->setAssetName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 443
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->clearAssetName()V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Cardano$TokenAmount;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TokenAmount;->setAssetNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Cardano$TokenAmount;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TokenAmount;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 443
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->clearAmount()V

    return-void
.end method

.method static synthetic access$600()Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1

    .line 443
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object v0
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Cardano$TokenAmount;Ljava/lang/String;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TokenAmount;->setPolicyId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 443
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->clearPolicyId()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Cardano$TokenAmount;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TokenAmount;->setPolicyIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 623
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TokenAmount;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$TokenAmount;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearAssetName()V
    .locals 1

    .line 570
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TokenAmount;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$TokenAmount;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->getAssetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->assetName_:Ljava/lang/String;

    return-void
.end method

.method private clearPolicyId()V
    .locals 1

    .line 503
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TokenAmount;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$TokenAmount;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TokenAmount;->getPolicyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->policyId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1

    .line 970
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
    .locals 1

    .line 701
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 704
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 678
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 684
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 642
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 649
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 689
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 696
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 666
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 673
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 629
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 636
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 654
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenAmount;
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

    .line 661
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 976
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 610
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->amount_:Lcom/google/protobuf/ByteString;

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

    .line 557
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->assetName_:Ljava/lang/String;

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

    .line 582
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 583
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->assetName_:Ljava/lang/String;

    return-void
.end method

.method private setPolicyId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->policyId_:Ljava/lang/String;

    return-void
.end method

.method private setPolicyIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 515
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 516
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->policyId_:Ljava/lang/String;

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

    .line 910
    sget-object p2, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 954
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 948
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 933
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$TokenAmount;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 935
    const-class p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    monitor-enter p2

    .line 936
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$TokenAmount;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 938
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 941
    sput-object p1, Lwallet/core/jni/proto/Cardano$TokenAmount;->PARSER:Lcom/google/protobuf/Parser;

    .line 943
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

    .line 930
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "policyId_"

    aput-object v0, p1, p3

    const-string p3, "assetName_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\n"

    .line 926
    sget-object p3, Lwallet/core/jni/proto/Cardano$TokenAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 915
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 912
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$TokenAmount;-><init>()V

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

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 599
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->assetName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 545
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->assetName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPolicyId()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->policyId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 478
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenAmount;->policyId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
