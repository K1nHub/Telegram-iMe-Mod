.class public final Lwallet/core/jni/proto/Stellar$MemoHash;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$MemoHashOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoHash"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Stellar$MemoHash$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Stellar$MemoHash;",
        "Lwallet/core/jni/proto/Stellar$MemoHash$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$MemoHashOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

.field public static final HASH_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$MemoHash;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hash_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4581
    new-instance v0, Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-direct {v0}, Lwallet/core/jni/proto/Stellar$MemoHash;-><init>()V

    .line 4584
    sput-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    .line 4585
    const-class v1, Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4369
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4370
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$MemoHash;->hash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$6800()Lwallet/core/jni/proto/Stellar$MemoHash;
    .locals 1

    .line 4364
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object v0
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/Stellar$MemoHash;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4364
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$MemoHash;->setHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/Stellar$MemoHash;)V
    .locals 0

    .line 4364
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$MemoHash;->clearHash()V

    return-void
.end method

.method private clearHash()V
    .locals 1

    .line 4396
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoHash;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoHash;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$MemoHash;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$MemoHash;->hash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoHash;
    .locals 1

    .line 4590
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Stellar$MemoHash$Builder;
    .locals 1

    .line 4474
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoHash$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Stellar$MemoHash;)Lwallet/core/jni/proto/Stellar$MemoHash$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4477
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4451
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4457
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4415
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4422
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4462
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4469
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4439
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4446
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4402
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4409
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4427
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoHash;
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

    .line 4434
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$MemoHash;",
            ">;"
        }
    .end annotation

    .line 4596
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4389
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$MemoHash;->hash_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 4533
    sget-object p2, Lwallet/core/jni/proto/Stellar$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4574
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4568
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4553
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Stellar$MemoHash;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4555
    const-class p2, Lwallet/core/jni/proto/Stellar$MemoHash;

    monitor-enter p2

    .line 4556
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Stellar$MemoHash;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4558
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4561
    sput-object p1, Lwallet/core/jni/proto/Stellar$MemoHash;->PARSER:Lcom/google/protobuf/Parser;

    .line 4563
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

    .line 4550
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "hash_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n"

    .line 4546
    sget-object p3, Lwallet/core/jni/proto/Stellar$MemoHash;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4538
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Stellar$MemoHash$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Stellar$MemoHash$Builder;-><init>(Lwallet/core/jni/proto/Stellar$1;)V

    return-object p1

    .line 4535
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Stellar$MemoHash;

    invoke-direct {p1}, Lwallet/core/jni/proto/Stellar$MemoHash;-><init>()V

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

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4380
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$MemoHash;->hash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
