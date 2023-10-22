.class public final Lwallet/core/jni/proto/FIO$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/FIO$SigningInput;",
        "Lwallet/core/jni/proto/FIO$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6785
    invoke-static {}, Lwallet/core/jni/proto/FIO$SigningInput;->access$11200()Lwallet/core/jni/proto/FIO$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/FIO$1;)V
    .locals 0

    .line 6778
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAction()Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1

    .line 7075
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7076
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->access$12500(Lwallet/core/jni/proto/FIO$SigningInput;)V

    return-object p0
.end method

.method public clearChainParams()Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1

    .line 6895
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6896
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->access$11700(Lwallet/core/jni/proto/FIO$SigningInput;)V

    return-object p0
.end method

.method public clearExpiry()Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1

    .line 6824
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6825
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->access$11400(Lwallet/core/jni/proto/FIO$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1

    .line 6935
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6936
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->access$11900(Lwallet/core/jni/proto/FIO$SigningInput;)V

    return-object p0
.end method

.method public clearTpid()Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1

    .line 6989
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6990
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->access$12100(Lwallet/core/jni/proto/FIO$SigningInput;)V

    return-object p0
.end method

.method public getAction()Lwallet/core/jni/proto/FIO$Action;
    .locals 1

    .line 7029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->getAction()Lwallet/core/jni/proto/FIO$Action;

    move-result-object v0

    return-object v0
.end method

.method public getChainParams()Lwallet/core/jni/proto/FIO$ChainParams;
    .locals 1

    .line 6849
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->getChainParams()Lwallet/core/jni/proto/FIO$ChainParams;

    move-result-object v0

    return-object v0
.end method

.method public getExpiry()I
    .locals 1

    .line 6799
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->getExpiry()I

    move-result v0

    return v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6910
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTpid()Ljava/lang/String;
    .locals 1

    .line 6950
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->getTpid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTpidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->getTpidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .line 7018
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->hasAction()Z

    move-result v0

    return v0
.end method

.method public hasChainParams()Z
    .locals 1

    .line 6838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->hasChainParams()Z

    move-result v0

    return v0
.end method

.method public mergeAction(Lwallet/core/jni/proto/FIO$Action;)Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7064
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7065
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->access$12400(Lwallet/core/jni/proto/FIO$SigningInput;Lwallet/core/jni/proto/FIO$Action;)V

    return-object p0
.end method

.method public mergeChainParams(Lwallet/core/jni/proto/FIO$ChainParams;)Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6884
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6885
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->access$11600(Lwallet/core/jni/proto/FIO$SigningInput;Lwallet/core/jni/proto/FIO$ChainParams;)V

    return-object p0
.end method

.method public setAction(Lwallet/core/jni/proto/FIO$Action$Builder;)Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7052
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7053
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->access$12300(Lwallet/core/jni/proto/FIO$SigningInput;Lwallet/core/jni/proto/FIO$Action;)V

    return-object p0
.end method

.method public setAction(Lwallet/core/jni/proto/FIO$Action;)Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7039
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7040
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->access$12300(Lwallet/core/jni/proto/FIO$SigningInput;Lwallet/core/jni/proto/FIO$Action;)V

    return-object p0
.end method

.method public setChainParams(Lwallet/core/jni/proto/FIO$ChainParams$Builder;)Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->access$11500(Lwallet/core/jni/proto/FIO$SigningInput;Lwallet/core/jni/proto/FIO$ChainParams;)V

    return-object p0
.end method

.method public setChainParams(Lwallet/core/jni/proto/FIO$ChainParams;)Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6859
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6860
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->access$11500(Lwallet/core/jni/proto/FIO$SigningInput;Lwallet/core/jni/proto/FIO$ChainParams;)V

    return-object p0
.end method

.method public setExpiry(I)Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6811
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6812
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->access$11300(Lwallet/core/jni/proto/FIO$SigningInput;I)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6922
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6923
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->access$11800(Lwallet/core/jni/proto/FIO$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTpid(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6976
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6977
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->access$12000(Lwallet/core/jni/proto/FIO$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTpidBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7004
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7005
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->access$12200(Lwallet/core/jni/proto/FIO$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
