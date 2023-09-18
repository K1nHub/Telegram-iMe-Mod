.class public final Lwallet/core/jni/proto/Nervos$CellOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$CellOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$CellOutput;",
        "Lwallet/core/jni/proto/Nervos$CellOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$CellOutputOrBuilder;"
    }
.end annotation


# static fields
.field public static final CAPACITY_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

.field public static final LOCK_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$CellOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x3


# instance fields
.field private capacity_:J

.field private lock_:Lwallet/core/jni/proto/Nervos$Script;

.field private type_:Lwallet/core/jni/proto/Nervos$Script;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3209
    new-instance v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$CellOutput;-><init>()V

    .line 3212
    sput-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    .line 3213
    const-class v1, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2698
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$4500()Lwallet/core/jni/proto/Nervos$CellOutput;
    .locals 1

    .line 2693
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object v0
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Nervos$CellOutput;J)V
    .locals 0

    .line 2693
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$CellOutput;->setCapacity(J)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Nervos$CellOutput;)V
    .locals 0

    .line 2693
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$CellOutput;->clearCapacity()V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Nervos$CellOutput;Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0

    .line 2693
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$CellOutput;->setLock(Lwallet/core/jni/proto/Nervos$Script;)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Nervos$CellOutput;Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0

    .line 2693
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$CellOutput;->mergeLock(Lwallet/core/jni/proto/Nervos$Script;)V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Nervos$CellOutput;)V
    .locals 0

    .line 2693
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$CellOutput;->clearLock()V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Nervos$CellOutput;Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0

    .line 2693
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$CellOutput;->setType(Lwallet/core/jni/proto/Nervos$Script;)V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Nervos$CellOutput;Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0

    .line 2693
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$CellOutput;->mergeType(Lwallet/core/jni/proto/Nervos$Script;)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Nervos$CellOutput;)V
    .locals 0

    .line 2693
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$CellOutput;->clearType()V

    return-void
.end method

.method private clearCapacity()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2735
    iput-wide v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->capacity_:J

    return-void
.end method

.method private clearLock()V
    .locals 1

    const/4 v0, 0x0

    .line 2800
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 2866
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->type_:Lwallet/core/jni/proto/Nervos$Script;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$CellOutput;
    .locals 1

    .line 3218
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object v0
.end method

.method private mergeLock(Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2783
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2784
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    if-eqz v0, :cond_0

    .line 2785
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2786
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    .line 2787
    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Script;->newBuilder(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$Script$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script;

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    goto :goto_0

    .line 2789
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    :goto_0
    return-void
.end method

.method private mergeType(Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2849
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2850
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->type_:Lwallet/core/jni/proto/Nervos$Script;

    if-eqz v0, :cond_0

    .line 2851
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2852
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->type_:Lwallet/core/jni/proto/Nervos$Script;

    .line 2853
    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Script;->newBuilder(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$Script$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script;

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->type_:Lwallet/core/jni/proto/Nervos$Script;

    goto :goto_0

    .line 2855
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->type_:Lwallet/core/jni/proto/Nervos$Script;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1

    .line 2945
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$CellOutput;)Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2948
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2922
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2928
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2886
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2893
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2933
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2940
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2910
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2917
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2873
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2880
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2898
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$CellOutput;
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

    .line 2905
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$CellOutput;",
            ">;"
        }
    .end annotation

    .line 3224
    sget-object v0, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCapacity(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2724
    iput-wide p1, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->capacity_:J

    return-void
.end method

.method private setLock(Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2770
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2771
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    return-void
.end method

.method private setType(Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2837
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->type_:Lwallet/core/jni/proto/Nervos$Script;

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

    .line 3158
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3202
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3196
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3181
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$CellOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3183
    const-class p2, Lwallet/core/jni/proto/Nervos$CellOutput;

    monitor-enter p2

    .line 3184
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$CellOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3186
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3189
    sput-object p1, Lwallet/core/jni/proto/Nervos$CellOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 3191
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

    .line 3178
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "capacity_"

    aput-object v0, p1, p3

    const-string p3, "lock_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "type_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0003\u0002\t\u0003\t"

    .line 3174
    sget-object p3, Lwallet/core/jni/proto/Nervos$CellOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3163
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$CellOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$CellOutput$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 3160
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$CellOutput;-><init>()V

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

.method public getCapacity()J
    .locals 2

    .line 2712
    iget-wide v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->capacity_:J

    return-wide v0
.end method

.method public getLock()Lwallet/core/jni/proto/Nervos$Script;
    .locals 1

    .line 2760
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getType()Lwallet/core/jni/proto/Nervos$Script;
    .locals 1

    .line 2826
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->type_:Lwallet/core/jni/proto/Nervos$Script;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasLock()Z
    .locals 1

    .line 2749
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 2815
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$CellOutput;->type_:Lwallet/core/jni/proto/Nervos$Script;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
