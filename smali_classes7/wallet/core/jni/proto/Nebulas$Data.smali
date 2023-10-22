.class public final Lwallet/core/jni/proto/Nebulas$Data;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nebulas.java"

# interfaces
.implements Lwallet/core/jni/proto/Nebulas$DataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nebulas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nebulas$Data$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nebulas$Data;",
        "Lwallet/core/jni/proto/Nebulas$Data$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nebulas$DataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nebulas$Data;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private payload_:Lcom/google/protobuf/ByteString;

.field private type_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2187
    new-instance v0, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nebulas$Data;-><init>()V

    .line 2190
    sput-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    .line 2191
    const-class v1, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1876
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1877
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$Data;->type_:Ljava/lang/String;

    .line 1878
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$Data;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3400()Lwallet/core/jni/proto/Nebulas$Data;
    .locals 1

    .line 1871
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    return-object v0
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Nebulas$Data;Ljava/lang/String;)V
    .locals 0

    .line 1871
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$Data;->setType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Nebulas$Data;)V
    .locals 0

    .line 1871
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$Data;->clearType()V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Nebulas$Data;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1871
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$Data;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Nebulas$Data;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1871
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$Data;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Nebulas$Data;)V
    .locals 0

    .line 1871
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$Data;->clearPayload()V

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 1951
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$Data;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$Data;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$Data;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$Data;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearType()V
    .locals 1

    .line 1914
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$Data;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$Data;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$Data;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$Data;->type_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nebulas$Data;
    .locals 1

    .line 2196
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nebulas$Data$Builder;
    .locals 1

    .line 2029
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nebulas$Data$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nebulas$Data;)Lwallet/core/jni/proto/Nebulas$Data$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2032
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 2006
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 2012
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 1970
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 1977
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 2017
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 2024
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 1994
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 2001
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 1957
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 1964
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 1982
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$Data;
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

    .line 1989
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$Data;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nebulas$Data;",
            ">;"
        }
    .end annotation

    .line 2202
    sget-object v0, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPayload(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1942
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1944
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$Data;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1905
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1907
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$Data;->type_:Ljava/lang/String;

    return-void
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1922
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1923
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$Data;->type_:Ljava/lang/String;

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

    .line 2137
    sget-object p2, Lwallet/core/jni/proto/Nebulas$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2180
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2174
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2159
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nebulas$Data;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2161
    const-class p2, Lwallet/core/jni/proto/Nebulas$Data;

    monitor-enter p2

    .line 2162
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nebulas$Data;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2164
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2167
    sput-object p1, Lwallet/core/jni/proto/Nebulas$Data;->PARSER:Lcom/google/protobuf/Parser;

    .line 2169
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

    .line 2156
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "type_"

    aput-object v0, p1, p3

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\n"

    .line 2152
    sget-object p3, Lwallet/core/jni/proto/Nebulas$Data;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$Data;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2142
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nebulas$Data$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nebulas$Data$Builder;-><init>(Lwallet/core/jni/proto/Nebulas$1;)V

    return-object p1

    .line 2139
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nebulas$Data;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nebulas$Data;-><init>()V

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

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1935
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$Data;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1888
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$Data;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1897
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$Data;->type_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
