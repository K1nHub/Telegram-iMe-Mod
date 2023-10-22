.class public final Lwallet/core/jni/proto/Nervos$Script;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$ScriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Script"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$Script$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$Script;",
        "Lwallet/core/jni/proto/Nervos$Script$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$ScriptOrBuilder;"
    }
.end annotation


# static fields
.field public static final ARGS_FIELD_NUMBER:I = 0x3

.field public static final CODE_HASH_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

.field public static final HASH_TYPE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$Script;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private args_:Lcom/google/protobuf/ByteString;

.field private codeHash_:Lcom/google/protobuf/ByteString;

.field private hashType_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3740
    new-instance v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$Script;-><init>()V

    .line 3743
    sput-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    .line 3744
    const-class v1, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3284
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3285
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Script;->codeHash_:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    .line 3286
    iput-object v1, p0, Lwallet/core/jni/proto/Nervos$Script;->hashType_:Ljava/lang/String;

    .line 3287
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Script;->args_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$5500()Lwallet/core/jni/proto/Nervos$Script;
    .locals 1

    .line 3279
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    return-object v0
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Nervos$Script;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3279
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Script;->setCodeHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0

    .line 3279
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Script;->clearCodeHash()V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Nervos$Script;Ljava/lang/String;)V
    .locals 0

    .line 3279
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Script;->setHashType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0

    .line 3279
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Script;->clearHashType()V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Nervos$Script;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3279
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Script;->setHashTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Nervos$Script;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3279
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Script;->setArgs(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0

    .line 3279
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Script;->clearArgs()V

    return-void
.end method

.method private clearArgs()V
    .locals 1

    .line 3431
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Script;->getArgs()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Script;->args_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCodeHash()V
    .locals 1

    .line 3325
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Script;->getCodeHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Script;->codeHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearHashType()V
    .locals 1

    .line 3378
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Script;->getHashType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Script;->hashType_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;
    .locals 1

    .line 3749
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$Script$Builder;
    .locals 1

    .line 3509
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$Script$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3512
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3486
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3492
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3450
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3457
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3497
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3504
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3474
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3481
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3437
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3444
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3462
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Script;
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

    .line 3469
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Script;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$Script;",
            ">;"
        }
    .end annotation

    .line 3755
    sget-object v0, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setArgs(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3418
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3420
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Script;->args_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCodeHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3314
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Script;->codeHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setHashType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3367
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Script;->hashType_:Ljava/lang/String;

    return-void
.end method

.method private setHashTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3390
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3391
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Script;->hashType_:Ljava/lang/String;

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

    .line 3689
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3733
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3727
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3712
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$Script;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3714
    const-class p2, Lwallet/core/jni/proto/Nervos$Script;

    monitor-enter p2

    .line 3715
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$Script;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3717
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3720
    sput-object p1, Lwallet/core/jni/proto/Nervos$Script;->PARSER:Lcom/google/protobuf/Parser;

    .line 3722
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

    .line 3709
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "codeHash_"

    aput-object v0, p1, p3

    const-string p3, "hashType_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "args_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\u0208\u0003\n"

    .line 3705
    sget-object p3, Lwallet/core/jni/proto/Nervos$Script;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3694
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$Script$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$Script$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 3691
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$Script;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$Script;-><init>()V

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

.method public getArgs()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3407
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Script;->args_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCodeHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3301
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Script;->codeHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHashType()Ljava/lang/String;
    .locals 1

    .line 3340
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Script;->hashType_:Ljava/lang/String;

    return-object v0
.end method

.method public getHashTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3353
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Script;->hashType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
