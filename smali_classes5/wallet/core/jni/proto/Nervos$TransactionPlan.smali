.class public final Lwallet/core/jni/proto/Nervos$TransactionPlan;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$TransactionPlanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionPlan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$TransactionPlan;",
        "Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$TransactionPlanOrBuilder;"
    }
.end annotation


# static fields
.field public static final CELL_DEPS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

.field public static final ERROR_FIELD_NUMBER:I = 0x6

.field public static final HEADER_DEPS_FIELD_NUMBER:I = 0x2

.field public static final OUTPUTS_DATA_FIELD_NUMBER:I = 0x5

.field public static final OUTPUTS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$TransactionPlan;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECTED_CELLS_FIELD_NUMBER:I = 0x3


# instance fields
.field private cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Nervos$CellDep;",
            ">;"
        }
    .end annotation
.end field

.field private error_:I

.field private headerDeps_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private outputsData_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private outputs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Nervos$CellOutput;",
            ">;"
        }
    .end annotation
.end field

.field private selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Nervos$Cell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1738
    new-instance v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;-><init>()V

    .line 1741
    sput-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 1742
    const-class v1, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 183
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 184
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->headerDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 185
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 186
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 187
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputsData_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Nervos$TransactionPlan;
    .locals 1

    .line 177
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellDep;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->setCellDeps(ILwallet/core/jni/proto/Nervos$CellDep;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->clearHeaderDeps()V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->setSelectedCells(ILwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addSelectedCells(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addSelectedCells(ILwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Nervos$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addAllSelectedCells(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->clearSelectedCells()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Nervos$TransactionPlan;I)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->removeSelectedCells(I)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellOutput;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->setOutputs(ILwallet/core/jni/proto/Nervos$CellOutput;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lwallet/core/jni/proto/Nervos$CellOutput;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addOutputs(Lwallet/core/jni/proto/Nervos$CellOutput;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellOutput;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addOutputs(ILwallet/core/jni/proto/Nervos$CellOutput;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lwallet/core/jni/proto/Nervos$CellDep;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addCellDeps(Lwallet/core/jni/proto/Nervos$CellDep;)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Nervos$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addAllOutputs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->clearOutputs()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Nervos$TransactionPlan;I)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->removeOutputs(I)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->setOutputsData(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addOutputsData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Nervos$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addAllOutputsData(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->clearOutputsData()V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Nervos$TransactionPlan;I)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->clearError()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellDep;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addCellDeps(ILwallet/core/jni/proto/Nervos$CellDep;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Nervos$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addAllCellDeps(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->clearCellDeps()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Nervos$TransactionPlan;I)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->removeCellDeps(I)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->setHeaderDeps(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addHeaderDeps(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Nervos$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->addAllHeaderDeps(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllCellDeps(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Nervos$CellDep;",
            ">;)V"
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureCellDepsIsMutable()V

    .line 302
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllHeaderDeps(Ljava/lang/Iterable;)V
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

    .line 412
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureHeaderDepsIsMutable()V

    .line 413
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->headerDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllOutputs(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Nervos$CellOutput;",
            ">;)V"
        }
    .end annotation

    .line 677
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureOutputsIsMutable()V

    .line 678
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllOutputsData(Ljava/lang/Iterable;)V
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

    .line 788
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureOutputsDataIsMutable()V

    .line 789
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputsData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllSelectedCells(Ljava/lang/Iterable;)V
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

    .line 539
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureSelectedCellsIsMutable()V

    .line 540
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addCellDeps(ILwallet/core/jni/proto/Nervos$CellDep;)V
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

    .line 288
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureCellDepsIsMutable()V

    .line 290
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCellDeps(Lwallet/core/jni/proto/Nervos$CellDep;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureCellDepsIsMutable()V

    .line 277
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addHeaderDeps(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureHeaderDepsIsMutable()V

    .line 400
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->headerDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputs(ILwallet/core/jni/proto/Nervos$CellOutput;)V
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

    .line 664
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureOutputsIsMutable()V

    .line 666
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOutputs(Lwallet/core/jni/proto/Nervos$CellOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureOutputsIsMutable()V

    .line 653
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputsData(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 774
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureOutputsDataIsMutable()V

    .line 776
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputsData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSelectedCells(ILwallet/core/jni/proto/Nervos$Cell;)V
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

    .line 526
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureSelectedCellsIsMutable()V

    .line 528
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSelectedCells(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureSelectedCellsIsMutable()V

    .line 515
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCellDeps()V
    .locals 1

    .line 313
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 862
    iput v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->error_:I

    return-void
.end method

.method private clearHeaderDeps()V
    .locals 1

    .line 424
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->headerDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOutputs()V
    .locals 1

    .line 689
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOutputsData()V
    .locals 1

    .line 800
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputsData_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSelectedCells()V
    .locals 1

    .line 551
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureCellDepsIsMutable()V
    .locals 2

    .line 247
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 248
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureHeaderDepsIsMutable()V
    .locals 2

    .line 368
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->headerDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 369
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->headerDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOutputsDataIsMutable()V
    .locals 2

    .line 744
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputsData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 745
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputsData_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOutputsIsMutable()V
    .locals 2

    .line 623
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 624
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSelectedCellsIsMutable()V
    .locals 2

    .line 485
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 486
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$TransactionPlan;
    .locals 1

    .line 1747
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1

    .line 940
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$TransactionPlan;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 943
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 917
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 923
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 881
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 888
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 928
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 935
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 905
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 912
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 868
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 875
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 893
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$TransactionPlan;
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

    .line 900
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$TransactionPlan;",
            ">;"
        }
    .end annotation

    .line 1753
    sget-object v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCellDeps(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 323
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureCellDepsIsMutable()V

    .line 324
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeOutputs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 699
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureOutputsIsMutable()V

    .line 700
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSelectedCells(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 561
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureSelectedCellsIsMutable()V

    .line 562
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCellDeps(ILwallet/core/jni/proto/Nervos$CellDep;)V
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

    .line 263
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureCellDepsIsMutable()V

    .line 265
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setError(Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 850
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->error_:I

    return-void
.end method

.method private setErrorValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 839
    iput p1, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->error_:I

    return-void
.end method

.method private setHeaderDeps(ILcom/google/protobuf/ByteString;)V
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

    .line 385
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureHeaderDepsIsMutable()V

    .line 387
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->headerDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOutputs(ILwallet/core/jni/proto/Nervos$CellOutput;)V
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

    .line 639
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureOutputsIsMutable()V

    .line 641
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOutputsData(ILcom/google/protobuf/ByteString;)V
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

    .line 761
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 762
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureOutputsDataIsMutable()V

    .line 763
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputsData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSelectedCells(ILwallet/core/jni/proto/Nervos$Cell;)V
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

    .line 501
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->ensureSelectedCellsIsMutable()V

    .line 503
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 1681
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1731
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1725
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1710
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1712
    const-class p2, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    monitor-enter p2

    .line 1713
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1715
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1718
    sput-object p1, Lwallet/core/jni/proto/Nervos$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    .line 1720
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

    .line 1707
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "cellDeps_"

    aput-object v0, p1, p3

    .line 1689
    const-class p3, Lwallet/core/jni/proto/Nervos$CellDep;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "headerDeps_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "selectedCells_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lwallet/core/jni/proto/Nervos$Cell;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "outputs_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lwallet/core/jni/proto/Nervos$CellOutput;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "outputsData_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "error_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0005\u0000\u0001\u001b\u0002\u001c\u0003\u001b\u0004\u001b\u0005\u001c\u0006\u000c"

    .line 1703
    sget-object p3, Lwallet/core/jni/proto/Nervos$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1686
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 1683
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;-><init>()V

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

.method public getCellDeps(I)Lwallet/core/jni/proto/Nervos$CellDep;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$CellDep;

    return-object p1
.end method

.method public getCellDepsCount()I
    .locals 1

    .line 222
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCellDepsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Nervos$CellDep;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCellDepsOrBuilder(I)Lwallet/core/jni/proto/Nervos$CellDepOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$CellDepOrBuilder;

    return-object p1
.end method

.method public getCellDepsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Nervos$CellDepOrBuilder;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->cellDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 827
    iget v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 828
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 815
    iget v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->error_:I

    return v0
.end method

.method public getHeaderDeps(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->headerDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getHeaderDepsCount()I
    .locals 1

    .line 352
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->headerDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderDepsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->headerDeps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputs(I)Lwallet/core/jni/proto/Nervos$CellOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$CellOutput;

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 598
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutputsData(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputsData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getOutputsDataCount()I
    .locals 1

    .line 728
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputsData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutputsDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputsData_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Nervos$CellOutput;",
            ">;"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputsOrBuilder(I)Lwallet/core/jni/proto/Nervos$CellOutputOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$CellOutputOrBuilder;

    return-object p1
.end method

.method public getOutputsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Nervos$CellOutputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSelectedCells(I)Lwallet/core/jni/proto/Nervos$Cell;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell;

    return-object p1
.end method

.method public getSelectedCellsCount()I
    .locals 1

    .line 460
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedCellsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Nervos$Cell;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSelectedCellsOrBuilder(I)Lwallet/core/jni/proto/Nervos$CellOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$CellOrBuilder;

    return-object p1
.end method

.method public getSelectedCellsOrBuilderList()Ljava/util/List;
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

    .line 449
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$TransactionPlan;->selectedCells_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
