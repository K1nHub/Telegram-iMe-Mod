.class public final Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;",
        "Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1907
    invoke-static {}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->access$2800()Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 1900
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFunction()Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;
    .locals 1

    .line 1977
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1978
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->access$3100(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;)V

    return-object p0
.end method

.method public getFunction()Lwallet/core/jni/proto/Aptos$StructTag;
    .locals 1

    .line 1931
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->getFunction()Lwallet/core/jni/proto/Aptos$StructTag;

    move-result-object v0

    return-object v0
.end method

.method public hasFunction()Z
    .locals 1

    .line 1920
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->hasFunction()Z

    move-result v0

    return v0
.end method

.method public mergeFunction(Lwallet/core/jni/proto/Aptos$StructTag;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1966
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1967
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->access$3000(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-object p0
.end method

.method public setFunction(Lwallet/core/jni/proto/Aptos$StructTag$Builder;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1954
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1955
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->access$2900(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-object p0
.end method

.method public setFunction(Lwallet/core/jni/proto/Aptos$StructTag;)Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1941
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1942
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;->access$2900(Lwallet/core/jni/proto/Aptos$ManagedTokensRegisterMessage;Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-object p0
.end method
