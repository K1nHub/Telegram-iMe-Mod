.class public final Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$AccessKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$AccessKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$AccessKey;",
        "Lwallet/core/jni/proto/NEAR$AccessKey$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$AccessKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1502
    invoke-static {}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2000()Lwallet/core/jni/proto/NEAR$AccessKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 1495
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$AccessKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFullAccess()Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1650
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2900(Lwallet/core/jni/proto/NEAR$AccessKey;)V

    return-object p0
.end method

.method public clearFunctionCall()Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1

    .line 1601
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1602
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2600(Lwallet/core/jni/proto/NEAR$AccessKey;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1

    .line 1553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2300(Lwallet/core/jni/proto/NEAR$AccessKey;)V

    return-object p0
.end method

.method public clearPermission()Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1

    .line 1512
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1513
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2100(Lwallet/core/jni/proto/NEAR$AccessKey;)V

    return-object p0
.end method

.method public getFullAccess()Lwallet/core/jni/proto/NEAR$FullAccessPermission;
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;->getFullAccess()Lwallet/core/jni/proto/NEAR$FullAccessPermission;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionCall()Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;->getFunctionCall()Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 1528
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPermissionCase()Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;->getPermissionCase()Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    move-result-object v0

    return-object v0
.end method

.method public hasFullAccess()Z
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;->hasFullAccess()Z

    move-result v0

    return v0
.end method

.method public hasFunctionCall()Z
    .locals 1

    .line 1563
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;->hasFunctionCall()Z

    move-result v0

    return v0
.end method

.method public mergeFullAccess(Lwallet/core/jni/proto/NEAR$FullAccessPermission;)Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1641
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1642
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2800(Lwallet/core/jni/proto/NEAR$AccessKey;Lwallet/core/jni/proto/NEAR$FullAccessPermission;)V

    return-object p0
.end method

.method public mergeFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1593
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1594
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2500(Lwallet/core/jni/proto/NEAR$AccessKey;Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V

    return-object p0
.end method

.method public setFullAccess(Lwallet/core/jni/proto/NEAR$FullAccessPermission$Builder;)Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1633
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1634
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$FullAccessPermission;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2700(Lwallet/core/jni/proto/NEAR$AccessKey;Lwallet/core/jni/proto/NEAR$FullAccessPermission;)V

    return-object p0
.end method

.method public setFullAccess(Lwallet/core/jni/proto/NEAR$FullAccessPermission;)Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1624
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1625
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2700(Lwallet/core/jni/proto/NEAR$AccessKey;Lwallet/core/jni/proto/NEAR$FullAccessPermission;)V

    return-object p0
.end method

.method public setFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;)Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1585
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1586
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2400(Lwallet/core/jni/proto/NEAR$AccessKey;Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V

    return-object p0
.end method

.method public setFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1576
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1577
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2400(Lwallet/core/jni/proto/NEAR$AccessKey;Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V

    return-object p0
.end method

.method public setNonce(J)Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1540
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1541
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEAR$AccessKey;->access$2200(Lwallet/core/jni/proto/NEAR$AccessKey;J)V

    return-object p0
.end method
