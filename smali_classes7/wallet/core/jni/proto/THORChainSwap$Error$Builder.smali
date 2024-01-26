.class public final Lwallet/core/jni/proto/THORChainSwap$Error$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "THORChainSwap.java"

# interfaces
.implements Lwallet/core/jni/proto/THORChainSwap$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/THORChainSwap$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/THORChainSwap$Error;",
        "Lwallet/core/jni/proto/THORChainSwap$Error$Builder;",
        ">;",
        "Lwallet/core/jni/proto/THORChainSwap$ErrorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 568
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$Error;->access$000()Lwallet/core/jni/proto/THORChainSwap$Error;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/THORChainSwap$1;)V
    .locals 0

    .line 561
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$Error$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()Lwallet/core/jni/proto/THORChainSwap$Error$Builder;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 634
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$Error;->access$300(Lwallet/core/jni/proto/THORChainSwap$Error;)V

    return-object p0
.end method

.method public clearMessage()Lwallet/core/jni/proto/THORChainSwap$Error$Builder;
    .locals 1

    .line 687
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 688
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$Error;->access$500(Lwallet/core/jni/proto/THORChainSwap$Error;)V

    return-object p0
.end method

.method public getCode()Lwallet/core/jni/proto/THORChainSwap$ErrorCode;
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Error;->getCode()Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public getCodeValue()I
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Error;->getCodeValue()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Error;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCode(Lwallet/core/jni/proto/THORChainSwap$ErrorCode;)Lwallet/core/jni/proto/THORChainSwap$Error$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 621
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$Error;->access$200(Lwallet/core/jni/proto/THORChainSwap$Error;Lwallet/core/jni/proto/THORChainSwap$ErrorCode;)V

    return-object p0
.end method

.method public setCodeValue(I)Lwallet/core/jni/proto/THORChainSwap$Error$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 595
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$Error;->access$100(Lwallet/core/jni/proto/THORChainSwap$Error;I)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$Error$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 674
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 675
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$Error;->access$400(Lwallet/core/jni/proto/THORChainSwap$Error;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessageBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$Error$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 703
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$Error;->access$600(Lwallet/core/jni/proto/THORChainSwap$Error;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
