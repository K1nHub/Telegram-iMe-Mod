.class public final Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;
.super Lcom/iMe/model/wallet/details/TokenDetailsArgs;
.source "TokenDetailsArgs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/details/TokenDetailsArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Crypto"
.end annotation


# instance fields
.field private final token:Lcom/iMe/model/wallet/home/AccountItem$Token;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/home/AccountItem$Token;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->token:Lcom/iMe/model/wallet/home/AccountItem$Token;

    return-void
.end method


# virtual methods
.method public final getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->token:Lcom/iMe/model/wallet/home/AccountItem$Token;

    return-object v0
.end method
