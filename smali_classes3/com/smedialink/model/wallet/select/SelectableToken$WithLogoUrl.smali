.class public abstract Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;
.super Lcom/smedialink/model/wallet/select/SelectableToken;
.source "SelectableToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/select/SelectableToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithLogoUrl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final logoUrl:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final ticker:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smedialink/model/wallet/select/SelectableToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-object p1, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;->id:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;->ticker:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;->name:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;->logoUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTicker()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;->ticker:Ljava/lang/String;

    return-object v0
.end method
