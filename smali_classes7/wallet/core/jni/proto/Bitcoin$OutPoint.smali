.class public final Lwallet/core/jni/proto/Bitcoin$OutPoint;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$OutPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutPoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Bitcoin$OutPoint;",
        "Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$OutPointOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

.field public static final HASH_FIELD_NUMBER:I = 0x1

.field public static final INDEX_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$OutPoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x3


# instance fields
.field private hash_:Lcom/google/protobuf/ByteString;

.field private index_:I

.field private sequence_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1983
    new-instance v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-direct {v0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;-><init>()V

    .line 1986
    sput-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    .line 1987
    const-class v1, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1588
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1589
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->hash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2700()Lwallet/core/jni/proto/Bitcoin$OutPoint;
    .locals 1

    .line 1583
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object v0
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Bitcoin$OutPoint;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1583
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->setHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V
    .locals 0

    .line 1583
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->clearHash()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Bitcoin$OutPoint;I)V
    .locals 0

    .line 1583
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->setIndex(I)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V
    .locals 0

    .line 1583
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->clearIndex()V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Bitcoin$OutPoint;I)V
    .locals 0

    .line 1583
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->setSequence(I)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V
    .locals 0

    .line 1583
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->clearSequence()V

    return-void
.end method

.method private clearHash()V
    .locals 1

    .line 1627
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$OutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->hash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 1665
    iput v0, p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->index_:I

    return-void
.end method

.method private clearSequence()V
    .locals 1

    const/4 v0, 0x0

    .line 1703
    iput v0, p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->sequence_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$OutPoint;
    .locals 1

    .line 1992
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;
    .locals 1

    .line 1781
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Bitcoin$OutPoint;)Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1784
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1758
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1764
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1722
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1729
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1769
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1776
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1746
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1753
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1709
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1716
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1734
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$OutPoint;
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

    .line 1741
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$OutPoint;",
            ">;"
        }
    .end annotation

    .line 1998
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

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

    .line 1614
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1616
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->hash_:Lcom/google/protobuf/ByteString;

    return-void
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

    .line 1654
    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->index_:I

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

    .line 1692
    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->sequence_:I

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

    .line 1932
    sget-object p2, Lwallet/core/jni/proto/Bitcoin$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1976
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1970
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1955
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$OutPoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1957
    const-class p2, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    monitor-enter p2

    .line 1958
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$OutPoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1960
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1963
    sput-object p1, Lwallet/core/jni/proto/Bitcoin$OutPoint;->PARSER:Lcom/google/protobuf/Parser;

    .line 1965
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

    .line 1952
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "hash_"

    aput-object v0, p1, p3

    const-string p3, "index_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "sequence_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\u000b\u0003\u000b"

    .line 1948
    sget-object p3, Lwallet/core/jni/proto/Bitcoin$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1937
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;-><init>(Lwallet/core/jni/proto/Bitcoin$1;)V

    return-object p1

    .line 1934
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-direct {p1}, Lwallet/core/jni/proto/Bitcoin$OutPoint;-><init>()V

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

    .line 1603
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->hash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1642
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->index_:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .line 1680
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$OutPoint;->sequence_:I

    return v0
.end method
