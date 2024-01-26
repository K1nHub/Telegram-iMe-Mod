.class public final Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Algorand.java"

# interfaces
.implements Lwallet/core/jni/proto/Algorand$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Algorand$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Algorand$SigningInput;",
        "Lwallet/core/jni/proto/Algorand$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Algorand$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1980
    invoke-static {}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$2000()Lwallet/core/jni/proto/Algorand$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Algorand$1;)V
    .locals 0

    .line 1973
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAssetOptIn()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 2444
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2445
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$4500(Lwallet/core/jni/proto/Algorand$SigningInput;)V

    return-object p0
.end method

.method public clearAssetTransfer()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 2396
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2397
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$4200(Lwallet/core/jni/proto/Algorand$SigningInput;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 2300
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2301
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$3600(Lwallet/core/jni/proto/Algorand$SigningInput;)V

    return-object p0
.end method

.method public clearFirstRound()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 2220
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$3200(Lwallet/core/jni/proto/Algorand$SigningInput;)V

    return-object p0
.end method

.method public clearGenesisHash()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 2100
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2101
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$2600(Lwallet/core/jni/proto/Algorand$SigningInput;)V

    return-object p0
.end method

.method public clearGenesisId()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 2045
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2046
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$2300(Lwallet/core/jni/proto/Algorand$SigningInput;)V

    return-object p0
.end method

.method public clearLastRound()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 2260
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2261
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$3400(Lwallet/core/jni/proto/Algorand$SigningInput;)V

    return-object p0
.end method

.method public clearMessageOneof()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 1990
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$2100(Lwallet/core/jni/proto/Algorand$SigningInput;)V

    return-object p0
.end method

.method public clearNote()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 2140
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2141
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$2800(Lwallet/core/jni/proto/Algorand$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 2180
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2181
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$3000(Lwallet/core/jni/proto/Algorand$SigningInput;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 2348
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2349
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$3900(Lwallet/core/jni/proto/Algorand$SigningInput;)V

    return-object p0
.end method

.method public getAssetOptIn()Lwallet/core/jni/proto/Algorand$AssetOptIn;
    .locals 1

    .line 2413
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getAssetOptIn()Lwallet/core/jni/proto/Algorand$AssetOptIn;

    move-result-object v0

    return-object v0
.end method

.method public getAssetTransfer()Lwallet/core/jni/proto/Algorand$AssetTransfer;
    .locals 1

    .line 2365
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getAssetTransfer()Lwallet/core/jni/proto/Algorand$AssetTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 2275
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstRound()J
    .locals 2

    .line 2195
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getFirstRound()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenesisHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getGenesisHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGenesisId()Ljava/lang/String;
    .locals 1

    .line 2006
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getGenesisId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenesisIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getGenesisIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLastRound()J
    .locals 2

    .line 2235
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getLastRound()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;
    .locals 1

    .line 1986
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getMessageOneofCase()Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getNote()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2115
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getNote()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2155
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Algorand$Transfer;
    .locals 1

    .line 2317
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getTransfer()Lwallet/core/jni/proto/Algorand$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasAssetOptIn()Z
    .locals 1

    .line 2406
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->hasAssetOptIn()Z

    move-result v0

    return v0
.end method

.method public hasAssetTransfer()Z
    .locals 1

    .line 2358
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->hasAssetTransfer()Z

    move-result v0

    return v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 2310
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeAssetOptIn(Lwallet/core/jni/proto/Algorand$AssetOptIn;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2436
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2437
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$4400(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$AssetOptIn;)V

    return-object p0
.end method

.method public mergeAssetTransfer(Lwallet/core/jni/proto/Algorand$AssetTransfer;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2388
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$4100(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$AssetTransfer;)V

    return-object p0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/Algorand$Transfer;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2340
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2341
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$3800(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$Transfer;)V

    return-object p0
.end method

.method public setAssetOptIn(Lwallet/core/jni/proto/Algorand$AssetOptIn$Builder;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2428
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2429
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Algorand$AssetOptIn;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$4300(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$AssetOptIn;)V

    return-object p0
.end method

.method public setAssetOptIn(Lwallet/core/jni/proto/Algorand$AssetOptIn;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2419
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$4300(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$AssetOptIn;)V

    return-object p0
.end method

.method public setAssetTransfer(Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2380
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2381
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$4000(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$AssetTransfer;)V

    return-object p0
.end method

.method public setAssetTransfer(Lwallet/core/jni/proto/Algorand$AssetTransfer;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2371
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2372
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$4000(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$AssetTransfer;)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2287
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2288
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$3500(Lwallet/core/jni/proto/Algorand$SigningInput;J)V

    return-object p0
.end method

.method public setFirstRound(J)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2207
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2208
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$3100(Lwallet/core/jni/proto/Algorand$SigningInput;J)V

    return-object p0
.end method

.method public setGenesisHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2087
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2088
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$2500(Lwallet/core/jni/proto/Algorand$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGenesisId(Ljava/lang/String;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2032
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2033
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$2200(Lwallet/core/jni/proto/Algorand$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGenesisIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2060
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2061
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$2400(Lwallet/core/jni/proto/Algorand$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLastRound(J)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2247
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2248
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$3300(Lwallet/core/jni/proto/Algorand$SigningInput;J)V

    return-object p0
.end method

.method public setNote(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2127
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2128
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$2700(Lwallet/core/jni/proto/Algorand$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2167
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2168
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$2900(Lwallet/core/jni/proto/Algorand$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Algorand$Transfer$Builder;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2332
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2333
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Algorand$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$3700(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$Transfer;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Algorand$Transfer;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2323
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2324
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->access$3700(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$Transfer;)V

    return-object p0
.end method
