.class public final Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Decred.java"

# interfaces
.implements Lwallet/core/jni/proto/Decred$TransactionOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Decred$TransactionOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Decred$TransactionOutput;",
        "Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Decred$TransactionOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2246
    invoke-static {}, Lwallet/core/jni/proto/Decred$TransactionOutput;->access$3700()Lwallet/core/jni/proto/Decred$TransactionOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Decred$1;)V
    .locals 0

    .line 2239
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearScript()Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;
    .locals 1

    .line 2365
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2366
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$TransactionOutput;->access$4300(Lwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;
    .locals 1

    .line 2285
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2286
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$TransactionOutput;->access$3900(Lwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-object p0
.end method

.method public clearVersion()Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;
    .locals 1

    .line 2325
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2326
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Decred$TransactionOutput;->access$4100(Lwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-object p0
.end method

.method public getScript()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionOutput;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 2260
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionOutput;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 2300
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionOutput;->getVersion()I

    move-result v0

    return v0
.end method

.method public setScript(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2352
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2353
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$TransactionOutput;->access$4200(Lwallet/core/jni/proto/Decred$TransactionOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(J)Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2272
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2273
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Decred$TransactionOutput;->access$3800(Lwallet/core/jni/proto/Decred$TransactionOutput;J)V

    return-object p0
.end method

.method public setVersion(I)Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2312
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2313
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Decred$TransactionOutput;->access$4000(Lwallet/core/jni/proto/Decred$TransactionOutput;I)V

    return-object p0
.end method
