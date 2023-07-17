.class public final Lcom/iMe/utils/extentions/model/wallet/StatusExtKt;
.super Ljava/lang/Object;
.source "StatusExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/extentions/model/wallet/StatusExtKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final getColorKey(Lcom/iMe/storage/data/network/model/response/base/Status;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/iMe/utils/extentions/model/wallet/StatusExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 11
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 10
    :cond_1
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    goto :goto_0

    .line 9
    :cond_2
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    goto :goto_0

    .line 8
    :cond_3
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    :goto_0
    return p0
.end method
