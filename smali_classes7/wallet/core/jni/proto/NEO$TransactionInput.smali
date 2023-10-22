.class public final Lwallet/core/jni/proto/NEO$TransactionInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEO.java"

# interfaces
.implements Lwallet/core/jni/proto/NEO$TransactionInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEO$TransactionInput;",
        "Lwallet/core/jni/proto/NEO$TransactionInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEO$TransactionInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ASSET_ID_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREV_HASH_FIELD_NUMBER:I = 0x1

.field public static final PREV_INDEX_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x3


# instance fields
.field private assetId_:Ljava/lang/String;

.field private prevHash_:Lcom/google/protobuf/ByteString;

.field private prevIndex_:I

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 610
    new-instance v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;-><init>()V

    .line 613
    sput-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    .line 614
    const-class v1, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 78
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->prevHash_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 79
    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->assetId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/NEO$TransactionInput;
    .locals 1

    .line 72
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/NEO$TransactionInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionInput;->setPrevHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionInput;->clearPrevHash()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/NEO$TransactionInput;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionInput;->setPrevIndex(I)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionInput;->clearPrevIndex()V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/NEO$TransactionInput;J)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionInput;->setValue(J)V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionInput;->clearValue()V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/NEO$TransactionInput;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionInput;->setAssetId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionInput;->clearAssetId()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/NEO$TransactionInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionInput;->setAssetIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAssetId()V
    .locals 1

    .line 246
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionInput;->getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;->getAssetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->assetId_:Ljava/lang/String;

    return-void
.end method

.method private clearPrevHash()V
    .locals 1

    .line 117
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionInput;->getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;->getPrevHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->prevHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrevIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->prevIndex_:I

    return-void
.end method

.method private clearValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 193
    iput-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->value_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionInput;
    .locals 1

    .line 619
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    .locals 1

    .line 338
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEO$TransactionInput;)Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 341
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 315
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 321
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 279
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 286
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 326
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 333
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 303
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 310
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 266
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 273
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 291
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionInput;
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

    .line 298
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 625
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->assetId_:Ljava/lang/String;

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

    .line 258
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 259
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->assetId_:Ljava/lang/String;

    return-void
.end method

.method private setPrevHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->prevHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPrevIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 144
    iput p1, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->prevIndex_:I

    return-void
.end method

.method private setValue(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 182
    iput-wide p1, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->value_:J

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

    .line 558
    sget-object p2, Lwallet/core/jni/proto/NEO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 603
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 597
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 582
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 584
    const-class p2, Lwallet/core/jni/proto/NEO$TransactionInput;

    monitor-enter p2

    .line 585
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 587
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 590
    sput-object p1, Lwallet/core/jni/proto/NEO$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 592
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

    .line 579
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "prevHash_"

    aput-object v0, p1, p3

    const-string p3, "prevIndex_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "assetId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\u0006\u0003\u0002\u0004\u0208"

    .line 575
    sget-object p3, Lwallet/core/jni/proto/NEO$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 563
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEO$TransactionInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEO$TransactionInput$Builder;-><init>(Lwallet/core/jni/proto/NEO$1;)V

    return-object p1

    .line 560
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEO$TransactionInput;-><init>()V

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

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 221
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->assetId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrevHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 93
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->prevHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrevIndex()I
    .locals 1

    .line 132
    iget v0, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->prevIndex_:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 170
    iget-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionInput;->value_:J

    return-wide v0
.end method
