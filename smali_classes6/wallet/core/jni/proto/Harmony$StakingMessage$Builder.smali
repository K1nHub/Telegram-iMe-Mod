.class public final Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$StakingMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$StakingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$StakingMessage;",
        "Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$StakingMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2767
    invoke-static {}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$4200()Lwallet/core/jni/proto/Harmony$StakingMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 2760
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCollectRewards()Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1

    .line 3018
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3019
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5800(Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public clearCreateValidatorMessage()Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1

    .line 2826
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$4600(Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public clearDelegateMessage()Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1

    .line 2922
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2923
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5200(Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public clearEditValidatorMessage()Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1

    .line 2874
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2875
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$4900(Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public clearGasLimit()Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1

    .line 3138
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3139
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$6400(Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public clearGasPrice()Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1

    .line 3098
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3099
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$6200(Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1

    .line 3058
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3059
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$6000(Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public clearStakeMsg()Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1

    .line 2777
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$4300(Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public clearUndelegateMessage()Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1

    .line 2970
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2971
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5500(Lwallet/core/jni/proto/Harmony$StakingMessage;)V

    return-object p0
.end method

.method public getCollectRewards()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
    .locals 1

    .line 2987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getCollectRewards()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    move-result-object v0

    return-object v0
.end method

.method public getCreateValidatorMessage()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
    .locals 1

    .line 2795
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getCreateValidatorMessage()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateMessage()Lwallet/core/jni/proto/Harmony$DirectiveDelegate;
    .locals 1

    .line 2891
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getDelegateMessage()Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getEditValidatorMessage()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
    .locals 1

    .line 2843
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getEditValidatorMessage()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3113
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3073
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3033
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStakeMsgCase()Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;
    .locals 1

    .line 2773
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getStakeMsgCase()Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    move-result-object v0

    return-object v0
.end method

.method public getUndelegateMessage()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
    .locals 1

    .line 2939
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getUndelegateMessage()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    move-result-object v0

    return-object v0
.end method

.method public hasCollectRewards()Z
    .locals 1

    .line 2980
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->hasCollectRewards()Z

    move-result v0

    return v0
.end method

.method public hasCreateValidatorMessage()Z
    .locals 1

    .line 2788
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->hasCreateValidatorMessage()Z

    move-result v0

    return v0
.end method

.method public hasDelegateMessage()Z
    .locals 1

    .line 2884
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->hasDelegateMessage()Z

    move-result v0

    return v0
.end method

.method public hasEditValidatorMessage()Z
    .locals 1

    .line 2836
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->hasEditValidatorMessage()Z

    move-result v0

    return v0
.end method

.method public hasUndelegateMessage()Z
    .locals 1

    .line 2932
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->hasUndelegateMessage()Z

    move-result v0

    return v0
.end method

.method public mergeCollectRewards(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3010
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3011
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5700(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)V

    return-object p0
.end method

.method public mergeCreateValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2818
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$4500(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-object p0
.end method

.method public mergeDelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2914
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2915
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5100(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V

    return-object p0
.end method

.method public mergeEditValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2866
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2867
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$4800(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public mergeUndelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2962
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5400(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V

    return-object p0
.end method

.method public setCollectRewards(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3002
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3003
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5600(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)V

    return-object p0
.end method

.method public setCollectRewards(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2993
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2994
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5600(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)V

    return-object p0
.end method

.method public setCreateValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2810
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2811
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$4400(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-object p0
.end method

.method public setCreateValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2801
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2802
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$4400(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-object p0
.end method

.method public setDelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2906
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2907
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5000(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V

    return-object p0
.end method

.method public setDelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2897
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2898
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5000(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V

    return-object p0
.end method

.method public setEditValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2858
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2859
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$4700(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public setEditValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2849
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2850
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$4700(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public setGasLimit(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3125
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3126
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$6300(Lwallet/core/jni/proto/Harmony$StakingMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasPrice(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3085
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3086
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$6100(Lwallet/core/jni/proto/Harmony$StakingMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3045
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3046
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5900(Lwallet/core/jni/proto/Harmony$StakingMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUndelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2954
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2955
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5300(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V

    return-object p0
.end method

.method public setUndelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2945
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2946
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->access$5300(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V

    return-object p0
.end method
