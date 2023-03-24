.class public final Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nimiq.java"

# interfaces
.implements Lwallet/core/jni/proto/Nimiq$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nimiq$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nimiq$SigningInput;",
        "Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nimiq$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 406
    invoke-static {}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$000()Lwallet/core/jni/proto/Nimiq$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nimiq$1;)V
    .locals 0

    .line 399
    invoke-direct {p0}, Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDestination()Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 500
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$400(Lwallet/core/jni/proto/Nimiq$SigningInput;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 595
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$900(Lwallet/core/jni/proto/Nimiq$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$200(Lwallet/core/jni/proto/Nimiq$SigningInput;)V

    return-object p0
.end method

.method public clearValidityStartHeight()Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 635
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$1100(Lwallet/core/jni/proto/Nimiq$SigningInput;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1

    .line 554
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 555
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$700(Lwallet/core/jni/proto/Nimiq$SigningInput;)V

    return-object p0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->getDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->getDestinationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidityStartHeight()I
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->getValidityStartHeight()I

    move-result v0

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDestination(Ljava/lang/String;)Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 487
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$300(Lwallet/core/jni/proto/Nimiq$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDestinationBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$500(Lwallet/core/jni/proto/Nimiq$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$800(Lwallet/core/jni/proto/Nimiq$SigningInput;J)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$100(Lwallet/core/jni/proto/Nimiq$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidityStartHeight(I)Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 621
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 622
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$1000(Lwallet/core/jni/proto/Nimiq$SigningInput;I)V

    return-object p0
.end method

.method public setValue(J)Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 542
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nimiq$SigningInput;->access$600(Lwallet/core/jni/proto/Nimiq$SigningInput;J)V

    return-object p0
.end method
