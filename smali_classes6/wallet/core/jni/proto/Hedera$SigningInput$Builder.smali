.class public final Lwallet/core/jni/proto/Hedera$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Hedera.java"

# interfaces
.implements Lwallet/core/jni/proto/Hedera$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Hedera$SigningInput;",
        "Lwallet/core/jni/proto/Hedera$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Hedera$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3052
    invoke-static {}, Lwallet/core/jni/proto/Hedera$SigningInput;->access$4700()Lwallet/core/jni/proto/Hedera$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Hedera$1;)V
    .locals 0

    .line 3045
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBody()Lwallet/core/jni/proto/Hedera$SigningInput$Builder;
    .locals 1

    .line 3162
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3163
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$SigningInput;->access$5200(Lwallet/core/jni/proto/Hedera$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Hedera$SigningInput$Builder;
    .locals 1

    .line 3091
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3092
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$SigningInput;->access$4900(Lwallet/core/jni/proto/Hedera$SigningInput;)V

    return-object p0
.end method

.method public getBody()Lwallet/core/jni/proto/Hedera$TransactionBody;
    .locals 1

    .line 3116
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$SigningInput;->getBody()Lwallet/core/jni/proto/Hedera$TransactionBody;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3066
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .line 3105
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$SigningInput;->hasBody()Z

    move-result v0

    return v0
.end method

.method public mergeBody(Lwallet/core/jni/proto/Hedera$TransactionBody;)Lwallet/core/jni/proto/Hedera$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3151
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3152
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$SigningInput;->access$5100(Lwallet/core/jni/proto/Hedera$SigningInput;Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-object p0
.end method

.method public setBody(Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;)Lwallet/core/jni/proto/Hedera$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3139
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3140
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$SigningInput;->access$5000(Lwallet/core/jni/proto/Hedera$SigningInput;Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-object p0
.end method

.method public setBody(Lwallet/core/jni/proto/Hedera$TransactionBody;)Lwallet/core/jni/proto/Hedera$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3126
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3127
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$SigningInput;->access$5000(Lwallet/core/jni/proto/Hedera$SigningInput;Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3078
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3079
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$SigningInput;->access$4800(Lwallet/core/jni/proto/Hedera$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
