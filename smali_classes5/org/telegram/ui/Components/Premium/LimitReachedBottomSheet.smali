.class public Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "LimitReachedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;,
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;
    }
.end annotation


# instance fields
.field chatStartRow:I

.field chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field chatsTitleRow:I

.field private currentValue:I

.field divider:Landroid/view/View;

.field dividerRow:I

.field enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field headerRow:I

.field private inactiveChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field private inactiveChatsSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isVeryLargeFile:Z

.field limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

.field limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

.field private loading:Z

.field loadingRow:I

.field public onShowPremiumScreenRunnable:Ljava/lang/Runnable;

.field public onSuccessRunnable:Ljava/lang/Runnable;

.field parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public parentIsChannel:Z

.field premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field rowCount:I

.field selectedChats:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field final type:I


# direct methods
.method public static synthetic $r8$lambda$90MTyCiKlWjJm7wElrJvzMM3pN8(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadInactiveChannels$9(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JTJ0nZdTl033mQVwumjFnbDz5hs(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$1(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$K1xjp7CwDr2vZx8P08ZEIkOQtVw(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R7X_78b3P7yH98owXvFfoLpfk5w(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$leaveFromSelectedGroups$4(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TM6i3GkMCtnnyrOzF9JVnxhpCkY(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadAdminedChannels$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U4J80825uInFO1Ot5LkRl77Hv7w(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$revokeLinks$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d3_Qibc7_w7QTi-x1xT6lg7ZzNM(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j-VD_K85mAlentLT-QKMXsi9YpQ(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$revokeLinks$8(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rq7ErTevf5G53daitpQ3yoBr-FA(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadInactiveChannels$10(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tpTU7w9RRxiAvdEXI-l8gxZayds(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xnqFHFUJT3Apj52BAd_CdP8FgbQ(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadAdminedChannels$5(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V
    .locals 1

    .line 112
    invoke-static {p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->hasFixedSize(I)Z

    move-result p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    .line 84
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 87
    iput p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    .line 88
    iput p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    .line 89
    iput p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    .line 90
    iput p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    .line 91
    iput p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    .line 94
    iput p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    .line 96
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    .line 98
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    .line 99
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    .line 104
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 113
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 115
    iput p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    .line 116
    iput p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 117
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadAdminedChannels()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    if-ne p3, p1, :cond_1

    .line 121
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadInactiveChannels()V

    .line 123
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeLinks(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method private static getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;
    .locals 7

    .line 483
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 485
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 486
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 487
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 488
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinDialogs:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "LimitReachedPinDialogs"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 489
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinDialogsPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedPinDialogsPremium"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 490
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinDialogsLocked:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedPinDialogsLocked"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    .line 492
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->publicLinksLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 493
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->publicLinksLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 494
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 495
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPublicLinks:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "LimitReachedPublicLinks"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 496
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPublicLinksPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedPublicLinksPremium"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 497
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPublicLinksLocked:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedPublicLinksLocked"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne p0, v4, :cond_2

    .line 499
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 500
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 501
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_folder:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 502
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFolders:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "LimitReachedFolders"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 503
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFoldersPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedFoldersPremium"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 504
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFoldersLocked:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedFoldersLocked"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x4

    if-ne p0, v5, :cond_3

    .line 506
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 507
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 508
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_chats:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 509
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedChatInFolders:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "LimitReachedChatInFolders"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 510
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedChatInFoldersPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedChatInFoldersPremium"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 511
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedChatInFoldersLocked:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedChatInFoldersLocked"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x5

    if-ne p0, v6, :cond_4

    .line 513
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->channelsLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 514
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->channelsLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 515
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_groups:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 516
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedCommunities:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "LimitReachedCommunities"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 517
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedCommunitiesPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedCommunitiesPremium"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 518
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedCommunitiesLocked:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedCommunitiesLocked"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x6

    if-ne p0, p1, :cond_5

    const/16 p0, 0x64

    .line 520
    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    const/16 p0, 0xc8

    .line 521
    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 522
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_folder:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 523
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFileSize:I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "2 GB"

    aput-object v1, p1, v3

    const-string v4, "4 GB"

    aput-object v4, p1, v2

    const-string v5, "LimitReachedFileSize"

    invoke-static {v5, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 524
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFileSizePremium:I

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v4, p1, v3

    const-string v4, "LimitReachedFileSizePremium"

    invoke-static {v4, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 525
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFileSizeLocked:I

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v3

    const-string v1, "LimitReachedFileSizeLocked"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x7

    if-ne p0, p1, :cond_6

    .line 527
    iput v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 528
    iput v5, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 529
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_accounts:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 530
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedAccounts:I

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "LimitReachedAccounts"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 531
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedAccountsPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedAccountsPremium"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    .line 532
    iget v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    :cond_6
    :goto_0
    return-object v0
.end method

.method private static hasFixedSize(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$leaveFromSelectedGroups$4(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 227
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 228
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    .line 229
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 230
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 231
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v2, v3, p2}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$5(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 547
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 550
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    const/4 v0, 0x0

    .line 553
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 554
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    if-eqz v1, :cond_0

    .line 555
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 560
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ltz v0, :cond_2

    if-eqz p1, :cond_2

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 565
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setIconValue(I)V

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    .line 568
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->startDelayedAnimation()V

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 544
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadInactiveChannels$10(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    if-nez p2, :cond_5

    .line 647
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;

    .line 648
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 649
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 650
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 651
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    .line 652
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->dates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    const v4, 0x15180

    .line 653
    div-int/2addr v3, v4

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_0

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "Days"

    .line 657
    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/16 v4, 0x16d

    if-ge v3, v4, :cond_1

    .line 659
    div-int/lit8 v3, v3, 0x1e

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "Months"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 661
    :cond_1
    div-int/lit16 v3, v3, 0x16d

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "Years"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 663
    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    const/4 v5, 0x2

    const-string v6, "InactiveChatSignature"

    const-string v7, "Members"

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    .line 664
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v7, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 665
    sget v4, Lorg/telegram/messenger/R$string;->InactiveChatSignature:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    aput-object v3, v5, v8

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 666
    :cond_2
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 667
    sget v2, Lorg/telegram/messenger/R$string;->InactiveChannelSignature:I

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "InactiveChannelSignature"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 669
    :cond_3
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v7, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 670
    sget v4, Lorg/telegram/messenger/R$string;->InactiveChatSignature:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    aput-object v3, v5, v8

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 673
    :cond_4
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$loadInactiveChannels$9(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V
    .locals 1

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 677
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 678
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 679
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    const/4 p2, 0x0

    .line 681
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    if-eqz v0, :cond_0

    .line 683
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 687
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 688
    iget p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ltz p2, :cond_2

    if-eqz p1, :cond_2

    .line 689
    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 692
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    if-nez p1, :cond_3

    .line 693
    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    .line 695
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget p2, p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 697
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    if-nez p2, :cond_4

    return-void

    .line 701
    :cond_4
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setIconValue(I)V

    .line 702
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    .line 703
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->startDelayedAnimation()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;I)V
    .locals 2

    .line 147
    instance-of p2, p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 148
    check-cast p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .line 149
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 150
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChecked(ZZ)V

    .line 156
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    goto :goto_2

    .line 157
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz p2, :cond_3

    .line 158
    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 159
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 166
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;I)Z
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    const/4 p2, 0x0

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    return p2
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 2

    .line 175
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p1, :cond_1

    return-void

    .line 182
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 183
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 185
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitTypeToServerString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onShowPremiumScreenRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 187
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 189
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 176
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/view/View;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 195
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 196
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeSelectedLinks()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 198
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->leaveFromSelectedGroups()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$revokeLinks$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 627
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onSuccessRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$revokeLinks$8(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 620
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p2, 0x0

    .line 621
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 622
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    .line 623
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 624
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    const-string v0, ""

    .line 625
    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    .line 626
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    const/16 v2, 0x40

    invoke-virtual {v0, p3, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private leaveFromSelectedGroups()V
    .locals 7

    .line 215
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "LeaveCommunities"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 219
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 220
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 221
    sget v6, Lorg/telegram/messenger/R$string;->ChannelLeaveAlertWithName:I

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v5, v4

    const-string v3, "ChannelLeaveAlertWithName"

    invoke-static {v3, v6, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 223
    :cond_0
    sget v3, Lorg/telegram/messenger/R$string;->ChatsLeaveAlert:I

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ChatsLeaveAlert"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 225
    :goto_0
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 226
    sget v3, Lorg/telegram/messenger/R$string;->RevokeButton:I

    const-string v4, "RevokeButton"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 234
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 236
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, "dialogTextRed2"

    .line 238
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public static limitTypeToServerString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const-string p0, "double_limits__stickers_faved"

    return-object p0

    :pswitch_2
    const-string p0, "double_limits__saved_gifs"

    return-object p0

    :pswitch_3
    const-string p0, "double_limits__caption_length"

    return-object p0

    :pswitch_4
    const-string p0, "double_limits__upload_max_fileparts"

    return-object p0

    :pswitch_5
    const-string p0, "double_limits__channels"

    return-object p0

    :pswitch_6
    const-string p0, "double_limits__dialog_filters_chats"

    return-object p0

    :pswitch_7
    const-string p0, "double_limits__dialog_filters"

    return-object p0

    :pswitch_8
    const-string p0, "double_limits__channels_public"

    return-object p0

    :pswitch_9
    const-string p0, "double_limits__dialog_pinned"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private loadAdminedChannels()V
    .locals 3

    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 542
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 543
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    .line 544
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadInactiveChannels()V
    .locals 3

    const/4 v0, 0x1

    .line 642
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 643
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 644
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getInactiveChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getInactiveChannels;-><init>()V

    .line 645
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private revokeLinks(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .line 602
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 603
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "RevokeLinks"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 604
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 605
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 606
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentIsChannel:Z

    const-string v5, "/"

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    .line 607
    sget v4, Lorg/telegram/messenger/R$string;->RevokeLinkAlertChannel:I

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v6, v3

    const-string v1, "RevokeLinkAlertChannel"

    invoke-static {v1, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 609
    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->RevokeLinkAlert:I

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v6, v3

    const-string v1, "RevokeLinkAlert"

    invoke-static {v1, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 612
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentIsChannel:Z

    if-eqz v1, :cond_2

    .line 613
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLinksAlertChannel:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RevokeLinksAlertChannel"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 615
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLinksAlert:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RevokeLinksAlert"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 618
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 619
    sget v1, Lorg/telegram/messenger/R$string;->RevokeButton:I

    const-string v2, "RevokeButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 633
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 634
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 635
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const-string v0, "dialogTextRed2"

    .line 637
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method private revokeSelectedLinks()V
    .locals 2

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 598
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeLinks(Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateButton()V
    .locals 4

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 245
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "RevokeLinks"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "LeaveCommunities"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 252
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->clearOverlayText()V

    :goto_1
    return-void
.end method

.method private updateRows()V
    .locals 3

    const/4 v0, 0x0

    .line 573
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    const/4 v1, -0x1

    .line 574
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    .line 575
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    .line 576
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 577
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    .line 578
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->hasFixedSize(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 579
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    add-int/lit8 v0, v1, 0x1

    .line 580
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    .line 581
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 582
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    goto :goto_0

    .line 584
    :cond_0
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    .line 585
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 586
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    goto :goto_0

    .line 588
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    .line 592
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 1

    .line 270
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 265
    sget v0, Lorg/telegram/messenger/R$string;->LimitReached:I

    const-string v1, "LimitReached"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 10

    .line 128
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    .line 129
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 133
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->hasFixedSize:Z

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    const-string v0, "dialogBackground"

    .line 141
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    const/4 v3, -0x1

    const/16 v4, 0x48

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x50

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/16 v9, 0xc

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v0, 0x48

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 169
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Landroid/widget/TextView;

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance p1, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    return-void
.end method

.method public setCurrentValue(I)V
    .locals 0

    .line 370
    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    return-void
.end method

.method public setVeryLargeFile(Z)V
    .locals 0

    .line 374
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    .line 375
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    return-void
.end method

.method public updatePremiumButtonText()V
    .locals 3

    .line 205
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->IncreaseLimit:I

    const-string v2, "IncreaseLimit"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$raw;->addone_icon:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$raw;->double_icon:I

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    goto :goto_2

    .line 206
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->hideIcon()V

    :goto_2
    return-void
.end method
