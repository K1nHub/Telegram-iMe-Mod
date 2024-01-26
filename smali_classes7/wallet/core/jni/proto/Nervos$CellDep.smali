.class public final Lwallet/core/jni/proto/Nervos$CellDep;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$CellDepOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellDep"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$CellDep$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$CellDep;",
        "Lwallet/core/jni/proto/Nervos$CellDep$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$CellDepOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

.field public static final DEP_TYPE_FIELD_NUMBER:I = 0x1

.field public static final OUT_POINT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$CellDep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private depType_:Ljava/lang/String;

.field private outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2244
    new-instance v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$CellDep;-><init>()V

    .line 2247
    sput-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    .line 2248
    const-class v1, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1812
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1813
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$CellDep;->depType_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3100()Lwallet/core/jni/proto/Nervos$CellDep;
    .locals 1

    .line 1807
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    return-object v0
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Nervos$CellDep;Ljava/lang/String;)V
    .locals 0

    .line 1807
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$CellDep;->setDepType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Nervos$CellDep;)V
    .locals 0

    .line 1807
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$CellDep;->clearDepType()V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Nervos$CellDep;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1807
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$CellDep;->setDepTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Nervos$CellDep;Lwallet/core/jni/proto/Nervos$OutPoint;)V
    .locals 0

    .line 1807
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$CellDep;->setOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Nervos$CellDep;Lwallet/core/jni/proto/Nervos$OutPoint;)V
    .locals 0

    .line 1807
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$CellDep;->mergeOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Nervos$CellDep;)V
    .locals 0

    .line 1807
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$CellDep;->clearOutPoint()V

    return-void
.end method

.method private clearDepType()V
    .locals 1

    .line 1865
    invoke-static {}, Lwallet/core/jni/proto/Nervos$CellDep;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$CellDep;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$CellDep;->getDepType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$CellDep;->depType_:Ljava/lang/String;

    return-void
.end method

.method private clearOutPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 1944
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$CellDep;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$CellDep;
    .locals 1

    .line 2253
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    return-object v0
.end method

.method private mergeOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1927
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1928
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellDep;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    if-eqz v0, :cond_0

    .line 1929
    invoke-static {}, Lwallet/core/jni/proto/Nervos$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$OutPoint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1930
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellDep;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    .line 1931
    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$OutPoint;->newBuilder(Lwallet/core/jni/proto/Nervos$OutPoint;)Lwallet/core/jni/proto/Nervos$OutPoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$OutPoint$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$OutPoint;

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$CellDep;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    goto :goto_0

    .line 1933
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$CellDep;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$CellDep$Builder;
    .locals 1

    .line 2023
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$CellDep;)Lwallet/core/jni/proto/Nervos$CellDep$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2026
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 2000
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 2006
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 1964
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 1971
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 2011
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 2018
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 1988
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 1995
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 1951
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 1958
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 1976
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellDep;
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

    .line 1983
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$CellDep;",
            ">;"
        }
    .end annotation

    .line 2259
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDepType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1852
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1854
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$CellDep;->depType_:Ljava/lang/String;

    return-void
.end method

.method private setDepTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1877
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1878
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$CellDep;->depType_:Ljava/lang/String;

    return-void
.end method

.method private setOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1914
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1915
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$CellDep;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

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

    .line 2194
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2237
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2231
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2216
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$CellDep;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2218
    const-class p2, Lwallet/core/jni/proto/Nervos$CellDep;

    monitor-enter p2

    .line 2219
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$CellDep;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2221
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2224
    sput-object p1, Lwallet/core/jni/proto/Nervos$CellDep;->PARSER:Lcom/google/protobuf/Parser;

    .line 2226
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

    .line 2213
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "depType_"

    aput-object v0, p1, p3

    const-string p3, "outPoint_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    .line 2209
    sget-object p3, Lwallet/core/jni/proto/Nervos$CellDep;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2199
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$CellDep$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$CellDep$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 2196
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$CellDep;-><init>()V

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

.method public getDepType()Ljava/lang/String;
    .locals 1

    .line 1827
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellDep;->depType_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1840
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellDep;->depType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOutPoint()Lwallet/core/jni/proto/Nervos$OutPoint;
    .locals 1

    .line 1904
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellDep;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Nervos$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$OutPoint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasOutPoint()Z
    .locals 1

    .line 1893
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellDep;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
