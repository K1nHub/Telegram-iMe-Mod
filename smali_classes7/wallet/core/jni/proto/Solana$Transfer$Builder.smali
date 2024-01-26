.class public final Lwallet/core/jni/proto/Solana$Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$Transfer;",
        "Lwallet/core/jni/proto/Solana$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 519
    invoke-static {}, Lwallet/core/jni/proto/Solana$Transfer;->access$000()Lwallet/core/jni/proto/Solana$Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 512
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllReferences(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lwallet/core/jni/proto/Solana$Transfer$Builder;"
        }
    .end annotation

    .line 796
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 797
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->access$1100(Lwallet/core/jni/proto/Solana$Transfer;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addReferences(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 781
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 782
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->access$1000(Lwallet/core/jni/proto/Solana$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public addReferencesBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 824
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 825
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->access$1300(Lwallet/core/jni/proto/Solana$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearMemo()Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$Transfer;->access$700(Lwallet/core/jni/proto/Solana$Transfer;)V

    return-object p0
.end method

.method public clearRecipient()Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1

    .line 572
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 573
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$Transfer;->access$200(Lwallet/core/jni/proto/Solana$Transfer;)V

    return-object p0
.end method

.method public clearReferences()Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1

    .line 809
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$Transfer;->access$1200(Lwallet/core/jni/proto/Solana$Transfer;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$Transfer;->access$500(Lwallet/core/jni/proto/Solana$Transfer;)V

    return-object p0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$Transfer;->getMemo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$Transfer;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$Transfer;->getRecipient()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$Transfer;->getRecipientBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReferences(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->getReferences(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getReferencesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->getReferencesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getReferencesCount()I
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$Transfer;->getReferencesCount()I

    move-result v0

    return v0
.end method

.method public getReferencesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    .line 713
    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$Transfer;->getReferencesList()Ljava/util/List;

    move-result-object v0

    .line 712
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$Transfer;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setMemo(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 668
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 669
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->access$600(Lwallet/core/jni/proto/Solana$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 696
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->access$800(Lwallet/core/jni/proto/Solana$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecipient(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 560
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->access$100(Lwallet/core/jni/proto/Solana$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRecipientBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 588
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->access$300(Lwallet/core/jni/proto/Solana$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReferences(ILjava/lang/String;)Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 766
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 767
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$Transfer;->access$900(Lwallet/core/jni/proto/Solana$Transfer;ILjava/lang/String;)V

    return-object p0
.end method

.method public setValue(J)Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$Transfer;->access$400(Lwallet/core/jni/proto/Solana$Transfer;J)V

    return-object p0
.end method
