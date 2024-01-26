.class public final Lwallet/core/jni/proto/Nervos$CellDep$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$CellDepOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$CellDep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$CellDep;",
        "Lwallet/core/jni/proto/Nervos$CellDep$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$CellDepOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2043
    invoke-static {}, Lwallet/core/jni/proto/Nervos$CellDep;->access$3100()Lwallet/core/jni/proto/Nervos$CellDep;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 2036
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$CellDep$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDepType()Lwallet/core/jni/proto/Nervos$CellDep$Builder;
    .locals 1

    .line 2096
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2097
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$CellDep;->access$3300(Lwallet/core/jni/proto/Nervos$CellDep;)V

    return-object p0
.end method

.method public clearOutPoint()Lwallet/core/jni/proto/Nervos$CellDep$Builder;
    .locals 1

    .line 2182
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2183
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$CellDep;->access$3700(Lwallet/core/jni/proto/Nervos$CellDep;)V

    return-object p0
.end method

.method public getDepType()Ljava/lang/String;
    .locals 1

    .line 2057
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$CellDep;->getDepType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDepTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2070
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$CellDep;->getDepTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOutPoint()Lwallet/core/jni/proto/Nervos$OutPoint;
    .locals 1

    .line 2136
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$CellDep;->getOutPoint()Lwallet/core/jni/proto/Nervos$OutPoint;

    move-result-object v0

    return-object v0
.end method

.method public hasOutPoint()Z
    .locals 1

    .line 2125
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$CellDep;->hasOutPoint()Z

    move-result v0

    return v0
.end method

.method public mergeOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint;)Lwallet/core/jni/proto/Nervos$CellDep$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2171
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2172
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$CellDep;->access$3600(Lwallet/core/jni/proto/Nervos$CellDep;Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-object p0
.end method

.method public setDepType(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$CellDep$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2083
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2084
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$CellDep;->access$3200(Lwallet/core/jni/proto/Nervos$CellDep;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDepTypeBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$CellDep$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2111
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2112
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$CellDep;->access$3400(Lwallet/core/jni/proto/Nervos$CellDep;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint$Builder;)Lwallet/core/jni/proto/Nervos$CellDep$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2159
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2160
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$CellDep;->access$3500(Lwallet/core/jni/proto/Nervos$CellDep;Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-object p0
.end method

.method public setOutPoint(Lwallet/core/jni/proto/Nervos$OutPoint;)Lwallet/core/jni/proto/Nervos$CellDep$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2146
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2147
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellDep;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$CellDep;->access$3500(Lwallet/core/jni/proto/Nervos$CellDep;Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-object p0
.end method
