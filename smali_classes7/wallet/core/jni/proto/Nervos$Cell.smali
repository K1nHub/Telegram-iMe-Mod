.class public final Lwallet/core/jni/proto/Nervos$Cell;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$CellOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$Cell$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$Cell;",
        "Lwallet/core/jni/proto/Nervos$Cell$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$CellOrBuilder;"
    }
.end annotation


# static fields
.field public static final BLOCK_HASH_FIELD_NUMBER:I = 0x7

.field public static final BLOCK_NUMBER_FIELD_NUMBER:I = 0x6

.field public static final CAPACITY_FIELD_NUMBER:I = 0x2

.field public static final DATA_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

.field public static final INPUT_TYPE_FIELD_NUMBER:I = 0x9

.field public static final LOCK_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_TYPE_FIELD_NUMBER:I = 0xa

.field public static final OUT_POINT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$Cell;",
            ">;"
        }
    .end annotation
.end field

.field public static final SINCE_FIELD_NUMBER:I = 0x8

.field public static final TYPE_FIELD_NUMBER:I = 0x4


# instance fields
.field private blockHash_:Lcom/google/protobuf/ByteString;

.field private blockNumber_:J

.field private capacity_:J

.field private data_:Lcom/google/protobuf/ByteString;

.field private inputType_:Lcom/google/protobuf/ByteString;

.field private lock_:Lwallet/core/jni/proto/Nervos$Script;

.field private outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

.field private outputType_:Lcom/google/protobuf/ByteString;

.field private since_:J

.field private type_:Lwallet/core/jni/proto/Nervos$Script;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9840
    new-instance v0, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$Cell;-><init>()V

    .line 9843
    sput-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    .line 9844
    const-class v1, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8709
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8710
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->data_:Lcom/google/protobuf/ByteString;

    .line 8711
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->blockHash_:Lcom/google/protobuf/ByteString;

    .line 8712
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->inputType_:Lcom/google/protobuf/ByteString;

    .line 8713
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->outputType_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$15200()Lwallet/core/jni/proto/Nervos$Cell;
    .locals 1

    .line 8704
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    return-object v0
.end method

.method static synthetic access$15300(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$OutPoint;)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->setOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-void
.end method

.method static synthetic access$15400(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$OutPoint;)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->mergeOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-void
.end method

