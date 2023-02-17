.class public final Lcom/smedialink/utils/extentions/model/wallet/StatusExtKt;
.super Ljava/lang/Object;
.source "StatusExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/utils/extentions/model/wallet/StatusExtKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final color(Lcom/smedialink/storage/data/network/model/response/base/Status;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/smedialink/utils/extentions/model/wallet/StatusExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const-string v1, "statisticChartLine_red"

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string v1, "windowBackgroundWhiteGrayText2"

    goto :goto_0

    :cond_2
    const-string v1, "statisticChartLine_green"

    :cond_3
    :goto_0
    return-object v1
.end method
