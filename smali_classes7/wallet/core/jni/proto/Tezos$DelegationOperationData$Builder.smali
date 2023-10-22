.class public final Lwallet/core/jni/proto/Tezos$DelegationOperationData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$DelegationOperationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$DelegationOperationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tezos$DelegationOperationData;",
        "Lwallet/core/jni/proto/Tezos$DelegationOperationData$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$DelegationOperationDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6376
    invoke-static {}, Lwallet/core/jni/proto/Tezos$DelegationOperationData;->access$12000()Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tezos$1;)V
    .locals 0

    .line 6369
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$DelegationOperationData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDelegate()Lwallet/core/jni/proto/Tezos$DelegationOperationData$Builder;
    .locals 1

    .line 6413
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6414
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$DelegationOperationData;->access$12200(Lwallet/core/jni/proto/Tezos$DelegationOperationData;)V

    return-object p0
.end method

.method public getDelegate()Ljava/lang/String;
    .locals 1

    .line 6386
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$DelegationOperationData;->getDelegate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6395
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$DelegationOperationData;->getDelegateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$DelegationOperationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6404
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6405
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$DelegationOperationData;->access$12100(Lwallet/core/jni/proto/Tezos$DelegationOperationData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDelegateBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$DelegationOperationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6424
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6425
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$DelegationOperationData;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$DelegationOperationData;->access$12300(Lwallet/core/jni/proto/Tezos$DelegationOperationData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
