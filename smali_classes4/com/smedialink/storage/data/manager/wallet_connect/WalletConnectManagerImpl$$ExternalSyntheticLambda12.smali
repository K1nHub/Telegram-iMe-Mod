.class public final synthetic Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda12;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda12;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda12;->INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda12;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/reactivex/observables/GroupedObservable;

    invoke-static {p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->$r8$lambda$Dj9oPDc2mB9M68ngGA3661OXyTY(Lio/reactivex/observables/GroupedObservable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
