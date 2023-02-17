.class public abstract Lcom/smedialink/common/AppRxEvents;
.super Ljava/lang/Object;
.source "AppRxEvents.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;,
        Lcom/smedialink/common/AppRxEvents$HiddenBalanceSettingChanged;,
        Lcom/smedialink/common/AppRxEvents$SuccessEnterPinCode;,
        Lcom/smedialink/common/AppRxEvents$BinanceWalletScreenNeedUpdate;,
        Lcom/smedialink/common/AppRxEvents$BinanceOpenAuthScreen;,
        Lcom/smedialink/common/AppRxEvents$BinanceAuthHandled;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/common/AppRxEvents;-><init>()V

    return-void
.end method
