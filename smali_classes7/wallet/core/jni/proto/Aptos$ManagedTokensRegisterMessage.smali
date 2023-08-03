.class public final Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManagedTokensRegisterMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;",
        "Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessageOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

.field public static final FUNCTION_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private function_:Lwallet/core/jni/proto/Aptos$StructTag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2037
    new-instance v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;-><init>()V

    .line 2040
    sput-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    .line 2041
    const-class v1, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1744
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$2800()Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
    .locals 1

    .line 1739
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object v0
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;Lwallet/core/jni/proto/Aptos$StructTag;)V
    .locals 0

    .line 1739
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->setFunction(Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;Lwallet/core/jni/proto/Aptos$StructTag;)V
    .locals 0

    .line 1739
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->mergeFunction(Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)V
    .locals 0

    .line 1739
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->clearFunction()V

    return-void
.end method

.method private clearFunction()V
    .locals 1

    const/4 v0, 0x0

    .line 1808
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
    .locals 1

    .line 2046
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

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

    .line 1791
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1792
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    if-eqz v0, :cond_0

    .line 1793
    invoke-static {}, Lwallet/core/jni/proto/Aptos$StructTag;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$StructTag;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1794
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    .line 1795
    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$StructTag;->newBuilder(Lwallet/core/jni/proto/Aptos$StructTag;)Lwallet/core/jni/proto/Aptos$StructTag$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$StructTag$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$StructTag;

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    goto :goto_0

    .line 1797
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;
    .locals 1

    .line 1887
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1890
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1864
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1870
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1828
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1835
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1875
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1882
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1852
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1859
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1815
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1822
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1840
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
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

    .line 1847
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;",
            ">;"
        }
    .end annotation

    .line 2052
    sget-object v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 1778
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1779
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

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

    .line 1989
    sget-object p2, Lwallet/core/jni/proto/Aptos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2030
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2024
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2009
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2011
    const-class p2, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    monitor-enter p2

    .line 2012
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2014
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2017
    sput-object p1, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 2019
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

    .line 2006
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "function_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    .line 2002
    sget-object p3, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1994
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;-><init>(Lwallet/core/jni/proto/Aptos$1;)V

    return-object p1

    .line 1991
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;-><init>()V

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

.method public getFunction()Lwallet/core/jni/proto/Aptos$StructTag;
    .locals 1

    .line 1768
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Aptos$StructTag;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$StructTag;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasFunction()Z
    .locals 1

    .line 1757
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->function_:Lwallet/core/jni/proto/Aptos$StructTag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
