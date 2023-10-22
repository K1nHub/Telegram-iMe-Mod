.class public abstract Lcom/iMe/model/wallet/fragment/TonFragmentItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "TonFragmentItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;,
        Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;
    }
.end annotation


# instance fields
.field private final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem;->title:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/model/wallet/fragment/TonFragmentItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem;->title:Ljava/lang/String;

    return-object v0
.end method
