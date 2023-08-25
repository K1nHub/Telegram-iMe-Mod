.class public final Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;
.super Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;
.source "TokenManagementFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "View"
.end annotation


# instance fields
.field private final isCustomToken:Ljava/lang/Boolean;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/Boolean;)V
    .locals 1

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 470
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 468
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 469
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;->isCustomToken:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 467
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final isCustomToken()Ljava/lang/Boolean;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;->isCustomToken:Ljava/lang/Boolean;

    return-object v0
.end method
