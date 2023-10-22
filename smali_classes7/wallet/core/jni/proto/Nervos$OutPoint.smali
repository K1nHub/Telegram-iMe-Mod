.class public final Lwallet/core/jni/proto/Nervos$OutPoint;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$OutPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutPoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$OutPoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$OutPoint;",
        "Lwallet/core/jni/proto/Nervos$OutPoint$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$OutPointOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

.field public static final INDEX_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$OutPoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_HASH_FIELD_NUMBER:I = 0x1


# instance fields
.field private index_:I

.field private txHash_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2615
    new-instance v0, Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$OutPoint;-><init>()V

    .line 2618
    sput-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    .line 2619
    const-class v1, Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2299
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2300
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$OutPoint;->txHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3900()Lwallet/core/jni/proto/Nervos$OutPoint;
    .locals 1

    .line 2294
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object v0
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Nervos$OutPoint;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2294
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$OutPoint;->setTxHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Nervos$OutPoint;)V
    .locals 0

    .line 2294
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$OutPoint;->clearTxHash()V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Nervos$OutPoint;I)V
    .locals 0

    .line 2294
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$OutPoint;->setIndex(I)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Nervos$OutPoint;)V
    .locals 0

    .line 2294
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$OutPoint;->clearIndex()V

    return-void
.end method

.method private clearIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 2376
    iput v0, p0, Lwallet/core/jni/proto/Nervos$OutPoint;->index_:I

    return-void
.end method

.method private clearTxHash()V
    .locals 1

    .line 2338
    invoke-static {}, Lwallet/core/jni/proto/Nervos$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$OutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$OutPoint;->getTxHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$OutPoint;->txHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$OutPoint;
    .locals 1

    .line 2624
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$OutPoint$Builder;
    .locals 1

    .line 2454
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$OutPoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$OutPoint;)Lwallet/core/jni/proto/Nervos$OutPoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2457
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2431
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2437
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2395
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2402
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2442
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2449
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2419
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2426
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2382
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2389
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2407
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$OutPoint;
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

    .line 2414
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$OutPoint;",
            ">;"
        }
    .end annotation

    .line 2630
    sget-object v0, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2365
    iput p1, p0, Lwallet/core/jni/proto/Nervos$OutPoint;->index_:I

    return-void
.end method

.method private setTxHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2327
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$OutPoint;->txHash_:Lcom/google/protobuf/ByteString;

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

    .line 2565
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2608
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2602
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2587
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$OutPoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2589
    const-class p2, Lwallet/core/jni/proto/Nervos$OutPoint;

    monitor-enter p2

    .line 2590
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$OutPoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2592
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2595
    sput-object p1, Lwallet/core/jni/proto/Nervos$OutPoint;->PARSER:Lcom/google/protobuf/Parser;

    .line 2597
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

    .line 2584
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "txHash_"

    aput-object v0, p1, p3

    const-string p3, "index_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u000b"

    .line 2580
    sget-object p3, Lwallet/core/jni/proto/Nervos$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2570
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$OutPoint$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$OutPoint$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 2567
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$OutPoint;-><init>()V

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

.method public getIndex()I
    .locals 1

    .line 2353
    iget v0, p0, Lwallet/core/jni/proto/Nervos$OutPoint;->index_:I

    return v0
.end method

.method public getTxHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2314
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$OutPoint;->txHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
