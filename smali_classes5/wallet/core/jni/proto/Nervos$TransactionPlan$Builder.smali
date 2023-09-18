.class public final Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$TransactionPlanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$TransactionPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$TransactionPlan;",
        "Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$TransactionPlanOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 960
    invoke-static {}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$000()Lwallet/core/jni/proto/Nervos$TransactionPlan;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 953
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCellDeps(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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
            ">;)",
            "Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;"
        }
    .end annotation

    .line 1085
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1086
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$400(Lwallet/core/jni/proto/Nervos$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllHeaderDeps(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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
            ">;)",
            "Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;"
        }
    .end annotation

    .line 1193
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1194
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$900(Lwallet/core/jni/proto/Nervos$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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
            ">;)",
            "Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;"
        }
    .end annotation

    .line 1482
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1483
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$2000(Lwallet/core/jni/proto/Nervos$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputsData(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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
            ">;)",
            "Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;"
        }
    .end annotation

    .line 1590
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1591
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$2500(Lwallet/core/jni/proto/Nervos$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSelectedCells(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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
            ">;)",
            "Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;"
        }
    .end annotation

    .line 1332
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1333
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1400(Lwallet/core/jni/proto/Nervos$TransactionPlan;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCellDeps(ILwallet/core/jni/proto/Nervos$CellDep$Builder;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1071
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1072
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 1073
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Nervos$CellDep;

    .line 1072
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$300(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellDep;)V

    return-object p0
.end method

.method public addCellDeps(ILwallet/core/jni/proto/Nervos$CellDep;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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

    .line 1045
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1046
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$300(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellDep;)V

    return-object p0
.end method

.method public addCellDeps(Lwallet/core/jni/proto/Nervos$CellDep$Builder;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1058
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1059
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$200(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lwallet/core/jni/proto/Nervos$CellDep;)V

    return-object p0
.end method

.method public addCellDeps(Lwallet/core/jni/proto/Nervos$CellDep;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1032
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1033
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$200(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lwallet/core/jni/proto/Nervos$CellDep;)V

    return-object p0
.end method

.method public addHeaderDeps(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1178
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1179
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$800(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/Nervos$CellOutput$Builder;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1468
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1469
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 1470
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Nervos$CellOutput;

    .line 1469
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1900(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellOutput;)V

    return-object p0
.end method

.method public addOutputs(ILwallet/core/jni/proto/Nervos$CellOutput;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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

    .line 1442
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1443
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1900(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellOutput;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/Nervos$CellOutput$Builder;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1455
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1456
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1800(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lwallet/core/jni/proto/Nervos$CellOutput;)V

    return-object p0
.end method

.method public addOutputs(Lwallet/core/jni/proto/Nervos$CellOutput;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1429
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1430
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1800(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lwallet/core/jni/proto/Nervos$CellOutput;)V

    return-object p0
.end method

.method public addOutputsData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1575
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1576
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$2400(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addSelectedCells(ILwallet/core/jni/proto/Nervos$Cell$Builder;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1318
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1319
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 1320
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Nervos$Cell;

    .line 1319
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1300(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public addSelectedCells(ILwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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

    .line 1292
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1293
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1300(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public addSelectedCells(Lwallet/core/jni/proto/Nervos$Cell$Builder;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1305
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1306
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1200(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public addSelectedCells(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1279
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1280
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1200(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public clearCellDeps()Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1

    .line 1097
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1098
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$500(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1

    .line 1669
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1670
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$2900(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V

    return-object p0
.end method

.method public clearHeaderDeps()Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1

    .line 1206
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1207
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1000(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V

    return-object p0
.end method

.method public clearOutputs()Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1

    .line 1494
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1495
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$2100(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V

    return-object p0
.end method

.method public clearOutputsData()Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1

    .line 1603
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1604
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$2600(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V

    return-object p0
.end method

.method public clearSelectedCells()Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1

    .line 1344
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1500(Lwallet/core/jni/proto/Nervos$TransactionPlan;)V

    return-object p0
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

    .line 995
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getCellDeps(I)Lwallet/core/jni/proto/Nervos$CellDep;

    move-result-object p1

    return-object p1
.end method

.method public getCellDepsCount()I
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getCellDepsCount()I

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

    .line 973
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 974
    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getCellDepsList()Ljava/util/List;

    move-result-object v0

    .line 973
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 1644
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getErrorValue()I

    move-result v0

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

    .line 1151
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getHeaderDeps(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderDepsCount()I
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getHeaderDepsCount()I

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

    .line 1125
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 1126
    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getHeaderDepsList()Ljava/util/List;

    move-result-object v0

    .line 1125
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    .line 1392
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getOutputs(I)Lwallet/core/jni/proto/Nervos$CellOutput;

    move-result-object p1

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getOutputsCount()I

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

    .line 1548
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getOutputsData(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOutputsDataCount()I
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getOutputsDataCount()I

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

    .line 1522
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 1523
    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getOutputsDataList()Ljava/util/List;

    move-result-object v0

    .line 1522
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    .line 1370
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 1371
    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getOutputsList()Ljava/util/List;

    move-result-object v0

    .line 1370
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    .line 1242
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getSelectedCells(I)Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedCellsCount()I
    .locals 1

    .line 1232
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getSelectedCellsCount()I

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

    .line 1220
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 1221
    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->getSelectedCellsList()Ljava/util/List;

    move-result-object v0

    .line 1220
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeCellDeps(I)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1110
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$600(Lwallet/core/jni/proto/Nervos$TransactionPlan;I)V

    return-object p0
.end method

.method public removeOutputs(I)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1506
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$2200(Lwallet/core/jni/proto/Nervos$TransactionPlan;I)V

    return-object p0
.end method

.method public removeSelectedCells(I)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1356
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1357
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1600(Lwallet/core/jni/proto/Nervos$TransactionPlan;I)V

    return-object p0
.end method

.method public setCellDeps(ILwallet/core/jni/proto/Nervos$CellDep$Builder;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1019
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1020
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 1021
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Nervos$CellDep;

    .line 1020
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$100(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellDep;)V

    return-object p0
.end method

.method public setCellDeps(ILwallet/core/jni/proto/Nervos$CellDep;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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

    .line 1006
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1007
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$100(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellDep;)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1656
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1657
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$2800(Lwallet/core/jni/proto/Nervos$TransactionPlan;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1630
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1631
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$2700(Lwallet/core/jni/proto/Nervos$TransactionPlan;I)V

    return-object p0
.end method

.method public setHeaderDeps(ILcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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

    .line 1164
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1165
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$700(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/Nervos$CellOutput$Builder;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1416
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1417
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 1418
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Nervos$CellOutput;

    .line 1417
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1700(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellOutput;)V

    return-object p0
.end method

.method public setOutputs(ILwallet/core/jni/proto/Nervos$CellOutput;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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

    .line 1403
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1404
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1700(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$CellOutput;)V

    return-object p0
.end method

.method public setOutputsData(ILcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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

    .line 1561
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1562
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$2300(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSelectedCells(ILwallet/core/jni/proto/Nervos$Cell$Builder;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1266
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1267
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    .line 1268
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Nervos$Cell;

    .line 1267
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1100(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method

.method public setSelectedCells(ILwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$TransactionPlan$Builder;
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

    .line 1253
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1254
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$TransactionPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$TransactionPlan;->access$1100(Lwallet/core/jni/proto/Nervos$TransactionPlan;ILwallet/core/jni/proto/Nervos$Cell;)V

    return-object p0
.end method
