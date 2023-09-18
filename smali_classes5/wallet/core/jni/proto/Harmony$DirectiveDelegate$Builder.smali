.class public final Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DirectiveDelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$DirectiveDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$DirectiveDelegate;",
        "Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DirectiveDelegateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7450
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->access$14800()Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 7443
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;
    .locals 1

    .line 7627
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7628
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->access$15600(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V

    return-object p0
.end method

.method public clearDelegatorAddress()Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;
    .locals 1

    .line 7503
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7504
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->access$15000(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V

    return-object p0
.end method

.method public clearValidatorAddress()Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;
    .locals 1

    .line 7572
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7573
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->access$15300(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7602
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 7464
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7477
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 7533
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7546
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->getValidatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7614
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7615
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->access$15500(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDelegatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7490
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7491
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->access$14900(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7518
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7519
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->access$15100(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7559
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7560
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->access$15200(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7587
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7588
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->access$15400(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
