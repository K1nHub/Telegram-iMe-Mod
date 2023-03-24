.class public final Lwallet/core/jni/proto/Everscale$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Everscale.java"

# interfaces
.implements Lwallet/core/jni/proto/Everscale$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Everscale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Everscale$SigningInput$Builder;,
        Lwallet/core/jni/proto/Everscale$SigningInput$ActionOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Everscale$SigningInput;",
        "Lwallet/core/jni/proto/Everscale$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Everscale$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Everscale$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x2

.field public static final TRANSFER_FIELD_NUMBER:I = 0x1


# instance fields
.field private actionOneofCase_:I

.field private actionOneof_:Ljava/lang/Object;

.field private privateKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1569
    new-instance v0, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Everscale$SigningInput;-><init>()V

    .line 1572
    sput-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    .line 1573
    const-class v1, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1178
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1181
    iput v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneofCase_:I

    .line 1179
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1800()Lwallet/core/jni/proto/Everscale$SigningInput;
    .locals 1

    .line 1173
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object v0
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Everscale$SigningInput;)V
    .locals 0

    .line 1173
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$SigningInput;->clearActionOneof()V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Everscale$SigningInput;Lwallet/core/jni/proto/Everscale$Transfer;)V
    .locals 0

    .line 1173
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Everscale$SigningInput;->setTransfer(Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Everscale$SigningInput;Lwallet/core/jni/proto/Everscale$Transfer;)V
    .locals 0

    .line 1173
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Everscale$SigningInput;->mergeTransfer(Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Everscale$SigningInput;)V
    .locals 0

    .line 1173
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$SigningInput;->clearTransfer()V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Everscale$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1173
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Everscale$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Everscale$SigningInput;)V
    .locals 0

    .line 1173
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method private clearActionOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 1218
    iput v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneofCase_:I

    const/4 v0, 0x0

    .line 1219
    iput-object v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 1308
    invoke-static {}, Lwallet/core/jni/proto/Everscale$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Everscale$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 1266
    iget v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1267
    iput v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneofCase_:I

    const/4 v0, 0x0

    .line 1268
    iput-object v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Everscale$SigningInput;
    .locals 1

    .line 1578
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object v0
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/Everscale$Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1253
    iget v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneof_:Ljava/lang/Object;

    .line 1254
    invoke-static {}, Lwallet/core/jni/proto/Everscale$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Everscale$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1255
    iget-object v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->newBuilder(Lwallet/core/jni/proto/Everscale$Transfer;)Lwallet/core/jni/proto/Everscale$Transfer$Builder;

    move-result-object v0

    .line 1256
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Everscale$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 1258
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneof_:Ljava/lang/Object;

    .line 1260
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Everscale$SigningInput$Builder;
    .locals 1

    .line 1386
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Everscale$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Everscale$SigningInput;)Lwallet/core/jni/proto/Everscale$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1389
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1363
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1369
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1327
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1334
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1374
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1381
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1351
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1358
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1314
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1321
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1339
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$SigningInput;
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

    .line 1346
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Everscale$SigningInput;",
            ">;"
        }
    .end annotation

    .line 1584
    sget-object v0, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1297
    iput-object p1, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTransfer(Lwallet/core/jni/proto/Everscale$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1245
    iput-object p1, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneof_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1246
    iput p1, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneofCase_:I

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

    .line 1517
    sget-object p2, Lwallet/core/jni/proto/Everscale$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1562
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1556
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1541
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Everscale$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1543
    const-class p2, Lwallet/core/jni/proto/Everscale$SigningInput;

    monitor-enter p2

    .line 1544
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Everscale$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1546
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1549
    sput-object p1, Lwallet/core/jni/proto/Everscale$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1551
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

    .line 1538
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "actionOneof_"

    aput-object v0, p1, p3

    const-string p3, "actionOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1525
    const-class p3, Lwallet/core/jni/proto/Everscale$Transfer;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002\n"

    .line 1534
    sget-object p3, Lwallet/core/jni/proto/Everscale$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1522
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Everscale$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Everscale$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Everscale$1;)V

    return-object p1

    .line 1519
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Everscale$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Everscale$SigningInput;-><init>()V

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

.method public getActionOneofCase()Lwallet/core/jni/proto/Everscale$SigningInput$ActionOneofCase;
    .locals 1

    .line 1213
    iget v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$SigningInput$ActionOneofCase;->forNumber(I)Lwallet/core/jni/proto/Everscale$SigningInput$ActionOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1284
    iget-object v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Everscale$Transfer;
    .locals 2

    .line 1235
    iget v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1236
    iget-object v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object v0

    .line 1238
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Everscale$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Everscale$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasTransfer()Z
    .locals 2

    .line 1228
    iget v0, p0, Lwallet/core/jni/proto/Everscale$SigningInput;->actionOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
