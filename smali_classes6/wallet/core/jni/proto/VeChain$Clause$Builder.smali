.class public final Lwallet/core/jni/proto/VeChain$Clause$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VeChain.java"

# interfaces
.implements Lwallet/core/jni/proto/VeChain$ClauseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/VeChain$Clause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/VeChain$Clause;",
        "Lwallet/core/jni/proto/VeChain$Clause$Builder;",
        ">;",
        "Lwallet/core/jni/proto/VeChain$ClauseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 312
    invoke-static {}, Lwallet/core/jni/proto/VeChain$Clause;->access$000()Lwallet/core/jni/proto/VeChain$Clause;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/VeChain$1;)V
    .locals 0

    .line 305
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$Clause$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lwallet/core/jni/proto/VeChain$Clause$Builder;
    .locals 1

    .line 460
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 461
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$Clause;->access$700(Lwallet/core/jni/proto/VeChain$Clause;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/VeChain$Clause$Builder;
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$Clause;->access$200(Lwallet/core/jni/proto/VeChain$Clause;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/VeChain$Clause$Builder;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 421
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0}, Lwallet/core/jni/proto/VeChain$Clause;->access$500(Lwallet/core/jni/proto/VeChain$Clause;)V

    return-object p0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$Clause;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$Clause;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$Clause;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$Clause;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/VeChain$Clause$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 448
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$Clause;->access$600(Lwallet/core/jni/proto/VeChain$Clause;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/VeChain$Clause$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 353
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$Clause;->access$100(Lwallet/core/jni/proto/VeChain$Clause;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/VeChain$Clause$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 381
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$Clause;->access$300(Lwallet/core/jni/proto/VeChain$Clause;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/VeChain$Clause$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 408
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/VeChain$Clause;->access$400(Lwallet/core/jni/proto/VeChain$Clause;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
