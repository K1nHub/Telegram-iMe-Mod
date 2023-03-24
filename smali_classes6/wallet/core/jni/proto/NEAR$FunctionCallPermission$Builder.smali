.class public final Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$FunctionCallPermissionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$FunctionCallPermission;",
        "Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$FunctionCallPermissionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 724
    invoke-static {}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->access$600()Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMethodNames(Ljava/lang/Iterable;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;"
        }
    .end annotation

    .line 884
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 885
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->access$1400(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addMethodNames(Ljava/lang/String;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->access$1300(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Ljava/lang/String;)V

    return-object p0
.end method

.method public addMethodNamesBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 904
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->access$1600(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearAllowance()Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
    .locals 1

    .line 763
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->access$800(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V

    return-object p0
.end method

.method public clearMethodNames()Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
    .locals 1

    .line 893
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->access$1500(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V

    return-object p0
.end method

.method public clearReceiverId()Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
    .locals 1

    .line 801
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 802
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->access$1000(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V

    return-object p0
.end method

.method public getAllowance()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getAllowance()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMethodNames(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getMethodNames(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMethodNamesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getMethodNamesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMethodNamesCount()I
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getMethodNamesCount()I

    move-result v0

    return v0
.end method

.method public getMethodNamesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    .line 825
    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getMethodNamesList()Ljava/util/List;

    move-result-object v0

    .line 824
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverId()Ljava/lang/String;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getReceiverId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getReceiverIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAllowance(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 750
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->access$700(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMethodNames(ILjava/lang/String;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
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

    .line 862
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 863
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->access$1200(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;ILjava/lang/String;)V

    return-object p0
.end method

.method public setReceiverId(Ljava/lang/String;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 792
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 793
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->access$900(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReceiverIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 812
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 813
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->access$1100(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
