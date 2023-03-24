.class public final Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$GenericActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX$GenericAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/MultiversX$GenericAction;",
        "Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$GenericActionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 489
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$000()Lwallet/core/jni/proto/MultiversX$GenericAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/MultiversX$1;)V
    .locals 0

    .line 482
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccounts()Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 560
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$300(Lwallet/core/jni/proto/MultiversX$GenericAction;)V

    return-object p0
.end method

.method public clearData()Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1

    .line 682
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$800(Lwallet/core/jni/proto/MultiversX$GenericAction;)V

    return-object p0
.end method

.method public clearOptions()Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1

    .line 783
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 784
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$1300(Lwallet/core/jni/proto/MultiversX$GenericAction;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$500(Lwallet/core/jni/proto/MultiversX$GenericAction;)V

    return-object p0
.end method

.method public clearVersion()Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1

    .line 737
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$1100(Lwallet/core/jni/proto/MultiversX$GenericAction;)V

    return-object p0
.end method

.method public getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()I
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getOptions()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasAccounts()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->hasAccounts()Z

    move-result v0

    return v0
.end method

.method public mergeAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$200(Lwallet/core/jni/proto/MultiversX$GenericAction;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts$Builder;)Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 536
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 537
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$100(Lwallet/core/jni/proto/MultiversX$GenericAction;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 524
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$100(Lwallet/core/jni/proto/MultiversX$GenericAction;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 669
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 670
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$700(Lwallet/core/jni/proto/MultiversX$GenericAction;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDataBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 697
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 698
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$900(Lwallet/core/jni/proto/MultiversX$GenericAction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(I)Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 768
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 769
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$1200(Lwallet/core/jni/proto/MultiversX$GenericAction;I)V

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 600
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 601
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$400(Lwallet/core/jni/proto/MultiversX$GenericAction;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 628
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 629
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$600(Lwallet/core/jni/proto/MultiversX$GenericAction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVersion(I)Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 724
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 725
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->access$1000(Lwallet/core/jni/proto/MultiversX$GenericAction;I)V

    return-object p0
.end method
