.class public abstract Lcom/smedialink/model/wallet/home/AccountItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "AccountItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/home/AccountItem$Create;,
        Lcom/smedialink/model/wallet/home/AccountItem$Token;
    }
.end annotation


# instance fields
.field private balance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;


# direct methods
.method private constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/smedialink/model/wallet/home/AccountItem;->balance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/smedialink/model/wallet/home/AccountItem;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V

    return-void
.end method


# virtual methods
.method public getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/AccountItem;->balance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-object v0
.end method

.method public setBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/smedialink/model/wallet/home/AccountItem;->balance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method
