.class public abstract Lcom/iMe/model/wallet/transaction/TransactionActionItem;
.super Ljava/lang/Object;
.source "TransactionActionItem.kt"

# interfaces
.implements Lcom/iMe/model/wallet/ActionItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/transaction/TransactionActionItem$Boost;,
        Lcom/iMe/model/wallet/transaction/TransactionActionItem$Cancel;,
        Lcom/iMe/model/wallet/transaction/TransactionActionItem$Copy;,
        Lcom/iMe/model/wallet/transaction/TransactionActionItem$OpenScan;,
        Lcom/iMe/model/wallet/transaction/TransactionActionItem$Profile;,
        Lcom/iMe/model/wallet/transaction/TransactionActionItem$Send;,
        Lcom/iMe/model/wallet/transaction/TransactionActionItem$Support;
    }
.end annotation


# instance fields
.field private final icon:I

.field private final title:I

.field private final titleString:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/iMe/model/wallet/transaction/TransactionActionItem;->title:I

    .line 10
    iput p2, p0, Lcom/iMe/model/wallet/transaction/TransactionActionItem;->icon:I

    .line 11
    iput-object p3, p0, Lcom/iMe/model/wallet/transaction/TransactionActionItem;->titleString:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    move-object p3, p5

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/iMe/model/wallet/transaction/TransactionActionItem;-><init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/model/wallet/transaction/TransactionActionItem;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/model/wallet/transaction/TransactionActionItem;->icon:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/model/wallet/transaction/TransactionActionItem;->title:I

    return v0
.end method

.method public synthetic getTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/model/wallet/ActionItem$-CC;->$default$getTitle(Lcom/iMe/model/wallet/ActionItem;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionActionItem;->titleString:Ljava/lang/String;

    return-object v0
.end method
