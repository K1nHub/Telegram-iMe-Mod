.class public final Lwallet/core/jni/proto/NEAR$Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$Transfer;",
        "Lwallet/core/jni/proto/NEAR$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2957
    invoke-static {}, Lwallet/core/jni/proto/NEAR$Transfer;->access$4800()Lwallet/core/jni/proto/NEAR$Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 2950
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDeposit()Lwallet/core/jni/proto/NEAR$Transfer$Builder;
    .locals 1

    .line 2996
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2997
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Transfer;->access$5000(Lwallet/core/jni/proto/NEAR$Transfer;)V

    return-object p0
.end method

.method public getDeposit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2971
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Transfer;->getDeposit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDeposit(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2983
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2984
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$Transfer;->access$4900(Lwallet/core/jni/proto/NEAR$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
