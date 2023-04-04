.class public abstract Lcom/iMe/common/AppRxEvents;
.super Ljava/lang/Object;
.source "AppRxEvents.kt"

# interfaces
.implements Lcom/iMe/storage/domain/utils/rx/event/RxEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/common/AppRxEvents$BinanceAuthHandled;,
        Lcom/iMe/common/AppRxEvents$BinanceOpenAuthScreen;,
        Lcom/iMe/common/AppRxEvents$BinanceWalletScreenNeedUpdate;,
        Lcom/iMe/common/AppRxEvents$HiddenBalanceSettingChanged;,
        Lcom/iMe/common/AppRxEvents$SuccessEnterPinCode;,
        Lcom/iMe/common/AppRxEvents$UpdateWalletScreen;
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

    invoke-direct {p0}, Lcom/iMe/common/AppRxEvents;-><init>()V

    return-void
.end method
