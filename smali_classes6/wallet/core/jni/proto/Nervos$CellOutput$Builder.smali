.class public final Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$CellOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$CellOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$CellOutput;",
        "Lwallet/core/jni/proto/Nervos$CellOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$CellOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2965
    invoke-static {}, Lwallet/core/jni/proto/Nervos$CellOutput;->access$4500()Lwallet/core/jni/proto/Nervos$CellOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 2958
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$CellOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCapacity()Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1

    .line 3004
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3005
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$CellOutput;->access$4700(Lwallet/core/jni/proto/Nervos$CellOutput;)V

    return-object p0
.end method

.method public clearLock()Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1

    .line 3075
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3076
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$CellOutput;->access$5000(Lwallet/core/jni/proto/Nervos$CellOutput;)V

    return-object p0
.end method

.method public clearType()Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1

    .line 3146
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3147
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$CellOutput;->access$5300(Lwallet/core/jni/proto/Nervos$CellOutput;)V

    return-object p0
.end method

.method public getCapacity()J
    .locals 2

    .line 2979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$CellOutput;->getCapacity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLock()Lwallet/core/jni/proto/Nervos$Script;
    .locals 1

    .line 3029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$CellOutput;->getLock()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lwallet/core/jni/proto/Nervos$Script;
    .locals 1

    .line 3100
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$CellOutput;->getType()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    return-object v0
.end method

.method public hasLock()Z
    .locals 1

    .line 3018
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$CellOutput;->hasLock()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 3089
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$CellOutput;->hasType()Z

    move-result v0

    return v0
.end method

.method public mergeLock(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3064
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3065
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$CellOutput;->access$4900(Lwallet/core/jni/proto/Nervos$CellOutput;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public mergeType(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3135
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3136
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$CellOutput;->access$5200(Lwallet/core/jni/proto/Nervos$CellOutput;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public setCapacity(J)Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2991
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2992
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$CellOutput;->access$4600(Lwallet/core/jni/proto/Nervos$CellOutput;J)V

    return-object p0
.end method

.method public setLock(Lwallet/core/jni/proto/Nervos$Script$Builder;)Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3052
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3053
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$CellOutput;->access$4800(Lwallet/core/jni/proto/Nervos$CellOutput;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public setLock(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3039
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3040
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$CellOutput;->access$4800(Lwallet/core/jni/proto/Nervos$CellOutput;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public setType(Lwallet/core/jni/proto/Nervos$Script$Builder;)Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3123
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3124
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$CellOutput;->access$5100(Lwallet/core/jni/proto/Nervos$CellOutput;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public setType(Lwallet/core/jni/proto/Nervos$Script;)Lwallet/core/jni/proto/Nervos$CellOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3110
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3111
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$CellOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$CellOutput;->access$5100(Lwallet/core/jni/proto/Nervos$CellOutput;Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method
