.class public final Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEO.java"

# interfaces
.implements Lwallet/core/jni/proto/NEO$TransactionInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO$TransactionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEO$TransactionInput;",
        "Lwallet/core/jni/proto/NEO$TransactionInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEO$TransactionInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 358
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionInput;->access$000()Lwallet/core/jni/proto/NEO$TransactionInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEO$1;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAssetId()Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    .locals 1

    .line 531
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 532
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;->access$800(Lwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public clearPrevHash()Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;->access$200(Lwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public clearPrevIndex()Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;->access$400(Lwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 478
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;->access$600(Lwallet/core/jni/proto/NEO$TransactionInput;)V

    return-object p0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;->getAssetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;->getAssetIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrevHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;->getPrevHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrevIndex()I
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;->getPrevIndex()I

    move-result v0

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$TransactionInput;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAssetId(Ljava/lang/String;)Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 519
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionInput;->access$700(Lwallet/core/jni/proto/NEO$TransactionInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAssetIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 547
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionInput;->access$900(Lwallet/core/jni/proto/NEO$TransactionInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrevHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 385
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionInput;->access$100(Lwallet/core/jni/proto/NEO$TransactionInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrevIndex(I)Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 425
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEO$TransactionInput;->access$300(Lwallet/core/jni/proto/NEO$TransactionInput;I)V

    return-object p0
.end method

.method public setValue(J)Lwallet/core/jni/proto/NEO$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 465
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionInput;->access$500(Lwallet/core/jni/proto/NEO$TransactionInput;J)V

    return-object p0
.end method
