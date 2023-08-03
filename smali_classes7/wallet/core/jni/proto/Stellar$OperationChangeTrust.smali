.class public final Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$OperationChangeTrustOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationChangeTrust"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Stellar$OperationChangeTrust;",
        "Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$OperationChangeTrustOrBuilder;"
    }
.end annotation


# static fields
.field public static final ASSET_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$OperationChangeTrust;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALID_BEFORE_FIELD_NUMBER:I = 0x2


# instance fields
.field private asset_:Lwallet/core/jni/proto/Stellar$Asset;

.field private validBefore_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2057
    new-instance v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-direct {v0}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;-><init>()V

    .line 2060
    sput-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    .line 2061
    const-class v1, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1684
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$2500()Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
    .locals 1

    .line 1679
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object v0
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 0

    .line 1679
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->setAsset(Lwallet/core/jni/proto/Stellar$Asset;)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 0

    .line 1679
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->mergeAsset(Lwallet/core/jni/proto/Stellar$Asset;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V
    .locals 0

    .line 1679
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->clearAsset()V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;J)V
    .locals 0

    .line 1679
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->setValidBefore(J)V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V
    .locals 0

    .line 1679
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->clearValidBefore()V

    return-void
.end method

.method private clearAsset()V
    .locals 1

    const/4 v0, 0x0

    .line 1748
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    return-void
.end method

.method private clearValidBefore()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1787
    iput-wide v0, p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->validBefore_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
    .locals 1

    .line 2066
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object v0
.end method

.method private mergeAsset(Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1731
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1732
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    if-eqz v0, :cond_0

    .line 1733
    invoke-static {}, Lwallet/core/jni/proto/Stellar$Asset;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1734
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    .line 1735
    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$Asset;->newBuilder(Lwallet/core/jni/proto/Stellar$Asset;)Lwallet/core/jni/proto/Stellar$Asset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$Asset$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$Asset;

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    goto :goto_0

    .line 1737
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;
    .locals 1

    .line 1865
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1868
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1842
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1848
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1806
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1813
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1853
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1860
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1830
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1837
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1793
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1800
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1818
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
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

    .line 1825
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$OperationChangeTrust;",
            ">;"
        }
    .end annotation

    .line 2072
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAsset(Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1718
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1719
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    return-void
.end method

.method private setValidBefore(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1776
    iput-wide p1, p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->validBefore_:J

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

    .line 2007
    sget-object p2, Lwallet/core/jni/proto/Stellar$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2050
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2044
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2029
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2031
    const-class p2, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    monitor-enter p2

    .line 2032
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2034
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2037
    sput-object p1, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->PARSER:Lcom/google/protobuf/Parser;

    .line 2039
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

    .line 2026
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "asset_"

    aput-object v0, p1, p3

    const-string p3, "validBefore_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u0002"

    .line 2022
    sget-object p3, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2012
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;-><init>(Lwallet/core/jni/proto/Stellar$1;)V

    return-object p1

    .line 2009
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-direct {p1}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;-><init>()V

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

.method public getAsset()Lwallet/core/jni/proto/Stellar$Asset;
    .locals 1

    .line 1708
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Stellar$Asset;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValidBefore()J
    .locals 2

    .line 1764
    iget-wide v0, p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->validBefore_:J

    return-wide v0
.end method

.method public hasAsset()Z
    .locals 1

    .line 1697
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
