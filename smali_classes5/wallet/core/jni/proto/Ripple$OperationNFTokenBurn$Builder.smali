.class public final Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$OperationNFTokenBurnOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenBurnOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1862
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->access$2900()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ripple$1;)V
    .locals 0

    .line 1855
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNftokenId()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;
    .locals 1

    .line 1901
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1902
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->access$3100(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)V

    return-object p0
.end method

.method public getNftokenId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1876
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->getNftokenId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setNftokenId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1888
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1889
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->access$3000(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
