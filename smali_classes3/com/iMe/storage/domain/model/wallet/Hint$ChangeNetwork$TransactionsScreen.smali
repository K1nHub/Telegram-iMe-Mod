.class public final Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;
.super Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork;
.source "Hint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionsScreen"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "change_network_transactions"

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0, v0, v1}, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
