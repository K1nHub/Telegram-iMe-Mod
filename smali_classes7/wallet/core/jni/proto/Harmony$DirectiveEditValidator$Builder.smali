.class public final Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DirectiveEditValidatorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;",
        "Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DirectiveEditValidatorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6693
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$12500()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 6686
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearActive()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1

    .line 7023
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7024
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$14600(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public clearCommissionRate()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1

    .line 6855
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6856
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$13400(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public clearDescription()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1

    .line 6808
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6809
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$13100(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public clearMaxTotalDelegation()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1

    .line 6911
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6912
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$13800(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public clearMinSelfDelegation()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1

    .line 6883
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6884
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$13600(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public clearSlotKeyToAdd()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1

    .line 6967
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6968
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$14200(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public clearSlotKeyToAddSig()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1

    .line 6995
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6996
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$14400(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public clearSlotKeyToRemove()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1

    .line 6939
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6940
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$14000(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public clearValidatorAddress()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1

    .line 6746
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6747
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$12700(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-object p0
.end method

.method public getActive()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7006
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getActive()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCommissionRate()Lwallet/core/jni/proto/Harmony$Decimal;
    .locals 1

    .line 6825
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getCommissionRate()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Lwallet/core/jni/proto/Harmony$Description;
    .locals 1

    .line 6778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getDescription()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTotalDelegation()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getMaxTotalDelegation()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMinSelfDelegation()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6866
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getMinSelfDelegation()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSlotKeyToAdd()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6950
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getSlotKeyToAdd()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSlotKeyToAddSig()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6978
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getSlotKeyToAddSig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSlotKeyToRemove()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6922
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getSlotKeyToRemove()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 6707
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6720
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getValidatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCommissionRate()Z
    .locals 1

    .line 6818
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->hasCommissionRate()Z

    move-result v0

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .line 6771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->hasDescription()Z

    move-result v0

    return v0
.end method

.method public mergeCommissionRate(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6848
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6849
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$13300(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public mergeDescription(Lwallet/core/jni/proto/Harmony$Description;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6801
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6802
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$13000(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lwallet/core/jni/proto/Harmony$Description;)V

    return-object p0
.end method

.method public setActive(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7014
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$14500(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCommissionRate(Lwallet/core/jni/proto/Harmony$Decimal$Builder;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6840
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6841
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$13200(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public setCommissionRate(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6831
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6832
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$13200(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public setDescription(Lwallet/core/jni/proto/Harmony$Description$Builder;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6793
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6794
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$12900(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lwallet/core/jni/proto/Harmony$Description;)V

    return-object p0
.end method

.method public setDescription(Lwallet/core/jni/proto/Harmony$Description;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6784
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6785
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$12900(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lwallet/core/jni/proto/Harmony$Description;)V

    return-object p0
.end method

.method public setMaxTotalDelegation(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6902
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6903
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$13700(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMinSelfDelegation(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6874
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6875
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$13500(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSlotKeyToAdd(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6958
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$14100(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSlotKeyToAddSig(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6986
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$14300(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSlotKeyToRemove(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6930
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6931
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$13900(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6733
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6734
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$12600(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6761
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6762
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->access$12800(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
