.class public final Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Zilliqa.java"

# interfaces
.implements Lwallet/core/jni/proto/Zilliqa$Transaction$RawOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Zilliqa$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Raw"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$RawOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x1

.field public static final CODE_FIELD_NUMBER:I = 0x2

.field public static final DATA_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private code_:Lcom/google/protobuf/ByteString;

.field private data_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 779
    new-instance v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-direct {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;-><init>()V

    .line 782
    sput-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    .line 783
    const-class v1, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 380
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 381
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->amount_:Lcom/google/protobuf/ByteString;

    .line 382
    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->code_:Lcom/google/protobuf/ByteString;

    .line 383
    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V
    .locals 0

    .line 375
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->clearData()V

    return-void
.end method

.method static synthetic access$400()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
    .locals 1

    .line 375
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object v0
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V
    .locals 0

    .line 375
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->clearAmount()V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->setCode(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V
    .locals 0

    .line 375
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->clearCode()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->setData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 421
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCode()V
    .locals 1

    .line 460
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->getCode()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->code_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 499
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
    .locals 1

    .line 788
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;
    .locals 1

    .line 577
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 580
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 554
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 560
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 518
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 525
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 565
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 572
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 542
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 549
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 505
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 512
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 530
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
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

    .line 537
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;",
            ">;"
        }
    .end annotation

    .line 794
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

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

    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCode(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 447
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->code_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setData(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->data_:Lcom/google/protobuf/ByteString;

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

    .line 728
    sget-object p2, Lwallet/core/jni/proto/Zilliqa$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 772
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 766
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 751
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 753
    const-class p2, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    monitor-enter p2

    .line 754
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 756
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 759
    sput-object p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->PARSER:Lcom/google/protobuf/Parser;

    .line 761
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

    .line 748
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "amount_"

    aput-object v0, p1, p3

    const-string p3, "code_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "data_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n"

    .line 744
    sget-object p3, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 733
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;-><init>(Lwallet/core/jni/proto/Zilliqa$1;)V

    return-object p1

    .line 730
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-direct {p1}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;-><init>()V

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

    .line 397
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCode()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 436
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->code_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 475
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
