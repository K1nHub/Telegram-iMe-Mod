.class public final Lwallet/core/jni/proto/Tezos$OperationList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$OperationListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$OperationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tezos$OperationList;",
        "Lwallet/core/jni/proto/Tezos$OperationList$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$OperationListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1194
    invoke-static {}, Lwallet/core/jni/proto/Tezos$OperationList;->access$1300()Lwallet/core/jni/proto/Tezos$OperationList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tezos$1;)V
    .locals 0

    .line 1187
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOperations(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Tezos$OperationList$Builder;
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
            "Lwallet/core/jni/proto/Tezos$Operation;",
            ">;)",
            "Lwallet/core/jni/proto/Tezos$OperationList$Builder;"
        }
    .end annotation

    .line 1388
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->access$2000(Lwallet/core/jni/proto/Tezos$OperationList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOperations(ILwallet/core/jni/proto/Tezos$Operation$Builder;)Lwallet/core/jni/proto/Tezos$OperationList$Builder;
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

    .line 1374
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1375
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    .line 1376
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tezos$Operation;

    .line 1375
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$OperationList;->access$1900(Lwallet/core/jni/proto/Tezos$OperationList;ILwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public addOperations(ILwallet/core/jni/proto/Tezos$Operation;)Lwallet/core/jni/proto/Tezos$OperationList$Builder;
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

    .line 1348
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1349
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$OperationList;->access$1900(Lwallet/core/jni/proto/Tezos$OperationList;ILwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public addOperations(Lwallet/core/jni/proto/Tezos$Operation$Builder;)Lwallet/core/jni/proto/Tezos$OperationList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1361
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1362
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$Operation;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->access$1800(Lwallet/core/jni/proto/Tezos$OperationList;Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public addOperations(Lwallet/core/jni/proto/Tezos$Operation;)Lwallet/core/jni/proto/Tezos$OperationList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1335
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1336
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->access$1800(Lwallet/core/jni/proto/Tezos$OperationList;Lwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public clearBranch()Lwallet/core/jni/proto/Tezos$OperationList$Builder;
    .locals 1

    .line 1247
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1248
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$OperationList;->access$1500(Lwallet/core/jni/proto/Tezos$OperationList;)V

    return-object p0
.end method

.method public clearOperations()Lwallet/core/jni/proto/Tezos$OperationList$Builder;
    .locals 1

    .line 1400
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1401
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$OperationList;->access$2100(Lwallet/core/jni/proto/Tezos$OperationList;)V

    return-object p0
.end method

.method public getBranch()Ljava/lang/String;
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$OperationList;->getBranch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBranchBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$OperationList;->getBranchBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOperations(I)Lwallet/core/jni/proto/Tezos$Operation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->getOperations(I)Lwallet/core/jni/proto/Tezos$Operation;

    move-result-object p1

    return-object p1
.end method

.method public getOperationsCount()I
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$OperationList;->getOperationsCount()I

    move-result v0

    return v0
.end method

.method public getOperationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Tezos$Operation;",
            ">;"
        }
    .end annotation

    .line 1276
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    .line 1277
    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$OperationList;->getOperationsList()Ljava/util/List;

    move-result-object v0

    .line 1276
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeOperations(I)Lwallet/core/jni/proto/Tezos$OperationList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1412
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1413
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->access$2200(Lwallet/core/jni/proto/Tezos$OperationList;I)V

    return-object p0
.end method

.method public setBranch(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$OperationList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1234
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1235
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->access$1400(Lwallet/core/jni/proto/Tezos$OperationList;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBranchBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$OperationList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1262
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1263
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->access$1600(Lwallet/core/jni/proto/Tezos$OperationList;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOperations(ILwallet/core/jni/proto/Tezos$Operation$Builder;)Lwallet/core/jni/proto/Tezos$OperationList$Builder;
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

    .line 1322
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1323
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    .line 1324
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tezos$Operation;

    .line 1323
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$OperationList;->access$1700(Lwallet/core/jni/proto/Tezos$OperationList;ILwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method

.method public setOperations(ILwallet/core/jni/proto/Tezos$Operation;)Lwallet/core/jni/proto/Tezos$OperationList$Builder;
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

    .line 1309
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1310
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tezos$OperationList;->access$1700(Lwallet/core/jni/proto/Tezos$OperationList;ILwallet/core/jni/proto/Tezos$Operation;)V

    return-object p0
.end method
