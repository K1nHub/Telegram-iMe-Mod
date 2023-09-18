.class public final enum Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;
.super Ljava/lang/Enum;
.source "WalletSendAmountPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendScreenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

.field public static final enum PREPARE:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

.field public static final enum SEND:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    sget-object v1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->SEND:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->PREPARE:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 782
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    const-string v1, "SEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->SEND:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    .line 783
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    const-string v1, "PREPARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->PREPARE:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    invoke-static {}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->$values()[Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    move-result-object v0

    sput-object v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->$VALUES:[Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 781
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;
    .locals 1

    const-class v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    return-object p0
.end method

.method public static values()[Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->$VALUES:[Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    return-object v0
.end method
