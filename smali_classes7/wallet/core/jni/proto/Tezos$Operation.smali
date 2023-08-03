.class public final Lwallet/core/jni/proto/Tezos$Operation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$OperationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tezos$Operation$Builder;,
        Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;,
        Lwallet/core/jni/proto/Tezos$Operation$OperationKind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tezos$Operation;",
        "Lwallet/core/jni/proto/Tezos$Operation$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$OperationOrBuilder;"
    }
.end annotation


# static fields
.field public static final COUNTER_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

.field public static final DELEGATION_OPERATION_DATA_FIELD_NUMBER:I = 0xb

.field public static final FEE_FIELD_NUMBER:I = 0x3

.field public static final GAS_LIMIT_FIELD_NUMBER:I = 0x4

.field public static final KIND_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$Operation;",
            ">;"
        }
    .end annotation
.end field

.field public static final REVEAL_OPERATION_DATA_FIELD_NUMBER:I = 0x8

.field public static final SOURCE_FIELD_NUMBER:I = 0x2

.field public static final STORAGE_LIMIT_FIELD_NUMBER:I = 0x5

.field public static final TRANSACTION_OPERATION_DATA_FIELD_NUMBER:I = 0x9


# instance fields
.field private counter_:J

.field private fee_:J

.field private gasLimit_:J

.field private kind_:I

.field private operationDataCase_:I

.field private operationData_:Ljava/lang/Object;

.field private source_:Ljava/lang/String;

