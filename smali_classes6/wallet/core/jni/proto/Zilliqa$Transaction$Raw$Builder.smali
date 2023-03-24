.class public final Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Zilliqa.java"

# interfaces
.implements Lwallet/core/jni/proto/Zilliqa$Transaction$RawOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$RawOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 597
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->access$400()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Zilliqa$1;)V
    .locals 0

    .line 590
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;
    .locals 1

    .line 636
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 637
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->access$600(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V

    return-object p0
.end method

.method public clearCode()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;
    .locals 1

    .line 676
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 677
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->access$800(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V

    return-object p0
.end method

.method public clearData()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;
    .locals 1

    .line 716
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 717
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->access$1000(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->getCode()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 624
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->access$500(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCode(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 663
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 664
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->access$700(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 703
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 704
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->access$900(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
