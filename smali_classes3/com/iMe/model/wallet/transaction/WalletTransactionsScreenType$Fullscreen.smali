.class public final Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;
.super Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;
.source "WalletTransactionsScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fullscreen"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;

    invoke-direct {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;->INSTANCE:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
