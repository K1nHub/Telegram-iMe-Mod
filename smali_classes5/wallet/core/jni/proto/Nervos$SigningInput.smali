.class public final Lwallet/core/jni/proto/Nervos$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$SigningInput$Builder;,
        Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$SigningInput;",
        "Lwallet/core/jni/proto/Nervos$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final BYTE_FEE_FIELD_NUMBER:I = 0x1

.field public static final CELL_FIELD_NUMBER:I = 0x3

.field public static final DAO_DEPOSIT_FIELD_NUMBER:I = 0x7

.field public static final DAO_WITHDRAW_PHASE1_FIELD_NUMBER:I = 0x8

.field public static final DAO_WITHDRAW_PHASE2_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

.field public static final NATIVE_TRANSFER_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAN_FIELD_NUMBER:I = 0x4

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x2

.field public static final SUDT_TRANSFER_FIELD_NUMBER:I = 0x6


# instance fields
.field private byteFee_:J

.field private cell_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Nervos$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private operationOneofCase_:I

.field private operationOneof_:Ljava/lang/Object;

.field private plan_:Lwallet/core/jni/proto/Nervos$TransactionPlan;

.field private privateKey_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8547
    new-instance v0, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$SigningInput;-><init>()V

    .line 8550
    sput-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    .line 8551
    const-class v1, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7126
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 7130
    iput v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    .line 7127
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7128
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$11900()Lwallet/core/jni/proto/Nervos$SigningInput;
    .locals 1

    .line 7121
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object v0
.end method

