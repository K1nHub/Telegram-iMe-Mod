.class public final Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "THORChainSwap.java"

# interfaces
.implements Lwallet/core/jni/proto/THORChainSwap$SwapInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/THORChainSwap$SwapInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/THORChainSwap$SwapInput;",
        "Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/THORChainSwap$SwapInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2561
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$1900()Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/THORChainSwap$1;)V
    .locals 0

    .line 2554
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAffiliateFeeAddress()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 3170
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3171
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$4500(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public clearAffiliateFeeRateBp()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 3239
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3240
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$4800(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public clearExpirationTime()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 3363
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3364
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$5400(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public clearExtraMemo()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 3308
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3309
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$5100(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public clearFromAddress()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 2685
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2686
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2400(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public clearFromAmount()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 3032
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3033
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$3900(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public clearFromAsset()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 2631
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2632
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2200(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public clearRouterAddress()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 2963
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2964
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$3600(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 2825
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2826
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$3000(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public clearToAmountLimit()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 3101
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3102
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$4200(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public clearToAsset()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 2771
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2772
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2800(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public clearVaultAddress()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 2894
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2895
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$3300(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V

    return-object p0
.end method

.method public getAffiliateFeeAddress()Ljava/lang/String;
    .locals 1

    .line 3131
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getAffiliateFeeAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAffiliateFeeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3144
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getAffiliateFeeAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAffiliateFeeRateBp()Ljava/lang/String;
    .locals 1

    .line 3200
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getAffiliateFeeRateBp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAffiliateFeeRateBpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getAffiliateFeeRateBpBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .line 3338
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getExpirationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraMemo()Ljava/lang/String;
    .locals 1

    .line 3269
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getExtraMemo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3282
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getExtraMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 2646
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getFromAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAmount()Ljava/lang/String;
    .locals 1

    .line 2993
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getFromAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3006
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getFromAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAsset()Lwallet/core/jni/proto/THORChainSwap$Asset;
    .locals 1

    .line 2585
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getFromAsset()Lwallet/core/jni/proto/THORChainSwap$Asset;

    move-result-object v0

    return-object v0
.end method

.method public getRouterAddress()Ljava/lang/String;
    .locals 1

    .line 2924
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getRouterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRouterAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2937
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getRouterAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 2786
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2799
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAmountLimit()Ljava/lang/String;
    .locals 1

    .line 3062
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getToAmountLimit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAmountLimitBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getToAmountLimitBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAsset()Lwallet/core/jni/proto/THORChainSwap$Asset;
    .locals 1

    .line 2725
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getToAsset()Lwallet/core/jni/proto/THORChainSwap$Asset;

    move-result-object v0

    return-object v0
.end method

.method public getVaultAddress()Ljava/lang/String;
    .locals 1

    .line 2855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getVaultAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVaultAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2868
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getVaultAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasFromAsset()Z
    .locals 1

    .line 2574
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->hasFromAsset()Z

    move-result v0

    return v0
.end method

.method public hasToAsset()Z
    .locals 1

    .line 2714
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->hasToAsset()Z

    move-result v0

    return v0
.end method

.method public mergeFromAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2620
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2621
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2100(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-object p0
.end method

.method public mergeToAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2760
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2761
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2700(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-object p0
.end method

.method public setAffiliateFeeAddress(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3157
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3158
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$4400(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAffiliateFeeAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3185
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3186
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$4600(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAffiliateFeeRateBp(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3226
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3227
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$4700(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAffiliateFeeRateBpBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3254
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3255
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$4900(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExpirationTime(J)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$5300(Lwallet/core/jni/proto/THORChainSwap$SwapInput;J)V

    return-object p0
.end method

.method public setExtraMemo(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3295
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3296
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$5000(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExtraMemoBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3323
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3324
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$5200(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFromAddress(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2672
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2673
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2300(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2700
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2701
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2500(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFromAmount(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3019
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3020
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$3800(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3047
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3048
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$4000(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFromAsset(Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2608
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2609
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2000(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-object p0
.end method

.method public setFromAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2595
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2596
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2000(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-object p0
.end method

.method public setRouterAddress(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2950
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2951
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$3500(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRouterAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2978
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$3700(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2812
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2813
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2900(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2840
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2841
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$3100(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAmountLimit(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3088
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3089
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$4100(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAmountLimitBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3116
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3117
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$4300(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAsset(Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2748
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2749
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2600(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-object p0
.end method

.method public setToAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2735
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2736
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$2600(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-object p0
.end method

.method public setVaultAddress(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2881
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2882
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$3200(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVaultAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2909
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2910
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->access$3400(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