.method static synthetic access$15500(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 8704
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Cell;->clearOutPoint()V

    return-void
.end method

.method static synthetic access$15600(Lwallet/core/jni/proto/Nervos$Cell;J)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$Cell;->setCapacity(J)V

    return-void
.end method

.method static synthetic access$15700(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 8704
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Cell;->clearCapacity()V

    return-void
.end method

.method static synthetic access$15800(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->setLock(Lwallet/core/jni/proto/Nervos$Script;)V

    return-void
.end method

.method static synthetic access$15900(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->mergeLock(Lwallet/core/jni/proto/Nervos$Script;)V

    return-void
.end method

.method static synthetic access$16000(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 8704
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Cell;->clearLock()V

    return-void
.end method

.method static synthetic access$16100(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->setType(Lwallet/core/jni/proto/Nervos$Script;)V

    return-void
.end method

.method static synthetic access$16200(Lwallet/core/jni/proto/Nervos$Cell;Lwallet/core/jni/proto/Nervos$Script;)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->mergeType(Lwallet/core/jni/proto/Nervos$Script;)V

    return-void
.end method

.method static synthetic access$16300(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 8704
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Cell;->clearType()V

    return-void
.end method

.method static synthetic access$16400(Lwallet/core/jni/proto/Nervos$Cell;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->setData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16500(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 8704
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Cell;->clearData()V

    return-void
.end method

.method static synthetic access$16600(Lwallet/core/jni/proto/Nervos$Cell;J)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$Cell;->setBlockNumber(J)V

    return-void
.end method

.method static synthetic access$16700(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 8704
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Cell;->clearBlockNumber()V

    return-void
.end method

.method static synthetic access$16800(Lwallet/core/jni/proto/Nervos$Cell;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->setBlockHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16900(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 8704
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Cell;->clearBlockHash()V

    return-void
.end method

.method static synthetic access$17000(Lwallet/core/jni/proto/Nervos$Cell;J)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$Cell;->setSince(J)V

    return-void
.end method

.method static synthetic access$17100(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 8704
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Cell;->clearSince()V

    return-void
.end method

.method static synthetic access$17200(Lwallet/core/jni/proto/Nervos$Cell;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->setInputType(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17300(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 8704
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Cell;->clearInputType()V

    return-void
.end method

.method static synthetic access$17400(Lwallet/core/jni/proto/Nervos$Cell;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8704
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$Cell;->setOutputType(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17500(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 8704
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Cell;->clearOutputType()V

    return-void
.end method

.method private clearBlockHash()V
    .locals 1

    .line 9064
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Cell;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->blockHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearBlockNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9025
    iput-wide v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->blockNumber_:J

    return-void
.end method

.method private clearCapacity()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8816
    iput-wide v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->capacity_:J

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 8987
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Cell;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearInputType()V
    .locals 1

    .line 9141
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Cell;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getInputType()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->inputType_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearLock()V
    .locals 1

    const/4 v0, 0x0

    .line 8881
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    return-void
.end method

.method private clearOutPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 8777
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    return-void
.end method

.method private clearOutputType()V
    .locals 1

    .line 9180
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Cell;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Cell;->getOutputType()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->outputType_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSince()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9102
    iput-wide v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->since_:J

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 8947
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->type_:Lwallet/core/jni/proto/Nervos$Script;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$Cell;
    .locals 1

    .line 9849
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

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

    .line 8864
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8865
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    if-eqz v0, :cond_0

    .line 8866
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8867
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    .line 8868
    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Script;->newBuilder(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$Script$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script;

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    goto :goto_0

    .line 8870
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    :goto_0
    return-void
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

    .line 8760
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8761
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    if-eqz v0, :cond_0

    .line 8762
    invoke-static {}, Lwallet/core/jni/proto/Nervos$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$OutPoint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8763
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    .line 8764
    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$OutPoint;->newBuilder(Lwallet/core/jni/proto/Nervos$OutPoint;)Lwallet/core/jni/proto/Nervos$OutPoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$OutPoint$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$OutPoint;

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    goto :goto_0

    .line 8766
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

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

    .line 8930
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8931
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->type_:Lwallet/core/jni/proto/Nervos$Script;

    if-eqz v0, :cond_0

    .line 8932
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8933
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->type_:Lwallet/core/jni/proto/Nervos$Script;

    .line 8934
    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Script;->newBuilder(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$Script$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script;

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->type_:Lwallet/core/jni/proto/Nervos$Script;

    goto :goto_0

    .line 8936
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->type_:Lwallet/core/jni/proto/Nervos$Script;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1

    .line 9258
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$Cell$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$Cell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 9261
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9235
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9241
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9199
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9206
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9246
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9253
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9223
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9230
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9186
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9193
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9211
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$Cell;
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

    .line 9218
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$Cell;",
            ">;"
        }
    .end annotation

    .line 9855
    sget-object v0, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBlockHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9051
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9053
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->blockHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setBlockNumber(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9014
    iput-wide p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->blockNumber_:J

    return-void
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

    .line 8805
    iput-wide p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->capacity_:J

    return-void
.end method

.method private setData(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8974
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8976
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setInputType(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9130
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->inputType_:Lcom/google/protobuf/ByteString;

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

    .line 8851
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8852
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->lock_:Lwallet/core/jni/proto/Nervos$Script;

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

    .line 8747
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8748
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    return-void
.end method

.method private setOutputType(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9169
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->outputType_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSince(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9091
    iput-wide p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->since_:J

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

    .line 8917
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8918
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$Cell;->type_:Lwallet/core/jni/proto/Nervos$Script;

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

    .line 9782
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9833
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 9827
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9812
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$Cell;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 9814
    const-class p2, Lwallet/core/jni/proto/Nervos$Cell;

    monitor-enter p2

    .line 9815
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$Cell;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 9817
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9820
    sput-object p1, Lwallet/core/jni/proto/Nervos$Cell;->PARSER:Lcom/google/protobuf/Parser;

    .line 9822
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

    .line 9809
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "outPoint_"

    aput-object v0, p1, p3

    const-string p3, "capacity_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "lock_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "type_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "data_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "blockNumber_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "blockHash_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "since_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "inputType_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "outputType_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\t\u0002\u0003\u0003\t\u0004\t\u0005\n\u0006\u0003\u0007\n\u0008\u0003\t\n\n\n"

    .line 9805
    sget-object p3, Lwallet/core/jni/proto/Nervos$Cell;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9787
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$Cell$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$Cell$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 9784
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$Cell;-><init>()V

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

.method public getBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9040
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->blockHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBlockNumber()J
    .locals 2

    .line 9002
    iget-wide v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->blockNumber_:J

    return-wide v0
.end method

.method public getCapacity()J
    .locals 2

    .line 8793
    iget-wide v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->capacity_:J

    return-wide v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8963
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getInputType()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9117
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->inputType_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLock()Lwallet/core/jni/proto/Nervos$Script;
    .locals 1

    .line 8841
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutPoint()Lwallet/core/jni/proto/Nervos$OutPoint;
    .locals 1

    .line 8737
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Nervos$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$OutPoint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutputType()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9156
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->outputType_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSince()J
    .locals 2

    .line 9079
    iget-wide v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->since_:J

    return-wide v0
.end method

.method public getType()Lwallet/core/jni/proto/Nervos$Script;
    .locals 1

    .line 8907
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->type_:Lwallet/core/jni/proto/Nervos$Script;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasLock()Z
    .locals 1

    .line 8830
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->lock_:Lwallet/core/jni/proto/Nervos$Script;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOutPoint()Z
    .locals 1

    .line 8726
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->outPoint_:Lwallet/core/jni/proto/Nervos$OutPoint;

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

    .line 8896
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$Cell;->type_:Lwallet/core/jni/proto/Nervos$Script;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
