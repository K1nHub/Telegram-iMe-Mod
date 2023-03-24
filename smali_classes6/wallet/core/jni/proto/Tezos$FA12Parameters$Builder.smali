.class public final Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$FA12ParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$FA12Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tezos$FA12Parameters;",
        "Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$FA12ParametersOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3204
    invoke-static {}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$5000()Lwallet/core/jni/proto/Tezos$FA12Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tezos$1;)V
    .locals 0

    .line 3197
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEntrypoint()Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1

    .line 3241
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3242
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$5200(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1

    .line 3290
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3291
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$5500(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1

    .line 3339
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$5800(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1

    .line 3388
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$6100(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V

    return-object p0
.end method

.method public getEntrypoint()Ljava/lang/String;
    .locals 1

    .line 3214
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getEntrypoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntrypointBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3223
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getEntrypointBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 3263
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3272
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getFromBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 3312
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3321
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 3361
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3370
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEntrypoint(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3232
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3233
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$5100(Lwallet/core/jni/proto/Tezos$FA12Parameters;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEntrypointBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3252
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3253
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$5300(Lwallet/core/jni/proto/Tezos$FA12Parameters;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3281
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3282
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$5400(Lwallet/core/jni/proto/Tezos$FA12Parameters;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3301
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$5600(Lwallet/core/jni/proto/Tezos$FA12Parameters;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3330
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3331
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$5700(Lwallet/core/jni/proto/Tezos$FA12Parameters;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3350
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3351
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$5900(Lwallet/core/jni/proto/Tezos$FA12Parameters;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3379
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3380
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$6000(Lwallet/core/jni/proto/Tezos$FA12Parameters;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3399
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3400
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->access$6200(Lwallet/core/jni/proto/Tezos$FA12Parameters;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
