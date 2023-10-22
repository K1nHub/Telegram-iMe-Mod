.class public final Lwallet/core/jni/proto/Icon$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Icon.java"

# interfaces
.implements Lwallet/core/jni/proto/Icon$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Icon$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Icon$SigningOutput;",
        "Lwallet/core/jni/proto/Icon$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Icon$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

.field public static final ENCODED_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Icon$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x2


# instance fields
.field private encoded_:Ljava/lang/String;

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1483
    new-instance v0, Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Icon$SigningOutput;-><init>()V

    .line 1486
    sput-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    .line 1487
    const-class v1, Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1108
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1109
    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningOutput;->encoded_:Ljava/lang/String;

    .line 1110
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2000()Lwallet/core/jni/proto/Icon$SigningOutput;
    .locals 1

    .line 1103
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object v0
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Icon$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 1103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningOutput;->setEncoded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Icon$SigningOutput;)V
    .locals 0

    .line 1103
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningOutput;->clearEncoded()V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Icon$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningOutput;->setEncodedBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Icon$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningOutput;->setSignature(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Icon$SigningOutput;)V
    .locals 0

    .line 1103
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningOutput;->clearSignature()V

    return-void
.end method

.method private clearEncoded()V
    .locals 1

    .line 1162
    invoke-static {}, Lwallet/core/jni/proto/Icon$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Icon$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningOutput;->getEncoded()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningOutput;->encoded_:Ljava/lang/String;

    return-void
.end method

.method private clearSignature()V
    .locals 1

    .line 1215
    invoke-static {}, Lwallet/core/jni/proto/Icon$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Icon$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Icon$SigningOutput;
    .locals 1

    .line 1492
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Icon$SigningOutput$Builder;
    .locals 1

    .line 1293
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Icon$SigningOutput;)Lwallet/core/jni/proto/Icon$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1296
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1270
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1276
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1234
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1241
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1281
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1288
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1258
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1265
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1221
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1228
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1246
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningOutput;
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

    .line 1253
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Icon$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 1498
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEncoded(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1151
    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningOutput;->encoded_:Ljava/lang/String;

    return-void
.end method

.method private setEncodedBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1174
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1175
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningOutput;->encoded_:Ljava/lang/String;

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

    .line 1202
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1204
    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

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

    .line 1433
    sget-object p2, Lwallet/core/jni/proto/Icon$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1476
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1470
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1455
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Icon$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1457
    const-class p2, Lwallet/core/jni/proto/Icon$SigningOutput;

    monitor-enter p2

    .line 1458
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Icon$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1460
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1463
    sput-object p1, Lwallet/core/jni/proto/Icon$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1465
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

    .line 1452
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "encoded_"

    aput-object v0, p1, p3

    const-string p3, "signature_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\n"

    .line 1448
    sget-object p3, Lwallet/core/jni/proto/Icon$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1438
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Icon$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Icon$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Icon$1;)V

    return-object p1

    .line 1435
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Icon$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Icon$SigningOutput;-><init>()V

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

.method public getEncoded()Ljava/lang/String;
    .locals 1

    .line 1124
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningOutput;->encoded_:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1137
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningOutput;->encoded_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1191
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
