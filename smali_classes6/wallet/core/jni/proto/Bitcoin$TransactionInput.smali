.class public final Lwallet/core/jni/proto/Bitcoin$TransactionInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$TransactionInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Bitcoin$TransactionInput;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIOUSOUTPUT_FIELD_NUMBER:I = 0x1

.field public static final SCRIPT_FIELD_NUMBER:I = 0x3

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x2


# instance fields
.field private previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

.field private script_:Lcom/google/protobuf/ByteString;

.field private sequence_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1523
    new-instance v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;-><init>()V

    .line 1526
    sput-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    .line 1527
    const-class v1, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1069
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1070
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->script_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1800()Lwallet/core/jni/proto/Bitcoin$TransactionInput;
    .locals 1

    .line 1064
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object v0
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Bitcoin$TransactionInput;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V
    .locals 0

    .line 1064
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->setPreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Bitcoin$TransactionInput;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V
    .locals 0

    .line 1064
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->mergePreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Bitcoin$TransactionInput;)V
    .locals 0

    .line 1064
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->clearPreviousOutput()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Bitcoin$TransactionInput;I)V
    .locals 0

    .line 1064
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->setSequence(I)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Bitcoin$TransactionInput;)V
    .locals 0

    .line 1064
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->clearSequence()V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Bitcoin$TransactionInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1064
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->setScript(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Bitcoin$TransactionInput;)V
    .locals 0

    .line 1064
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->clearScript()V

    return-void
.end method

.method private clearPreviousOutput()V
    .locals 1

    const/4 v0, 0x0

    .line 1134
    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-void
.end method

.method private clearScript()V
    .locals 1

    .line 1212
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->script_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSequence()V
    .locals 1

    const/4 v0, 0x0

    .line 1173
    iput v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->sequence_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$TransactionInput;
    .locals 1

    .line 1532
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object v0
.end method

.method private mergePreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1118
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    if-eqz v0, :cond_0

    .line 1119
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$OutPoint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1120
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    .line 1121
    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->newBuilder(Lwallet/core/jni/proto/Bitcoin$OutPoint;)Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    goto :goto_0

    .line 1123
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
    .locals 1

    .line 1290
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Bitcoin$TransactionInput;)Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1293
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1267
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1273
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1231
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1238
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1278
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1285
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1255
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1262
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1218
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1225
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1243
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
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

    .line 1250
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 1538
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1105
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-void
.end method

.method private setScript(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1201
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->script_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSequence(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1162
    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->sequence_:I

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

    .line 1472
    sget-object p2, Lwallet/core/jni/proto/Bitcoin$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1516
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1510
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1495
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1497
    const-class p2, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    monitor-enter p2

    .line 1498
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1500
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1503
    sput-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1505
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

    .line 1492
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "previousOutput_"

    aput-object v0, p1, p3

    const-string p3, "sequence_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "script_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\n"

    .line 1488
    sget-object p3, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1477
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Bitcoin$TransactionInput$Builder;-><init>(Lwallet/core/jni/proto/Bitcoin$1;)V

    return-object p1

    .line 1474
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Bitcoin$TransactionInput;-><init>()V

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

.method public getPreviousOutput()Lwallet/core/jni/proto/Bitcoin$OutPoint;
    .locals 1

    .line 1094
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$OutPoint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getScript()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1188
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->script_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 1150
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->sequence_:I

    return v0
.end method

.method public hasPreviousOutput()Z
    .locals 1

    .line 1083
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
