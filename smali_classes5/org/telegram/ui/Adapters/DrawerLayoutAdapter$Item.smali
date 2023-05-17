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

.field private rectIcon:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILcom/iMe/ui/drawer/DrawerSwitchableItem;)V
    .locals 1

    .line 643
    invoke-virtual {p3}, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->title()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    .line 644
    iput-object p3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->rectIcon:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput p3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->icon:I

    .line 655
    iput p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    .line 656
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bind(Lorg/telegram/ui/Cells/DrawerActionCell;)V
    .locals 4

    .line 660
    iget v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->text:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->icon:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->rectIcon:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(ILjava/lang/String;IZ)V

    return-void
.end method
