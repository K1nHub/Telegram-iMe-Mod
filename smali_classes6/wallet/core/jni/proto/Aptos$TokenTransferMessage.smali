.class public final Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$TokenTransferMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenTransferMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Aptos$TokenTransferMessage;",
        "Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$TokenTransferMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

.field public static final FUNCTION_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$TokenTransferMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:J

.field private function_:Lwallet/core/jni/proto/Aptos$StructTag;

.field private to_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1690
    new-instance v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;-><init>()V

    .line 1693
    sput-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    .line 1694
    const-class v1, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1179
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1180
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->to_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1800()Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
    .locals 1

    .line 1174
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object v0
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;Ljava/lang/String;)V
    .locals 0

    .line 1174
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V
    .locals 0

    .line 1174
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->clearTo()V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1174
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;J)V
    .locals 0

    .line 1174
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->setAmount(J)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V
    .locals 0

    .line 1174
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->clearAmount()V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;Lwallet/core/jni/proto/Aptos$StructTag;)V
    .locals 0

    .line 1174
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->setFunction(Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;Lwallet/core/jni/proto/Aptos$StructTag;)V
    .locals 0

    .line 1174
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->mergeFunction(Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)V
    .locals 0

    .line 1174
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->clearFunction()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1284
    iput-wide v0, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->amount_:J

    return-void
.end method

.method private clearFunction()V
    .locals 1

    const/4 v0, 0x0

    .line 1349
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 1232
    invoke-static {}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->to_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
    .locals 1

    .line 1699
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object v0
.end method

.method private mergeFunction(Lwallet/core/jni/proto/Aptos$StructTag;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1333
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    if-eqz v0, :cond_0

    .line 1334
    invoke-static {}, Lwallet/core/jni/proto/Aptos$StructTag;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$StructTag;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1335
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    .line 1336
    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$StructTag;->newBuilder(Lwallet/core/jni/proto/Aptos$StructTag;)Lwallet/core/jni/proto/Aptos$StructTag$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$StructTag$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$StructTag;

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    goto :goto_0

    .line 1338
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    .locals 1

    .line 1428
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Aptos$TokenTransferMessage;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1431
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1405
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1411
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1369
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1376
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1416
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1423
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1393
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1400
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1356
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1363
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1381
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$TokenTransferMessage;
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

    .line 1388
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$TokenTransferMessage;",
            ">;"
        }
    .end annotation

    .line 1705
    sget-object v0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

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

    .line 1273
    iput-wide p1, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->amount_:J

    return-void
.end method

.method private setFunction(Lwallet/core/jni/proto/Aptos$StructTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1320
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    return-void
.end method

.method private setTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1221
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->to_:Ljava/lang/String;

    return-void
.end method

.method private setToBytes(Lcom/google/protobuf/ByteString;)V
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
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1245
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->to_:Ljava/lang/String;

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

    .line 1639
    sget-object p2, Lwallet/core/jni/proto/Aptos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1683
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1677
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1662
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1664
    const-class p2, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    monitor-enter p2

    .line 1665
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1667
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1670
    sput-object p1, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1672
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

    .line 1659
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "to_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "function_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0003\u0003\t"

    .line 1655
    sget-object p3, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1644
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage$Builder;-><init>(Lwallet/core/jni/proto/Aptos$1;)V

    return-object p1

    .line 1641
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 1261
    iget-wide v0, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->amount_:J

    return-wide v0
.end method

.method public getFunction()Lwallet/core/jni/proto/Aptos$StructTag;
    .locals 1

    .line 1309
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Aptos$StructTag;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$StructTag;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1194
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1207
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasFunction()Z
    .locals 1

    .line 1298
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$TokenTransferMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
