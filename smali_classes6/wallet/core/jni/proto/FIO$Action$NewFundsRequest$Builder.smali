.class public final Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$Action$NewFundsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;",
        "Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$Action$NewFundsRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4724
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$7000()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/FIO$1;)V
    .locals 0

    .line 4717
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearContent()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1

    .line 5001
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5002
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$8200(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1

    .line 5041
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5042
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$8400(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V

    return-object p0
.end method

.method public clearPayeeFioName()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1

    .line 4915
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4916
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$7800(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V

    return-object p0
.end method

.method public clearPayerFioAddress()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1

    .line 4846
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4847
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$7500(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V

    return-object p0
.end method

.method public clearPayerFioName()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1

    .line 4777
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$7200(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V

    return-object p0
.end method

.method public getContent()Lwallet/core/jni/proto/FIO$NewFundsContent;
    .locals 1

    .line 4955
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getContent()Lwallet/core/jni/proto/FIO$NewFundsContent;

    move-result-object v0

    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 5016
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPayeeFioName()Ljava/lang/String;
    .locals 1

    .line 4876
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getPayeeFioName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayeeFioNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4889
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getPayeeFioNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayerFioAddress()Ljava/lang/String;
    .locals 1

    .line 4807
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getPayerFioAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayerFioAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4820
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getPayerFioAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayerFioName()Ljava/lang/String;
    .locals 1

    .line 4738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getPayerFioName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayerFioNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getPayerFioNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .line 4944
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->hasContent()Z

    move-result v0

    return v0
.end method

.method public mergeContent(Lwallet/core/jni/proto/FIO$NewFundsContent;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4990
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$8100(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Lwallet/core/jni/proto/FIO$NewFundsContent;)V

    return-object p0
.end method

.method public setContent(Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4978
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$8000(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Lwallet/core/jni/proto/FIO$NewFundsContent;)V

    return-object p0
.end method

.method public setContent(Lwallet/core/jni/proto/FIO$NewFundsContent;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4965
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4966
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$8000(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Lwallet/core/jni/proto/FIO$NewFundsContent;)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5028
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$8300(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;J)V

    return-object p0
.end method

.method public setPayeeFioName(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4902
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4903
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$7700(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPayeeFioNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4930
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4931
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$7900(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayerFioAddress(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4833
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4834
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$7400(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPayerFioAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4861
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$7600(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayerFioName(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4764
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4765
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$7100(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPayerFioNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4792
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4793
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->access$7300(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
