.class public final Lwallet/core/jni/proto/Stellar$OperationCreateAccount$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$OperationCreateAccountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$OperationCreateAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$OperationCreateAccount;",
        "Lwallet/core/jni/proto/Stellar$OperationCreateAccount$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$OperationCreateAccountOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 855
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->access$800()Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 848
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Stellar$OperationCreateAccount$Builder;
    .locals 1

    .line 963
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 964
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->access$1300(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)V

    return-object p0
.end method

.method public clearDestination()Lwallet/core/jni/proto/Stellar$OperationCreateAccount$Builder;
    .locals 1

    .line 908
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 909
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->access$1000(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 938
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->getDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->getDestinationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Stellar$OperationCreateAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 950
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 951
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->access$1200(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;J)V

    return-object p0
.end method

.method public setDestination(Ljava/lang/String;)Lwallet/core/jni/proto/Stellar$OperationCreateAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 895
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 896
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->access$900(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDestinationBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$OperationCreateAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 923
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 924
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateAccount;->access$1100(Lwallet/core/jni/proto/Stellar$OperationCreateAccount;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