.field private storageLimit_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2840
    new-instance v0, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tezos$Operation;-><init>()V

    .line 2843
    sput-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    .line 2844
    const-class v1, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1625
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1747
    iput v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const-string v0, ""

    .line 1626
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->source_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2400()Lwallet/core/jni/proto/Tezos$Operation;
    .locals 1

    .line 1620
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    return-object v0
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 1620
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Operation;->clearOperationData()V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Tezos$Operation;J)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tezos$Operation;->setCounter(J)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 1620
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Operation;->clearCounter()V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Tezos$Operation;Ljava/lang/String;)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->setSource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 1620
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Operation;->clearSource()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Tezos$Operation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->setSourceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Tezos$Operation;J)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tezos$Operation;->setFee(J)V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 1620
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Operation;->clearFee()V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Tezos$Operation;J)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tezos$Operation;->setGasLimit(J)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 1620
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Operation;->clearGasLimit()V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Tezos$Operation;J)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tezos$Operation;->setStorageLimit(J)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 1620
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Operation;->clearStorageLimit()V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Tezos$Operation;I)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->setKindValue(I)V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$Operation$OperationKind;)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->setKind(Lwallet/core/jni/proto/Tezos$Operation$OperationKind;)V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 1620
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Operation;->clearKind()V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$RevealOperationData;)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->setRevealOperationData(Lwallet/core/jni/proto/Tezos$RevealOperationData;)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$RevealOperationData;)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->mergeRevealOperationData(Lwallet/core/jni/proto/Tezos$RevealOperationData;)V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 1620
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Operation;->clearRevealOperationData()V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->setTransactionOperationData(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->mergeTransactionOperationData(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 1620
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Operation;->clearTransactionOperationData()V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$DelegationOperationData;)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->setDelegationOperationData(Lwallet/core/jni/proto/Tezos$DelegationOperationData;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Tezos$Operation;Lwallet/core/jni/proto/Tezos$DelegationOperationData;)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Operation;->mergeDelegationOperationData(Lwallet/core/jni/proto/Tezos$DelegationOperationData;)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 1620
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Operation;->clearDelegationOperationData()V

    return-void
.end method

.method private clearCounter()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1827
    iput-wide v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->counter_:J

    return-void
.end method

.method private clearDelegationOperationData()V
    .locals 2

    .line 2217
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2218
    iput v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/4 v0, 0x0

    .line 2219
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1932
    iput-wide v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->fee_:J

    return-void
.end method

.method private clearGasLimit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1970
    iput-wide v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->gasLimit_:J

    return-void
.end method

.method private clearKind()V
    .locals 1

    const/4 v0, 0x0

    .line 2070
    iput v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->kind_:I

    return-void
.end method

.method private clearOperationData()V
    .locals 1

    const/4 v0, 0x0

    .line 1788
    iput v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/4 v0, 0x0

    .line 1789
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    return-void
.end method

.method private clearRevealOperationData()V
    .locals 2

    .line 2117
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2118
    iput v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/4 v0, 0x0

    .line 2119
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSource()V
    .locals 1

    .line 1880
    invoke-static {}, Lwallet/core/jni/proto/Tezos$Operation;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$Operation;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Operation;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->source_:Ljava/lang/String;

    return-void
.end method

.method private clearStorageLimit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2008
    iput-wide v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->storageLimit_:J

    return-void
.end method

.method private clearTransactionOperationData()V
    .locals 2

    .line 2167
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2168
    iput v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/4 v0, 0x0

    .line 2169
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tezos$Operation;
    .locals 1

    .line 2849
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    return-object v0
.end method

.method private mergeDelegationOperationData(Lwallet/core/jni/proto/Tezos$DelegationOperationData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2204
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    .line 2205
    invoke-static {}, Lwallet/core/jni/proto/Tezos$DelegationOperationData;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2206
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$DelegationOperationData;->newBuilder(Lwallet/core/jni/proto/Tezos$DelegationOperationData;)Lwallet/core/jni/proto/Tezos$DelegationOperationData$Builder;

    move-result-object v0

    .line 2207
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$DelegationOperationData$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    goto :goto_0

    .line 2209
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    .line 2211
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    return-void
.end method

.method private mergeRevealOperationData(Lwallet/core/jni/proto/Tezos$RevealOperationData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2104
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    .line 2105
    invoke-static {}, Lwallet/core/jni/proto/Tezos$RevealOperationData;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$RevealOperationData;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2106
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$RevealOperationData;->newBuilder(Lwallet/core/jni/proto/Tezos$RevealOperationData;)Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;

    move-result-object v0

    .line 2107
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    goto :goto_0

    .line 2109
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    .line 2111
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    return-void
.end method

.method private mergeTransactionOperationData(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2154
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    .line 2155
    invoke-static {}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2156
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->newBuilder(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;

    move-result-object v0

    .line 2157
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    goto :goto_0

    .line 2159
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    .line 2161
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1

    .line 2298
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tezos$Operation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tezos$Operation;)Lwallet/core/jni/proto/Tezos$Operation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2301
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2275
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2281
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2239
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2246
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2286
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2293
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2263
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2270
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2226
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2233
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2251
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Operation;
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

    .line 2258
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$Operation;",
            ">;"
        }
    .end annotation

    .line 2855
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCounter(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1816
    iput-wide p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->counter_:J

    return-void
.end method

.method private setDelegationOperationData(Lwallet/core/jni/proto/Tezos$DelegationOperationData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2196
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 2197
    iput p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    return-void
.end method

.method private setFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1921
    iput-wide p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->fee_:J

    return-void
.end method

.method private setGasLimit(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1959
    iput-wide p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->gasLimit_:J

    return-void
.end method

.method private setKind(Lwallet/core/jni/proto/Tezos$Operation$OperationKind;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2058
    invoke-virtual {p1}, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->kind_:I

    return-void
.end method

.method private setKindValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2047
    iput p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->kind_:I

    return-void
.end method

.method private setRevealOperationData(Lwallet/core/jni/proto/Tezos$RevealOperationData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2095
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2096
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 2097
    iput p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    return-void
.end method

.method private setSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1867
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1869
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->source_:Ljava/lang/String;

    return-void
.end method

.method private setSourceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1892
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1893
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->source_:Ljava/lang/String;

    return-void
.end method

.method private setStorageLimit(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1997
    iput-wide p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->storageLimit_:J

    return-void
.end method

.method private setTransactionOperationData(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2146
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 2147
    iput p1, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

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

    .line 2781
    sget-object p2, Lwallet/core/jni/proto/Tezos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2833
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2827
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2812
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tezos$Operation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2814
    const-class p2, Lwallet/core/jni/proto/Tezos$Operation;

    monitor-enter p2

    .line 2815
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tezos$Operation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2817
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2820
    sput-object p1, Lwallet/core/jni/proto/Tezos$Operation;->PARSER:Lcom/google/protobuf/Parser;

    .line 2822
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

    .line 2809
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "operationData_"

    aput-object v0, p1, p3

    const-string p3, "operationDataCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "counter_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "source_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "gasLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "storageLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "kind_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 2789
    const-class p3, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    aput-object p3, p1, p2

    const-string p2, "\u0000\t\u0001\u0000\u0001\u000b\t\u0000\u0000\u0000\u0001\u0002\u0002\u0208\u0003\u0002\u0004\u0002\u0005\u0002\u0007\u000c\u0008<\u0000\t<\u0000\u000b<\u0000"

    .line 2805
    sget-object p3, Lwallet/core/jni/proto/Tezos$Operation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2786
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tezos$Operation$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tezos$Operation$Builder;-><init>(Lwallet/core/jni/proto/Tezos$1;)V

    return-object p1

    .line 2783
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tezos$Operation;-><init>()V

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

.method public getCounter()J
    .locals 2

    .line 1804
    iget-wide v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->counter_:J

    return-wide v0
.end method

.method public getDelegationOperationData()Lwallet/core/jni/proto/Tezos$DelegationOperationData;
    .locals 2

    .line 2186
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2187
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    return-object v0

    .line 2189
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tezos$DelegationOperationData;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    move-result-object v0

    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 1909
    iget-wide v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->fee_:J

    return-wide v0
.end method

.method public getGasLimit()J
    .locals 2

    .line 1947
    iget-wide v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->gasLimit_:J

    return-wide v0
.end method

.method public getKind()Lwallet/core/jni/proto/Tezos$Operation$OperationKind;
    .locals 1

    .line 2035
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->kind_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->forNumber(I)Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2036
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->UNRECOGNIZED:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    :cond_0
    return-object v0
.end method

.method public getKindValue()I
    .locals 1

    .line 2023
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->kind_:I

    return v0
.end method

.method public getOperationDataCase()Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;
    .locals 1

    .line 1783
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->forNumber(I)Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    move-result-object v0

    return-object v0
.end method

.method public getRevealOperationData()Lwallet/core/jni/proto/Tezos$RevealOperationData;
    .locals 2

    .line 2086
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2087
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object v0

    .line 2089
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tezos$RevealOperationData;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$RevealOperationData;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1842
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1855
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->source_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStorageLimit()J
    .locals 2

    .line 1985
    iget-wide v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->storageLimit_:J

    return-wide v0
.end method

.method public getTransactionOperationData()Lwallet/core/jni/proto/Tezos$TransactionOperationData;
    .locals 2

    .line 2136
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2137
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationData_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object v0

    .line 2139
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    move-result-object v0

    return-object v0
.end method

.method public hasDelegationOperationData()Z
    .locals 2

    .line 2179
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRevealOperationData()Z
    .locals 2

    .line 2079
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransactionOperationData()Z
    .locals 2

    .line 2129
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation;->operationDataCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
