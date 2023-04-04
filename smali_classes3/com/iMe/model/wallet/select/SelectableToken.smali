.class public abstract Lcom/iMe/model/wallet/select/SelectableToken;
.super Ljava/lang/Object;
.source "SelectableToken.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/select/SelectableToken$WithLogoUrl;,
        Lcom/iMe/model/wallet/select/SelectableToken$WithResLogo;
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final ticker:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/model/wallet/select/SelectableToken;->id:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/iMe/model/wallet/select/SelectableToken;->ticker:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/iMe/model/wallet/select/SelectableToken;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/model/wallet/select/SelectableToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/wallet/select/SelectableToken;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/select/SelectableToken;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTicker()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/wallet/select/SelectableToken;->ticker:Ljava/lang/String;

    return-object v0
.end method
