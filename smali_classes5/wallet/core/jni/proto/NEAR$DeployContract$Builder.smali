.class public final Lwallet/core/jni/proto/NEAR$DeployContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$DeployContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$DeployContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$DeployContract;",
        "Lwallet/core/jni/proto/NEAR$DeployContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$DeployContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2068
    invoke-static {}, Lwallet/core/jni/proto/NEAR$DeployContract;->access$3300()Lwallet/core/jni/proto/NEAR$DeployContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 2061
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$DeployContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()Lwallet/core/jni/proto/NEAR$DeployContract$Builder;
    .locals 1

    .line 2095
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2096
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeployContract;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$DeployContract;->access$3500(Lwallet/core/jni/proto/NEAR$DeployContract;)V

    return-object p0
.end method

.method public getCode()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2078
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeployContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$DeployContract;->getCode()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCode(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$DeployContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2086
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2087
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeployContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$DeployContract;->access$3400(Lwallet/core/jni/proto/NEAR$DeployContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
