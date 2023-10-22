.class public final Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DirectiveUndelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;",
        "Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DirectiveUndelegateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8048
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->access$15800()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 8041
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
    .locals 1

    .line 8225
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8226
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->access$16600(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V

    return-object p0
.end method

.method public clearDelegatorAddress()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
    .locals 1

    .line 8101
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8102
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->access$16000(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V

    return-object p0
.end method

.method public clearValidatorAddress()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
    .locals 1

    .line 8170
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8171
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->access$16300(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8200
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 8062
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 8131
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8144
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getValidatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8212
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->access$16500(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDelegatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8088
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8089
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->access$15900(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8116
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8117
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->access$16100(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8157
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8158
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->access$16200(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8185
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8186
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->access$16400(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
