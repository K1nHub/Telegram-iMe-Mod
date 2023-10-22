.class public final Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEO.java"

# interfaces
.implements Lwallet/core/jni/proto/NEO$TransactionOutputPlanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEO$TransactionOutputPlan;",
        "Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEO$TransactionOutputPlanOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3811
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$5800()Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEO$1;)V
    .locals 0

    .line 3804
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1

    .line 3850
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3851
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$6000(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method

.method public clearAssetId()Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1

    .line 3984
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3985
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$6600(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method

.method public clearAvailableAmount()Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1

    .line 3890
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3891
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$6200(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method

.method public clearChange()Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1

    .line 3930
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3931
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$6400(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method

.method public clearChangeAddress()Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$7200(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1

    .line 4053
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4054
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$6900(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 3825
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .line 3945
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getAssetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3958
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getAssetIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableAmount()J
    .locals 2

    .line 3865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getAvailableAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChange()J
    .locals 2

    .line 3905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getChange()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 4083
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4096
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getChangeAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 4014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4027
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3837
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$5900(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;J)V

    return-object p0
.end method

.method public setAssetId(Ljava/lang/String;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3971
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3972
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$6500(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAssetIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3999
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4000
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$6700(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAvailableAmount(J)Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3877
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3878
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$6100(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;J)V

    return-object p0
.end method

.method public setChange(J)Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3917
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$6300(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;J)V

    return-object p0
.end method

.method public setChangeAddress(Ljava/lang/String;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4110
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$7100(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChangeAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4137
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4138
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$7300(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4040
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4041
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$6800(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionOutputPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4068
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4069
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;->access$7000(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
