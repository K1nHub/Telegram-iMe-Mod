.class Lorg/telegram/ui/DataUsage2Activity$PageAdapter;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
.source "DataUsage2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataUsage2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DataUsage2Activity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/DataUsage2Activity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$PageAdapter;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/DataUsage2Activity;Lorg/telegram/ui/DataUsage2Activity$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lorg/telegram/ui/DataUsage2Activity$PageAdapter;-><init>(Lorg/telegram/ui/DataUsage2Activity;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 0

    .line 143
    check-cast p1, Lorg/telegram/ui/DataUsage2Activity$ListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DataUsage2Activity$ListView;->setType(I)V

    const/4 p2, 0x0

    .line 144
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 2

    .line 138
    new-instance p1, Lorg/telegram/ui/DataUsage2Activity$ListView;

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$PageAdapter;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/DataUsage2Activity$ListView;-><init>(Lorg/telegram/ui/DataUsage2Activity;Landroid/content/Context;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getItemTitle(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 153
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->NetworkUsageRoamingTab:I

    const-string v0, "NetworkUsageRoamingTab"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 152
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->NetworkUsageWiFiTab:I

    const-string v0, "NetworkUsageWiFiTab"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 151
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->NetworkUsageMobileTab:I

    const-string v0, "NetworkUsageMobileTab"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 150
    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->NetworkUsageAllTab:I

    const-string v0, "NetworkUsageAllTab"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
