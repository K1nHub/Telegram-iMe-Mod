.class Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;
.super Ljava/lang/Object;
.source "DrawerLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field public icon:I

.field public id:I

.field public lottieIcon:I

.field private rectIcon:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILcom/iMe/ui/drawer/DrawerSwitchableItem;)V
    .locals 1

    .line 644
    invoke-virtual {p3}, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->title()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    .line 645
    iput-object p3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->rectIcon:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput p3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->icon:I

    .line 657
    iput p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    .line 658
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput p3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->icon:I

    .line 663
    iput p4, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->lottieIcon:I

    .line 664
    iput p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    .line 665
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bind(Lorg/telegram/ui/Cells/DrawerActionCell;)V
    .locals 7

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->rectIcon:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    if-eqz v0, :cond_0

    .line 671
    invoke-static {v0}, Lcom/iMe/common/TelegramThemeKeys$Drawer;->buildDrawerRectIconBackgroundKey(Lcom/iMe/ui/drawer/DrawerSwitchableItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string v0, "iMe_drawer_itemRectIconColor"

    .line 672
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    .line 673
    iget v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->text:Ljava/lang/String;

    iget v4, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->icon:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndRectIcon(ILjava/lang/String;III)V

    goto :goto_0

    .line 675
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->text:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->icon:I

    iget v3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->lottieIcon:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(ILjava/lang/String;II)V

    :goto_0
    return-void
.end method
