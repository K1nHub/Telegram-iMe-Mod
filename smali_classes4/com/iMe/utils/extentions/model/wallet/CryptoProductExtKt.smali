.class public final Lcom/iMe/utils/extentions/model/wallet/CryptoProductExtKt;
.super Ljava/lang/Object;
.source "CryptoProductExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/extentions/model/wallet/CryptoProductExtKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final getBackgroundColor(Lcom/iMe/storage/domain/model/billing/CryptoProduct;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/iMe/utils/extentions/model/wallet/CryptoProductExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 13
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$color;->crypto_product_custom:I

    goto :goto_0

    .line 12
    :pswitch_1
    sget p0, Lorg/telegram/messenger/R$color;->crypto_product_1500:I

    goto :goto_0

    .line 11
    :pswitch_2
    sget p0, Lorg/telegram/messenger/R$color;->crypto_product_1000:I

    goto :goto_0

    .line 10
    :pswitch_3
    sget p0, Lorg/telegram/messenger/R$color;->crypto_product_500:I

    goto :goto_0

    .line 9
    :pswitch_4
    sget p0, Lorg/telegram/messenger/R$color;->crypto_product_250:I

    goto :goto_0

    .line 8
    :pswitch_5
    sget p0, Lorg/telegram/messenger/R$color;->crypto_product_100:I

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
