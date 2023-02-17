.class Lorg/telegram/ui/Components/SharedMediaLayout$31;
.super Ljava/lang/Object;
.source "SharedMediaLayout.java"

# interfaces
.implements Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$Su7ee1tu3_Xop4NulNecw1LcrqQ(Lorg/telegram/ui/Components/SharedMediaLayout$31;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$31;->lambda$onLinkPress$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 5376
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLinkPress$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p3, :cond_0

    .line 5394
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8200(Lorg/telegram/ui/Components/SharedMediaLayout;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_3

    const-string p2, "mailto:"

    .line 5397
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x7

    .line 5398
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "tel:"

    .line 5399
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 5400
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5402
    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 1

    .line 5384
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public needOpenWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 5379
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8000(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public onLinkPress(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 5390
    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 5391
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 5392
    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    const-string v3, "Open"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lorg/telegram/messenger/R$string;->Copy:I

    const-string v3, "Copy"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$31$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$31$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$31;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 5405
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 5407
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8200(Lorg/telegram/ui/Components/SharedMediaLayout;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
