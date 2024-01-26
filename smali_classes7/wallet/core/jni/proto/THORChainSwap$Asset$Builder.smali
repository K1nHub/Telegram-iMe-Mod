.class public final Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "THORChainSwap.java"

# interfaces
.implements Lwallet/core/jni/proto/THORChainSwap$AssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/THORChainSwap$Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/THORChainSwap$Asset;",
        "Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;",
        ">;",
        "Lwallet/core/jni/proto/THORChainSwap$AssetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1153
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$Asset;->access$800()Lwallet/core/jni/proto/THORChainSwap$Asset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/THORChainSwap$1;)V
    .locals 0

    .line 1146
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChain()Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    .locals 1

    .line 1218
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1219
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->access$1100(Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-object p0
.end method

.method public clearSymbol()Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    .locals 1

    .line 1272
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1273
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->access$1300(Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-object p0
.end method

.method public clearTokenId()Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    .locals 1

    .line 1341
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1342
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->access$1600(Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-object p0
.end method

.method public getChain()Lwallet/core/jni/proto/THORChainSwap$Chain;
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getChain()Lwallet/core/jni/proto/THORChainSwap$Chain;

    move-result-object v0

    return-object v0
.end method

.method public getChainValue()I
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getChainValue()I

    move-result v0

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getTokenId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getTokenIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setChain(Lwallet/core/jni/proto/THORChainSwap$Chain;)Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1205
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1206
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->access$1000(Lwallet/core/jni/proto/THORChainSwap$Asset;Lwallet/core/jni/proto/THORChainSwap$Chain;)V

    return-object p0
.end method

.method public setChainValue(I)Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1179
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1180
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->access$900(Lwallet/core/jni/proto/THORChainSwap$Asset;I)V

    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1259
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1260
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->access$1200(Lwallet/core/jni/proto/THORChainSwap$Asset;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSymbolBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1287
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1288
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->access$1400(Lwallet/core/jni/proto/THORChainSwap$Asset;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenId(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1328
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1329
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->access$1500(Lwallet/core/jni/proto/THORChainSwap$Asset;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTokenIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1356
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1357
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->access$1700(Lwallet/core/jni/proto/THORChainSwap$Asset;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
