.class public final Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$OperationChangeTrustOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$OperationChangeTrust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$OperationChangeTrust;",
        "Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$OperationChangeTrustOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1885
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->access$2500()Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 1878
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAsset()Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;
    .locals 1

    .line 1955
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1956
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->access$2800(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V

    return-object p0
.end method

.method public clearValidBefore()Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;
    .locals 1

    .line 1995
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1996
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->access$3000(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;)V

    return-object p0
.end method

.method public getAsset()Lwallet/core/jni/proto/Stellar$Asset;
    .locals 1

    .line 1909
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->getAsset()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v0

    return-object v0
.end method

.method public getValidBefore()J
    .locals 2

    .line 1970
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->getValidBefore()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAsset()Z
    .locals 1

    .line 1898
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->hasAsset()Z

    move-result v0

    return v0
.end method

.method public mergeAsset(Lwallet/core/jni/proto/Stellar$Asset;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1944
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1945
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->access$2700(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;Lwallet/core/jni/proto/Stellar$Asset;)V

    return-object p0
.end method

.method public setAsset(Lwallet/core/jni/proto/Stellar$Asset$Builder;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1932
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1933
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->access$2600(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;Lwallet/core/jni/proto/Stellar$Asset;)V

    return-object p0
.end method

.method public setAsset(Lwallet/core/jni/proto/Stellar$Asset;)Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1919
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1920
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->access$2600(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;Lwallet/core/jni/proto/Stellar$Asset;)V

    return-object p0
.end method

.method public setValidBefore(J)Lwallet/core/jni/proto/Stellar$OperationChangeTrust$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1982
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1983
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationChangeTrust;->access$2900(Lwallet/core/jni/proto/Stellar$OperationChangeTrust;J)V

    return-object p0
.end method
