.class public final Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tezos$SigningInput;",
        "Lwallet/core/jni/proto/Tezos$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 311
    invoke-static {}, Lwallet/core/jni/proto/Tezos$SigningInput;->access$000()Lwallet/core/jni/proto/Tezos$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tezos$1;)V
    .locals 0

    .line 304
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncodedOperations()Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 422
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$SigningInput;->access$500(Lwallet/core/jni/proto/Tezos$SigningInput;)V

    return-object p0
.end method

.method public clearOperationList()Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$SigningInput;->access$300(Lwallet/core/jni/proto/Tezos$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
    .locals 1

    .line 461
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 462
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$SigningInput;->access$700(Lwallet/core/jni/proto/Tezos$SigningInput;)V

    return-object p0
.end method

.method public getEncodedOperations()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$SigningInput;->getEncodedOperations()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOperationList()Lwallet/core/jni/proto/Tezos$OperationList;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$SigningInput;->getOperationList()Lwallet/core/jni/proto/Tezos$OperationList;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOperationList()Z
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$SigningInput;->hasOperationList()Z

    move-result v0

    return v0
.end method

.method public mergeOperationList(Lwallet/core/jni/proto/Tezos$OperationList;)Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 371
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$SigningInput;->access$200(Lwallet/core/jni/proto/Tezos$SigningInput;Lwallet/core/jni/proto/Tezos$OperationList;)V

    return-object p0
.end method

.method public setEncodedOperations(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 409
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$SigningInput;->access$400(Lwallet/core/jni/proto/Tezos$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOperationList(Lwallet/core/jni/proto/Tezos$OperationList$Builder;)Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 359
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$SigningInput;->access$100(Lwallet/core/jni/proto/Tezos$SigningInput;Lwallet/core/jni/proto/Tezos$OperationList;)V

    return-object p0
.end method

.method public setOperationList(Lwallet/core/jni/proto/Tezos$OperationList;)Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 346
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$SigningInput;->access$100(Lwallet/core/jni/proto/Tezos$SigningInput;Lwallet/core/jni/proto/Tezos$OperationList;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 449
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$SigningInput;->access$600(Lwallet/core/jni/proto/Tezos$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
