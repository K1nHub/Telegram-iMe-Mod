.class public final Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$CommissionRateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$CommissionRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$CommissionRate;",
        "Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$CommissionRateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4708
    invoke-static {}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$8900()Lwallet/core/jni/proto/Harmony$CommissionRate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 4701
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMaxChangeRate()Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1

    .line 4920
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4921
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9800(Lwallet/core/jni/proto/Harmony$CommissionRate;)V

    return-object p0
.end method

.method public clearMaxRate()Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1

    .line 4849
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4850
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9500(Lwallet/core/jni/proto/Harmony$CommissionRate;)V

    return-object p0
.end method

.method public clearRate()Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1

    .line 4778
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4779
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9200(Lwallet/core/jni/proto/Harmony$CommissionRate;)V

    return-object p0
.end method

.method public getMaxChangeRate()Lwallet/core/jni/proto/Harmony$Decimal;
    .locals 1

    .line 4874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->getMaxChangeRate()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRate()Lwallet/core/jni/proto/Harmony$Decimal;
    .locals 1

    .line 4803
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->getMaxRate()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v0

    return-object v0
.end method

.method public getRate()Lwallet/core/jni/proto/Harmony$Decimal;
    .locals 1

    .line 4732
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->getRate()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v0

    return-object v0
.end method

.method public hasMaxChangeRate()Z
    .locals 1

    .line 4863
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->hasMaxChangeRate()Z

    move-result v0

    return v0
.end method

.method public hasMaxRate()Z
    .locals 1

    .line 4792
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->hasMaxRate()Z

    move-result v0

    return v0
.end method

.method public hasRate()Z
    .locals 1

    .line 4721
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->hasRate()Z

    move-result v0

    return v0
.end method

.method public mergeMaxChangeRate(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4909
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4910
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9700(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public mergeMaxRate(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4838
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4839
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9400(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public mergeRate(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4767
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4768
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9100(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public setMaxChangeRate(Lwallet/core/jni/proto/Harmony$Decimal$Builder;)Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4897
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4898
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9600(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public setMaxChangeRate(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4884
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4885
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9600(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public setMaxRate(Lwallet/core/jni/proto/Harmony$Decimal$Builder;)Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4826
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9300(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public setMaxRate(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4813
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4814
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9300(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public setRate(Lwallet/core/jni/proto/Harmony$Decimal$Builder;)Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4755
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4756
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9000(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public setRate(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4742
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4743
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->access$9000(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method
