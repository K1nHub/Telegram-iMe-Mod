.class public final Lorg/solovyev/android/checkout/ResponseCodes;
.super Ljava/lang/Object;
.source "ResponseCodes.java"


# direct methods
.method public static toString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "NULL_INTENT"

    return-object p0

    :pswitch_1
    const-string p0, "WRONG_SIGNATURE"

    return-object p0

    :pswitch_2
    const-string p0, "EXCEPTION"

    return-object p0

    :pswitch_3
    const-string p0, "SERVICE_NOT_CONNECTED"

    return-object p0

    :pswitch_4
    const-string p0, "ITEM_NOT_OWNED"

    return-object p0

    :pswitch_5
    const-string p0, "ITEM_ALREADY_OWNED"

    return-object p0

    :pswitch_6
    const-string p0, "ERROR"

    return-object p0

    :pswitch_7
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_8
    const-string p0, "ITEM_UNAVAILABLE"

    return-object p0

    :pswitch_9
    const-string p0, "BILLING_UNAVAILABLE"

    return-object p0

    :pswitch_a
    const-string p0, "ACCOUNT_ERROR"

    return-object p0

    :pswitch_b
    const-string p0, "USER_CANCELED"

    return-object p0

    :pswitch_c
    const-string p0, "OK"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
