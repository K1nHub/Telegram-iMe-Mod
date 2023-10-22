.class public final Lwallet/core/jni/proto/Cosmos$Fee$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$FeeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Fee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Fee;",
        "Lwallet/core/jni/proto/Cosmos$Fee$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$FeeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1079
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Fee;->access$800()Lwallet/core/jni/proto/Cosmos$Fee;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 1072
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Fee$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAmounts(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cosmos$Fee$Builder;
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
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;)",
            "Lwallet/core/jni/proto/Cosmos$Fee$Builder;"
        }
    .end annotation

    .line 1204
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1205
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Fee;->access$1200(Lwallet/core/jni/proto/Cosmos$Fee;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAmounts(ILwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Fee$Builder;
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

    .line 1190
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1191
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    .line 1192
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Amount;

    .line 1191
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Fee;->access$1100(Lwallet/core/jni/proto/Cosmos$Fee;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Fee$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Fee;->access$1100(Lwallet/core/jni/proto/Cosmos$Fee;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addAmounts(Lwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Fee$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1177
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1178
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Fee;->access$1000(Lwallet/core/jni/proto/Cosmos$Fee;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public addAmounts(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Fee$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1151
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1152
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Fee;->access$1000(Lwallet/core/jni/proto/Cosmos$Fee;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public clearAmounts()Lwallet/core/jni/proto/Cosmos$Fee$Builder;
    .locals 1

    .line 1216
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1217
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Fee;->access$1300(Lwallet/core/jni/proto/Cosmos$Fee;)V

    return-object p0
.end method

.method public clearGas()Lwallet/core/jni/proto/Cosmos$Fee$Builder;
    .locals 1

    .line 1268
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1269
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Fee;->access$1600(Lwallet/core/jni/proto/Cosmos$Fee;)V

    return-object p0
.end method

.method public getAmounts(I)Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$Fee;->getAmounts(I)Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object p1

    return-object p1
.end method

.method public getAmountsCount()I
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Fee;->getAmountsCount()I

    move-result v0

    return v0
.end method

.method public getAmountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    .line 1093
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Fee;->getAmountsList()Ljava/util/List;

    move-result-object v0

    .line 1092
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGas()J
    .locals 2

    .line 1243
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Fee;->getGas()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeAmounts(I)Lwallet/core/jni/proto/Cosmos$Fee$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1228
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1229
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Fee;->access$1400(Lwallet/core/jni/proto/Cosmos$Fee;I)V

    return-object p0
.end method

.method public setAmounts(ILwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Fee$Builder;
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

    .line 1138
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1139
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    .line 1140
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cosmos$Amount;

    .line 1139
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Fee;->access$900(Lwallet/core/jni/proto/Cosmos$Fee;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Fee$Builder;
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

    .line 1125
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1126
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Fee;->access$900(Lwallet/core/jni/proto/Cosmos$Fee;ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setGas(J)Lwallet/core/jni/proto/Cosmos$Fee$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1255
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1256
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Fee;->access$1500(Lwallet/core/jni/proto/Cosmos$Fee;J)V

    return-object p0
.end method