.method static synthetic access$12000(Lwallet/core/jni/proto/Nervos$SigningInput;)V
    .locals 0

    .line 7121
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->clearOperationOneof()V

    return-void
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/Nervos$SigningInput;J)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$SigningInput;->setByteFee(J)V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/Nervos$SigningInput;)V
    .locals 0

    .line 7121
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->clearByteFee()V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/Nervos$SigningInput;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$SigningInput;->setPrivateKey(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12400(Lwallet/core/jni/proto/Nervos$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->addPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12500(Lwallet/core/jni/proto/Nervos$SigningInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->addAllPrivateKey(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12600(Lwallet/core/jni/proto/Nervos$SigningInput;)V
    .locals 0

    .line 7121
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$12700(Lwallet/core/jni/proto/Nervos$SigningInput;ILwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$SigningInput;->setCell(ILwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$12800(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->addCell(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$12900(Lwallet/core/jni/proto/Nervos$SigningInput;ILwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$SigningInput;->addCell(ILwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$13000(Lwallet/core/jni/proto/Nervos$SigningInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->addAllCell(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$13100(Lwallet/core/jni/proto/Nervos$SigningInput;)V
    .locals 0

    .line 7121
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->clearCell()V

    return-void
.end method

.method static synthetic access$13200(Lwallet/core/jni/proto/Nervos$SigningInput;I)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->removeCell(I)V

    return-void
.end method

.method static synthetic access$13300(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$TransactionPlan;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->setPlan(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V

    return-void
.end method

.method static synthetic access$13400(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$TransactionPlan;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->mergePlan(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V

    return-void
.end method

.method static synthetic access$13500(Lwallet/core/jni/proto/Nervos$SigningInput;)V
    .locals 0

    .line 7121
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->clearPlan()V

    return-void
.end method

.method static synthetic access$13600(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$NativeTransfer;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->setNativeTransfer(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V

    return-void
.end method

.method static synthetic access$13700(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$NativeTransfer;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->mergeNativeTransfer(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V

    return-void
.end method

.method static synthetic access$13800(Lwallet/core/jni/proto/Nervos$SigningInput;)V
    .locals 0

    .line 7121
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->clearNativeTransfer()V

    return-void
.end method

.method static synthetic access$13900(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$SudtTransfer;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->setSudtTransfer(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V

    return-void
.end method

.method static synthetic access$14000(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$SudtTransfer;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->mergeSudtTransfer(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V

    return-void
.end method

.method static synthetic access$14100(Lwallet/core/jni/proto/Nervos$SigningInput;)V
    .locals 0

    .line 7121
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->clearSudtTransfer()V

    return-void
.end method

.method static synthetic access$14200(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoDeposit;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->setDaoDeposit(Lwallet/core/jni/proto/Nervos$DaoDeposit;)V

    return-void
.end method

.method static synthetic access$14300(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoDeposit;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->mergeDaoDeposit(Lwallet/core/jni/proto/Nervos$DaoDeposit;)V

    return-void
.end method

.method static synthetic access$14400(Lwallet/core/jni/proto/Nervos$SigningInput;)V
    .locals 0

    .line 7121
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->clearDaoDeposit()V

    return-void
.end method

.method static synthetic access$14500(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->setDaoWithdrawPhase1(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V

    return-void
.end method

.method static synthetic access$14600(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->mergeDaoWithdrawPhase1(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V

    return-void
.end method

.method static synthetic access$14700(Lwallet/core/jni/proto/Nervos$SigningInput;)V
    .locals 0

    .line 7121
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->clearDaoWithdrawPhase1()V

    return-void
.end method

.method static synthetic access$14800(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->setDaoWithdrawPhase2(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V

    return-void
.end method

.method static synthetic access$14900(Lwallet/core/jni/proto/Nervos$SigningInput;Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V
    .locals 0

    .line 7121
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningInput;->mergeDaoWithdrawPhase2(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V

    return-void
.end method

.method static synthetic access$15000(Lwallet/core/jni/proto/Nervos$SigningInput;)V
    .locals 0

    .line 7121
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->clearDaoWithdrawPhase2()V

    return-void
.end method

.method private addAllCell(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Nervos$Cell;",
            ">;)V"
        }
    .end annotation

    .line 7429
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->ensureCellIsMutable()V

    .line 7430
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllPrivateKey(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .line 7302
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->ensurePrivateKeyIsMutable()V

    .line 7303
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addCell(ILwallet/core/jni/proto/Nervos$Cell;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 7416
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7417
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->ensureCellIsMutable()V

    .line 7418
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCell(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7404
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->ensureCellIsMutable()V

    .line 7405
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7288
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7289
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->ensurePrivateKeyIsMutable()V

    .line 7290
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearByteFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 7214
    iput-wide v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->byteFee_:J

    return-void
.end method

.method private clearCell()V
    .locals 1

    .line 7441
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDaoDeposit()V
    .locals 2

    .line 7665
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7666
    iput v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 7667
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDaoWithdrawPhase1()V
    .locals 2

    .line 7715
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7716
    iput v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 7717
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDaoWithdrawPhase2()V
    .locals 2

    .line 7765
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7766
    iput v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 7767
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearNativeTransfer()V
    .locals 2

    .line 7565
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7566
    iput v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 7567
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOperationOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 7175
    iput v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 7176
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearPlan()V
    .locals 1

    const/4 v0, 0x0

    .line 7517
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->plan_:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 7314
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSudtTransfer()V
    .locals 2

    .line 7615
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7616
    iput v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v0, 0x0

    .line 7617
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ensureCellIsMutable()V
    .locals 2

    .line 7375
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7376
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7378
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensurePrivateKeyIsMutable()V
    .locals 2

    .line 7258
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7259
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7261
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$SigningInput;
    .locals 1

    .line 8556
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object v0
.end method

.method private mergeDaoDeposit(Lwallet/core/jni/proto/Nervos$DaoDeposit;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7652
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 7653
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoDeposit;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7654
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->newBuilder(Lwallet/core/jni/proto/Nervos$DaoDeposit;)Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;

    move-result-object v0

    .line 7655
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 7657
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 7659
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeDaoWithdrawPhase1(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7701
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7702
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 7703
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7704
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->newBuilder(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;

    move-result-object v0

    .line 7705
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 7707
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 7709
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeDaoWithdrawPhase2(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7751
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7752
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 7753
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7754
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->newBuilder(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;

    move-result-object v0

    .line 7755
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 7757
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 7759
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergeNativeTransfer(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7551
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7552
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 7553
    invoke-static {}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$NativeTransfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7554
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->newBuilder(Lwallet/core/jni/proto/Nervos$NativeTransfer;)Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;

    move-result-object v0

    .line 7555
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 7557
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 7559
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private mergePlan(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7501
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->plan_:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    if-eqz v0, :cond_0

    .line 7502
    invoke-static {}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$TransactionPlan;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7503
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->plan_:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 7504
    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->newBuilder(Lwallet/core/jni/proto/Nervos$TransactionPlan;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->plan_:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    goto :goto_0

    .line 7506
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->plan_:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    :goto_0
    return-void
.end method

.method private mergeSudtTransfer(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7601
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7602
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 7603
    invoke-static {}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$SudtTransfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7604
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->newBuilder(Lwallet/core/jni/proto/Nervos$SudtTransfer;)Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;

    move-result-object v0

    .line 7605
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 7607
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    .line 7609
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1

    .line 7846
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$SigningInput;)Lwallet/core/jni/proto/Nervos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 7849
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7823
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7829
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7787
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7794
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7834
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7841
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7811
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7818
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7774
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7781
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7799
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningInput;
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

    .line 7806
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$SigningInput;",
            ">;"
        }
    .end annotation

    .line 8562
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCell(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7451
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->ensureCellIsMutable()V

    .line 7452
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setByteFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7203
    iput-wide p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->byteFee_:J

    return-void
.end method

.method private setCell(ILwallet/core/jni/proto/Nervos$Cell;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 7391
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7392
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->ensureCellIsMutable()V

    .line 7393
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDaoDeposit(Lwallet/core/jni/proto/Nervos$DaoDeposit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7643
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7644
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 7645
    iput p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setDaoWithdrawPhase1(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7693
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7694
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 7695
    iput p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setDaoWithdrawPhase2(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7743
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7744
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 7745
    iput p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setNativeTransfer(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7543
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7544
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 7545
    iput p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    return-void
.end method

.method private setPlan(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7487
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7488
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->plan_:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-void
.end method

.method private setPrivateKey(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 7275
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7276
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningInput;->ensurePrivateKeyIsMutable()V

    .line 7277
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSudtTransfer(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7593
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7594
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 7595
    iput p1, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

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

    .line 8487
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8540
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 8534
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8519
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 8521
    const-class p2, Lwallet/core/jni/proto/Nervos$SigningInput;

    monitor-enter p2

    .line 8522
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 8524
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8527
    sput-object p1, Lwallet/core/jni/proto/Nervos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 8529
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

    .line 8516
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "operationOneof_"

    aput-object v0, p1, p3

    const-string p3, "operationOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "byteFee_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "cell_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 8495
    const-class p3, Lwallet/core/jni/proto/Nervos$Cell;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "plan_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    aput-object p3, p1, p2

    const-string p2, "\u0000\t\u0001\u0000\u0001\t\t\u0000\u0002\u0000\u0001\u0003\u0002\u001c\u0003\u001b\u0004\t\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0000"

    .line 8512
    sget-object p3, Lwallet/core/jni/proto/Nervos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8492
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 8489
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$SigningInput;-><init>()V

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

.method public getByteFee()J
    .locals 2

    .line 7191
    iget-wide v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->byteFee_:J

    return-wide v0
.end method

.method public getCell(I)Lwallet/core/jni/proto/Nervos$Cell;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7361
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p1
.end method

.method public getCellCount()I
    .locals 1

    .line 7350
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCellList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Nervos$Cell;",
            ">;"
        }
    .end annotation

    .line 7328
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCellOrBuilder(I)Lwallet/core/jni/proto/Nervos$CellOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7372
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$CellOrBuilder;

    return-object p1
.end method

.method public getCellOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Nervos$CellOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7339
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->cell_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDaoDeposit()Lwallet/core/jni/proto/Nervos$DaoDeposit;
    .locals 2

    .line 7634
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 7635
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object v0

    .line 7637
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoDeposit;

    move-result-object v0

    return-object v0
.end method

.method public getDaoWithdrawPhase1()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
    .locals 2

    .line 7684
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 7685
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object v0

    .line 7687
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    move-result-object v0

    return-object v0
.end method

.method public getDaoWithdrawPhase2()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
    .locals 2

    .line 7734
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 7735
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object v0

    .line 7737
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    move-result-object v0

    return-object v0
.end method

.method public getNativeTransfer()Lwallet/core/jni/proto/Nervos$NativeTransfer;
    .locals 2

    .line 7534
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 7535
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object v0

    .line 7537
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$NativeTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getOperationOneofCase()Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;
    .locals 1

    .line 7170
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->forNumber(I)Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPlan()Lwallet/core/jni/proto/Nervos$TransactionPlan;
    .locals 1

    .line 7477
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->plan_:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$TransactionPlan;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPrivateKey(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7255
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getPrivateKeyCount()I
    .locals 1

    .line 7242
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrivateKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 7230
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSudtTransfer()Lwallet/core/jni/proto/Nervos$SudtTransfer;
    .locals 2

    .line 7584
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 7585
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object v0

    .line 7587
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$SudtTransfer;

    move-result-object v0

    return-object v0
.end method

.method public hasDaoDeposit()Z
    .locals 2

    .line 7627
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDaoWithdrawPhase1()Z
    .locals 2

    .line 7677
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDaoWithdrawPhase2()Z
    .locals 2

    .line 7727
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNativeTransfer()Z
    .locals 2

    .line 7527
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPlan()Z
    .locals 1

    .line 7466
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->plan_:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSudtTransfer()Z
    .locals 2

    .line 7577
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput;->operationOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
