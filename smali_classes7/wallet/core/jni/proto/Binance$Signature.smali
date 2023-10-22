.class public final Lwallet/core/jni/proto/Binance$Signature;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SignatureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Signature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$Signature$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$Signature;",
        "Lwallet/core/jni/proto/Binance$Signature$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SignatureOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_NUMBER_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$Signature;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUB_KEY_FIELD_NUMBER:I = 0x1

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x4

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x2


# instance fields
.field private accountNumber_:J

.field private pubKey_:Lcom/google/protobuf/ByteString;

.field private sequence_:J

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1528
    new-instance v0, Lwallet/core/jni/proto/Binance$Signature;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$Signature;-><init>()V

    .line 1531
    sput-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    .line 1532
    const-class v1, Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1052
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1053
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Signature;->pubKey_:Lcom/google/protobuf/ByteString;

    .line 1054
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Signature;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1700()Lwallet/core/jni/proto/Binance$Signature;
    .locals 1

    .line 1047
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    return-object v0
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Binance$Signature;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$Signature;->setPubKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Binance$Signature;)V
    .locals 0

    .line 1047
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Signature;->clearPubKey()V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Binance$Signature;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$Signature;->setSignature(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Binance$Signature;)V
    .locals 0

    .line 1047
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Signature;->clearSignature()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Binance$Signature;J)V
    .locals 0

    .line 1047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$Signature;->setAccountNumber(J)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Binance$Signature;)V
    .locals 0

    .line 1047
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Signature;->clearAccountNumber()V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Binance$Signature;J)V
    .locals 0

    .line 1047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$Signature;->setSequence(J)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Binance$Signature;)V
    .locals 0

    .line 1047
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Signature;->clearSequence()V

    return-void
.end method

.method private clearAccountNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1169
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$Signature;->accountNumber_:J

    return-void
.end method

.method private clearPubKey()V
    .locals 1

    .line 1092
    invoke-static {}, Lwallet/core/jni/proto/Binance$Signature;->getDefaultInstance()Lwallet/core/jni/proto/Binance$Signature;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Signature;->getPubKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Signature;->pubKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSequence()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1207
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$Signature;->sequence_:J

    return-void
.end method

.method private clearSignature()V
    .locals 1

    .line 1131
    invoke-static {}, Lwallet/core/jni/proto/Binance$Signature;->getDefaultInstance()Lwallet/core/jni/proto/Binance$Signature;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Signature;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Signature;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$Signature;
    .locals 1

    .line 1537
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$Signature$Builder;
    .locals 1

    .line 1285
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$Signature$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$Signature;)Lwallet/core/jni/proto/Binance$Signature$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1288
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1262
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1268
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1226
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1233
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1273
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1280
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1250
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1257
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1213
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1220
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1238
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Signature;
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

    .line 1245
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Signature;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$Signature;",
            ">;"
        }
    .end annotation

    .line 1543
    sget-object v0, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccountNumber(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1158
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$Signature;->accountNumber_:J

    return-void
.end method

.method private setPubKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1079
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1081
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$Signature;->pubKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSequence(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1196
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$Signature;->sequence_:J

    return-void
.end method

.method private setSignature(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1120
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$Signature;->signature_:Lcom/google/protobuf/ByteString;

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

    .line 1476
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1521
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1515
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1500
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$Signature;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1502
    const-class p2, Lwallet/core/jni/proto/Binance$Signature;

    monitor-enter p2

    .line 1503
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$Signature;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1505
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1508
    sput-object p1, Lwallet/core/jni/proto/Binance$Signature;->PARSER:Lcom/google/protobuf/Parser;

    .line 1510
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

    .line 1497
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "pubKey_"

    aput-object v0, p1, p3

    const-string p3, "signature_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "accountNumber_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "sequence_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\u0002\u0004\u0002"

    .line 1493
    sget-object p3, Lwallet/core/jni/proto/Binance$Signature;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Signature;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1481
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$Signature$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$Signature$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 1478
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$Signature;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$Signature;-><init>()V

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

.method public getAccountNumber()J
    .locals 2

    .line 1146
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$Signature;->accountNumber_:J

    return-wide v0
.end method

.method public getPubKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1068
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Signature;->pubKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 1184
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$Signature;->sequence_:J

    return-wide v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1107
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Signature;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
