.class public final Lcom/iMe/mapper/fragment/TonFragmentProductUiMappingKt;
.super Ljava/lang/Object;
.source "TonFragmentProductUiMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonFragmentProductUiMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonFragmentProductUiMapping.kt\ncom/iMe/mapper/fragment/TonFragmentProductUiMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n*L\n1#1,105:1\n1559#2:106\n1590#2,4:107\n1549#2:111\n1620#2,3:112\n6#3,6:115\n*S KotlinDebug\n*F\n+ 1 TonFragmentProductUiMapping.kt\ncom/iMe/mapper/fragment/TonFragmentProductUiMappingKt\n*L\n21#1:106\n21#1:107,4\n41#1:111\n41#1:112,3\n61#1:115,6\n*E\n"
.end annotation


# direct methods
.method private static final formatTimeLeft(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-wide/16 v0, 0x0

    .line 63
    :try_start_0
    sget-object v2, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ISO_EXTENDED:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    const/4 v4, 0x0

    const-string v3, "UTC"

    .line 65
    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p0

    .line 62
    invoke-static/range {v2 .. v7}, Lcom/iMe/utils/formatter/DateFormatter;->parse$default(Lcom/iMe/utils/formatter/DateFormatter$DateType;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;ILjava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v2, v4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    move-wide v2, v0

    :goto_0
    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    .line 69
    sget p0, Lorg/telegram/messenger/R$string;->Expired:I

    const-string v0, "Expired"

    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(\"Expired\", R.string.Expired)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 72
    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result p0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_1

    .line 74
    sget p0, Lorg/telegram/messenger/R$string;->fragment_username_details_time_left_less_than_minute:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v7

    cmp-long v9, v7, v0

    if-lez v9, :cond_2

    long-to-int v9, v7

    new-array v10, v5, [Ljava/lang/Object;

    const-string v11, "Days"

    .line 79
    invoke-static {v11, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v7

    sub-long/2addr v2, v7

    .line 83
    :cond_2
    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    cmp-long v8, v6, v0

    const-string v9, " "

    if-lez v8, :cond_5

    .line 85
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_3

    move v8, v4

    goto :goto_1

    :cond_3
    move v8, v5

    :goto_1
    if-eqz v8, :cond_4

    .line 86
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    long-to-int v8, v6

    new-array v10, v5, [Ljava/lang/Object;

    const-string v11, "Hours"

    .line 88
    invoke-static {v11, v8, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    sub-long/2addr v2, v6

    :cond_5
    cmp-long v0, v2, v0

    if-lez v0, :cond_8

    .line 93
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v5

    :goto_2
    if-eqz v0, :cond_7

    .line 94
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    long-to-int v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Minutes"

    .line 96
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    :goto_3
    sget v0, Lorg/telegram/messenger/R$string;->fragment_username_details_time_left:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v5

    .line 101
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "formatStringInternal(\n  \u2026       timeLeftText\n    )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final mapPremiumPlanToUi(Ljava/util/List;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;",
            ">;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1559
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;

    .line 23
    new-instance v13, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    .line 24
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->getPrice()D

    move-result-wide v6

    .line 26
    sget v5, Lorg/telegram/messenger/R$string;->fragment_premium_product_price:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->getPrice()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v9, v11, v10, v11}, Lcom/iMe/utils/formatter/BalanceFormatter;->format$default(Ljava/lang/Number;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 25
    invoke-interface {p1, v5, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x7e

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->getFiatPrice()Ljava/lang/String;

    move-result-object v9

    .line 29
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v9, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v9

    .line 29
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 32
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->getMonths()I

    move-result v10

    .line 33
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->getDiscount()Ljava/lang/String;

    move-result-object v11

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v12

    move-object v5, v13

    .line 23
    invoke-direct/range {v5 .. v12}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;-><init>(DLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1592
    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final mapTonFragmentProductToUi(Ljava/util/List;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
            ">;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;

    .line 44
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;->getUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@"

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;->getPrice()Ljava/lang/String;

    move-result-object v6

    .line 47
    sget v2, Lorg/telegram/messenger/R$string;->fragment_premium_product_price:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 48
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;->getPrice()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 46
    invoke-interface {p1, v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;->getFiatPrice()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;->getTimestamp()Ljava/lang/String;

    move-result-object v10

    .line 54
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/mapper/fragment/TonFragmentProductUiMappingKt;->formatTimeLeft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 43
    new-instance v1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
