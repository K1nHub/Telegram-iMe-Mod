.class public final Lcom/iMe/common/AppRxEvents$SuccessEnterPinCode;
.super Lcom/iMe/common/AppRxEvents;
.source "AppRxEvents.kt"

# interfaces
.implements Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/common/AppRxEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuccessEnterPinCode"
.end annotation


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/iMe/common/AppRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
