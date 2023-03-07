.class Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$5;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ChatAttachAlertDocumentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 334
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$5;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/high16 v0, 0x4f000000

    const/4 v1, 0x0

    .line 339
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 340
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    .line 341
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$5;->paint:Landroid/graphics/Paint;

    const-string v1, "dialogBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
