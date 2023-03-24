.class public final Lwallet/core/jni/proto/Harmony$Decimal;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DecimalOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Decimal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Harmony$Decimal$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Harmony$Decimal;",
        "Lwallet/core/jni/proto/Harmony$Decimal$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DecimalOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$Decimal;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRECISION_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private precision_:Lcom/google/protobuf/ByteString;

.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4321
    new-instance v0, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-direct {v0}, Lwallet/core/jni/proto/Harmony$Decimal;-><init>()V

    .line 4324
    sput-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    .line 4325
    const-class v1, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4004
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4005
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Decimal;->value_:Lcom/google/protobuf/ByteString;

    .line 4006
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Decimal;->precision_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$8300()Lwallet/core/jni/proto/Harmony$Decimal;
    .locals 1

    .line 3999
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    return-object v0
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/Harmony$Decimal;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3999
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Decimal;->setValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0

    .line 3999
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$Decimal;->clearValue()V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/Harmony$Decimal;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3999
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Decimal;->setPrecision(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0

    .line 3999
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$Decimal;->clearPrecision()V

    return-void
.end method

.method private clearPrecision()V
    .locals 1

    .line 4083
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Decimal;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Decimal;->getPrecision()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Decimal;->precision_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 4044
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Decimal;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Decimal;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Decimal;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Harmony$Decimal;
    .locals 1

    .line 4330
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Harmony$Decimal$Builder;
    .locals 1

    .line 4161
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Harmony$Decimal$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$Decimal$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4164
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4138
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4144
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4102
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4109
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4149
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4156
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4126
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4133
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4089
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4096
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4114
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Decimal;
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

    .line 4121
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$Decimal;",
            ">;"
        }
    .end annotation

    .line 4336
    sget-object v0, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPrecision(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4070
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4072
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Decimal;->precision_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setValue(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4031
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4033
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Decimal;->value_:Lcom/google/protobuf/ByteString;

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

    .line 4272
    sget-object p2, Lwallet/core/jni/proto/Harmony$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4314
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4308
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4293
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Harmony$Decimal;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4295
    const-class p2, Lwallet/core/jni/proto/Harmony$Decimal;

    monitor-enter p2

    .line 4296
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Harmony$Decimal;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4298
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4301
    sput-object p1, Lwallet/core/jni/proto/Harmony$Decimal;->PARSER:Lcom/google/protobuf/Parser;

    .line 4303
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

    .line 4290
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "value_"

    aput-object v0, p1, p3

    const-string p3, "precision_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n"

    .line 4286
    sget-object p3, Lwallet/core/jni/proto/Harmony$Decimal;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4277
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Harmony$Decimal$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Harmony$Decimal$Builder;-><init>(Lwallet/core/jni/proto/Harmony$1;)V

    return-object p1

    .line 4274
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-direct {p1}, Lwallet/core/jni/proto/Harmony$Decimal;-><init>()V

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

.method public getPrecision()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4059
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Decimal;->precision_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4020
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Decimal;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
