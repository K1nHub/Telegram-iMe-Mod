.class public final Lwallet/core/jni/proto/Sui$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sui.java"

# interfaces
.implements Lwallet/core/jni/proto/Sui$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Sui$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Sui$SigningInput;",
        "Lwallet/core/jni/proto/Sui$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Sui$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 626
    invoke-static {}, Lwallet/core/jni/proto/Sui$SigningInput;->access$500()Lwallet/core/jni/proto/Sui$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Sui$1;)V
    .locals 0

    .line 619
    invoke-direct {p0}, Lwallet/core/jni/proto/Sui$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPrivateKey()Lwallet/core/jni/proto/Sui$SigningInput$Builder;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Sui$SigningInput;->access$800(Lwallet/core/jni/proto/Sui$SigningInput;)V

    return-object p0
.end method

.method public clearSignDirectMessage()Lwallet/core/jni/proto/Sui$SigningInput$Builder;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Sui$SigningInput;->access$1100(Lwallet/core/jni/proto/Sui$SigningInput;)V

    return-object p0
.end method

.method public clearTransactionPayload()Lwallet/core/jni/proto/Sui$SigningInput$Builder;
    .locals 1

    .line 636
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 637
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Sui$SigningInput;->access$600(Lwallet/core/jni/proto/Sui$SigningInput;)V

    return-object p0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Sui$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignDirectMessage()Lwallet/core/jni/proto/Sui$SignDirect;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Sui$SigningInput;->getSignDirectMessage()Lwallet/core/jni/proto/Sui$SignDirect;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionPayloadCase()Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Sui$SigningInput;->getTransactionPayloadCase()Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public hasSignDirectMessage()Z
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Sui$SigningInput;->hasSignDirectMessage()Z

    move-result v0

    return v0
.end method

.method public mergeSignDirectMessage(Lwallet/core/jni/proto/Sui$SignDirect;)Lwallet/core/jni/proto/Sui$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 717
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 718
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Sui$SigningInput;->access$1000(Lwallet/core/jni/proto/Sui$SigningInput;Lwallet/core/jni/proto/Sui$SignDirect;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Sui$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 664
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 665
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Sui$SigningInput;->access$700(Lwallet/core/jni/proto/Sui$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignDirectMessage(Lwallet/core/jni/proto/Sui$SignDirect$Builder;)Lwallet/core/jni/proto/Sui$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Sui$SignDirect;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Sui$SigningInput;->access$900(Lwallet/core/jni/proto/Sui$SigningInput;Lwallet/core/jni/proto/Sui$SignDirect;)V

    return-object p0
.end method

.method public setSignDirectMessage(Lwallet/core/jni/proto/Sui$SignDirect;)Lwallet/core/jni/proto/Sui$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 700
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 701
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Sui$SigningInput;->access$900(Lwallet/core/jni/proto/Sui$SigningInput;Lwallet/core/jni/proto/Sui$SignDirect;)V

    return-object p0
.end method
