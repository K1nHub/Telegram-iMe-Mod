.class public final Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$SigningOutput;",
        "Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8220
    invoke-static {}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$14200()Lwallet/core/jni/proto/Aptos$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 8213
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAuthenticator()Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1

    .line 8330
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8331
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$14700(Lwallet/core/jni/proto/Aptos$SigningOutput;)V

    return-object p0
.end method

.method public clearEncoded()Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1

    .line 8370
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8371
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$14900(Lwallet/core/jni/proto/Aptos$SigningOutput;)V

    return-object p0
.end method

.method public clearJson()Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1

    .line 8424
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8425
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$15100(Lwallet/core/jni/proto/Aptos$SigningOutput;)V

    return-object p0
.end method

.method public clearRawTxn()Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1

    .line 8259
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8260
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$14400(Lwallet/core/jni/proto/Aptos$SigningOutput;)V

    return-object p0
.end method

.method public getAuthenticator()Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;
    .locals 1

    .line 8284
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->getAuthenticator()Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 8385
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->getJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRawTxn()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8234
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->getRawTxn()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthenticator()Z
    .locals 1

    .line 8273
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->hasAuthenticator()Z

    move-result v0

    return v0
.end method

.method public mergeAuthenticator(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8319
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8320
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$14600(Lwallet/core/jni/proto/Aptos$SigningOutput;Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)V

    return-object p0
.end method

.method public setAuthenticator(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator$Builder;)Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8307
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8308
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$14500(Lwallet/core/jni/proto/Aptos$SigningOutput;Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)V

    return-object p0
.end method

.method public setAuthenticator(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8294
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8295
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$14500(Lwallet/core/jni/proto/Aptos$SigningOutput;Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)V

    return-object p0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8357
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8358
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$14800(Lwallet/core/jni/proto/Aptos$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setJson(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8411
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$15000(Lwallet/core/jni/proto/Aptos$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJsonBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8439
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8440
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$15200(Lwallet/core/jni/proto/Aptos$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRawTxn(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8246
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8247
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->access$14300(Lwallet/core/jni/proto/Aptos$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
