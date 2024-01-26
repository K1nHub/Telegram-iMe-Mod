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
.field bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

.field public icon:I

.field public id:I

.field private rectIcon:Lcom/iMe/ui/drawer/DrawerItem;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILcom/iMe/ui/drawer/DrawerItem;)V
    .locals 1

    .line 697
    invoke-virtual {p3}, Lcom/iMe/ui/drawer/DrawerItem;->title()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    .line 698
    iput-object p3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->rectIcon:Lcom/iMe/ui/drawer/DrawerItem;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    iput p3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->icon:I

    .line 710
    iput p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    .line 711
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 4

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 716
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    const/16 p1, 0x10

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    return-void
.end method


# virtual methods
.method public bind(Lorg/telegram/ui/Cells/DrawerActionCell;)V
    .locals 4

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/DrawerActionCell;->setBot(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    goto :goto_1

    .line 723
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->text:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->icon:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->rectIcon:Lcom/iMe/ui/drawer/DrawerItem;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(ILjava/lang/String;IZ)V

    :goto_1
    return-void
.end method
