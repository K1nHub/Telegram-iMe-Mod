.class public final Lwallet/core/jni/proto/Waves$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Waves.java"

# interfaces
.implements Lwallet/core/jni/proto/Waves$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Waves$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Waves$SigningOutput;",
        "Lwallet/core/jni/proto/Waves$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Waves$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

.field public static final JSON_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Waves$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x1


# instance fields
.field private json_:Ljava/lang/String;

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3093
    new-instance v0, Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Waves$SigningOutput;-><init>()V

    .line 3096
    sput-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    .line 3097
    const-class v1, Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2718
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2719
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 2720
    iput-object v0, p0, Lwallet/core/jni/proto/Waves$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4900()Lwallet/core/jni/proto/Waves$SigningOutput;
    .locals 1

    .line 2713
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object v0
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Waves$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2713
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$SigningOutput;->setSignature(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Waves$SigningOutput;)V
    .locals 0

    .line 2713
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$SigningOutput;->clearSignature()V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Waves$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 2713
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$SigningOutput;->setJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Waves$SigningOutput;)V
    .locals 0

    .line 2713
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$SigningOutput;->clearJson()V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Waves$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2713
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$SigningOutput;->setJsonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearJson()V
    .locals 1

    .line 2811
    invoke-static {}, Lwallet/core/jni/proto/Waves$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Waves$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private clearSignature()V
    .locals 1

    .line 2758
    invoke-static {}, Lwallet/core/jni/proto/Waves$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Waves$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Waves$SigningOutput;
    .locals 1

    .line 3102
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Waves$SigningOutput$Builder;
    .locals 1

    .line 2903
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Waves$SigningOutput;)Lwallet/core/jni/proto/Waves$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2906
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2880
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2886
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2844
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2851
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2891
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2898
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2868
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2875
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2831
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2838
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2856
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningOutput;
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

    .line 2863
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Waves$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 3108
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setJson(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2800
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private setJsonBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2823
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2824
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private setSignature(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2745
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2747
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

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

    .line 3043
    sget-object p2, Lwallet/core/jni/proto/Waves$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3086
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3080
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3065
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Waves$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3067
    const-class p2, Lwallet/core/jni/proto/Waves$SigningOutput;

    monitor-enter p2

    .line 3068
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Waves$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3070
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3073
    sput-object p1, Lwallet/core/jni/proto/Waves$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 3075
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

    .line 3062
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "signature_"

    aput-object v0, p1, p3

    const-string p3, "json_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u0208"

    .line 3058
    sget-object p3, Lwallet/core/jni/proto/Waves$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3048
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Waves$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Waves$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Waves$1;)V

    return-object p1

    .line 3045
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Waves$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Waves$SigningOutput;-><init>()V

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

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 2773
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningOutput;->json_:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2786
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningOutput;->json_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2734
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
