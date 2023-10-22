.class public final Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$EGLDTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/MultiversX$EGLDTransfer;",
        "Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$EGLDTransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1153
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->access$1500()Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/MultiversX$1;)V
    .locals 0

    .line 1146
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccounts()Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;
    .locals 1

    .line 1223
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1224
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->access$1800(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;
    .locals 1

    .line 1277
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1278
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->access$2000(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V

    return-object p0
.end method

.method public getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->getAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1251
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->getAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAccounts()Z
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->hasAccounts()Z

    move-result v0

    return v0
.end method

.method public mergeAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1212
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->access$1700(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts$Builder;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1200
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1201
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->access$1600(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1187
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1188
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->access$1600(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-object p0
.end method

.method public setAmount(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1264
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1265
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->access$1900(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1292
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1293
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->access$2100(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
