.class public final Lwallet/core/jni/proto/Harmony$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Harmony$SigningOutput;",
        "Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

.field public static final ENCODED_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final R_FIELD_NUMBER:I = 0x3

.field public static final S_FIELD_NUMBER:I = 0x4

.field public static final V_FIELD_NUMBER:I = 0x2


# instance fields
.field private encoded_:Lcom/google/protobuf/ByteString;

.field private r_:Lcom/google/protobuf/ByteString;

.field private s_:Lcom/google/protobuf/ByteString;

.field private v_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1143
    new-instance v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;-><init>()V

    .line 1146
    sput-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    .line 1147
    const-class v1, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 711
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 712
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    .line 713
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->v_:Lcom/google/protobuf/ByteString;

    .line 714
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->r_:Lcom/google/protobuf/ByteString;

    .line 715
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->s_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1300()Lwallet/core/jni/proto/Harmony$SigningOutput;
    .locals 1

    .line 706
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object v0
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Harmony$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 706
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$SigningOutput;->setEncoded(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Harmony$SigningOutput;)V
    .locals 0

    .line 706
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->clearEncoded()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Harmony$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 706
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$SigningOutput;->setV(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Harmony$SigningOutput;)V
    .locals 0

    .line 706
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->clearV()V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Harmony$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 706
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$SigningOutput;->setR(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Harmony$SigningOutput;)V
    .locals 0

    .line 706
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->clearR()V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Harmony$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 706
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$SigningOutput;->setS(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Harmony$SigningOutput;)V
    .locals 0

    .line 706
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->clearS()V

    return-void
.end method

.method private clearEncoded()V
    .locals 1

    .line 753
    invoke-static {}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearR()V
    .locals 1

    .line 819
    invoke-static {}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getR()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->r_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearS()V
    .locals 1

    .line 846
    invoke-static {}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getS()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->s_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearV()V
    .locals 1

    .line 792
    invoke-static {}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getV()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->v_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Harmony$SigningOutput;
    .locals 1

    .line 1152
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
    .locals 1

    .line 924
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Harmony$SigningOutput;)Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 927
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 901
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 907
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 865
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 872
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 912
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 919
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 889
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 896
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 852
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 859
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 877
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$SigningOutput;
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

    .line 884
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 1158
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEncoded(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 740
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 742
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setR(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 810
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->r_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setS(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 837
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 839
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->s_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setV(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 779
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 781
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->v_:Lcom/google/protobuf/ByteString;

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

    .line 1091
    sget-object p2, Lwallet/core/jni/proto/Harmony$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1136
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1130
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1115
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Harmony$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1117
    const-class p2, Lwallet/core/jni/proto/Harmony$SigningOutput;

    monitor-enter p2

    .line 1118
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Harmony$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1120
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1123
    sput-object p1, Lwallet/core/jni/proto/Harmony$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1125
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

    .line 1112
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "encoded_"

    aput-object v0, p1, p3

    const-string p3, "v_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "r_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "s_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\n"

    .line 1108
    sget-object p3, Lwallet/core/jni/proto/Harmony$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1096
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Harmony$1;)V

    return-object p1

    .line 1093
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Harmony$SigningOutput;-><init>()V

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

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 729
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getR()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 803
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->r_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getS()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 830
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->s_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getV()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 768
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$SigningOutput;->v_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
