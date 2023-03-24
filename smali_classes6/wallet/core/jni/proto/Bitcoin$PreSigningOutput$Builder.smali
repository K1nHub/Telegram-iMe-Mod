.class public final Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$PreSigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;",
        "Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$PreSigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7991
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13100()Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Bitcoin$1;)V
    .locals 0

    .line 7984
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllHashPublicKeys(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Bitcoin$HashPublicKey;",
            ">;)",
            "Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;"
        }
    .end annotation

    .line 8116
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8117
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13500(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addHashPublicKeys(ILwallet/core/jni/proto/Bitcoin$HashPublicKey$Builder;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 8102
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8103
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    .line 8104
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    .line 8103
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13400(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)V

    return-object p0
.end method

.method public addHashPublicKeys(ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 8076
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8077
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13400(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)V

    return-object p0
.end method

.method public addHashPublicKeys(Lwallet/core/jni/proto/Bitcoin$HashPublicKey$Builder;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8089
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8090
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13300(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;Lwallet/core/jni/proto/Bitcoin$HashPublicKey;)V

    return-object p0
.end method

.method public addHashPublicKeys(Lwallet/core/jni/proto/Bitcoin$HashPublicKey;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8063
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8064
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13300(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;Lwallet/core/jni/proto/Bitcoin$HashPublicKey;)V

    return-object p0
.end method

.method public clearError()Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1

    .line 8206
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8207
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$14000(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;)V

    return-object p0
.end method

.method public clearErrorMessage()Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8261
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$14200(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;)V

    return-object p0
.end method

.method public clearHashPublicKeys()Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1

    .line 8128
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8129
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13600(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;)V

    return-object p0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 8181
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->getError()Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 8221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8234
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 8155
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getHashPublicKeys(I)Lwallet/core/jni/proto/Bitcoin$HashPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8026
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->getHashPublicKeys(I)Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public getHashPublicKeysCount()I
    .locals 1

    .line 8016
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->getHashPublicKeysCount()I

    move-result v0

    return v0
.end method

.method public getHashPublicKeysList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Bitcoin$HashPublicKey;",
            ">;"
        }
    .end annotation

    .line 8004
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    .line 8005
    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->getHashPublicKeysList()Ljava/util/List;

    move-result-object v0

    .line 8004
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeHashPublicKeys(I)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8140
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8141
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13700(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;I)V

    return-object p0
.end method

.method public setError(Lwallet/core/jni/proto/Common$SigningError;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8193
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8194
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13900(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V

    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8247
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8248
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$14100(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrorMessageBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8275
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8276
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$14300(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setErrorValue(I)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8167
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8168
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13800(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;I)V

    return-object p0
.end method

.method public setHashPublicKeys(ILwallet/core/jni/proto/Bitcoin$HashPublicKey$Builder;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 8050
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8051
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    .line 8052
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    .line 8051
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13200(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)V

    return-object p0
.end method

.method public setHashPublicKeys(ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 8037
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8038
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->access$13200(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)V

    return-object p0
.end method
