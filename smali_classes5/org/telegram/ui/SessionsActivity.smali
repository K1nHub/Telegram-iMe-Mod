.class public Lorg/telegram/ui/SessionsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SessionsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SessionsActivity$Delegate;,
        Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;,
        Lorg/telegram/ui/SessionsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

.field private currentSessionRow:I

.field private currentSessionSectionRow:I

.field private currentType:I

.field private delegate:Lorg/telegram/ui/SessionsActivity$Delegate;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private fragmentOpened:Z

.field private globalFlickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private highlightLinkDesktopDevice:Z

.field private listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private noOtherSessionsRow:I

.field private otherSessionsEndRow:I

.field private otherSessionsSectionRow:I

.field private otherSessionsStartRow:I

.field private otherSessionsTerminateDetail:I

.field private passwordSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private passwordSessionsDetailRow:I

.field private passwordSessionsEndRow:I

.field private passwordSessionsSectionRow:I

.field private passwordSessionsStartRow:I

.field private qrCodeDividerRow:I

.field private qrCodeRow:I

.field private repeatLoad:I

.field private rowCount:I

.field private sessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private terminateAllSessionsDetailRow:I

.field private terminateAllSessionsRow:I

.field private ttlDays:I

.field private ttlDivideRow:I

.field private ttlHeaderRow:I

.field private ttlRow:I

.field private undoView:Lorg/telegram/ui/Components/UndoView;


# direct methods
.method public static synthetic $r8$lambda$-8PrPe3xxRfekM9wXF-1WB47_4g(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0UAwaNc3nHsdNe1S768AmwQZfF4(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$5kirAY7Uu_lV2nZz9I1dOIbA6PM(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BJYJk7MwQTkOMBcFDWkUHr-mrFg(Lorg/telegram/ui/SessionsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$onRequestPermissionsResultFragment$20(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$D-7OCMT-dPOwzluFyCKc0AMditI(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FdzecPWpJONSxU5X94_8k9G6TGk(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$9(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LUYzvtY9229y32GWcrw_PMtzOrQ(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$1(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MjjIcpvN12nmiimSmcEcKgGN6Vk(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NPbV7_d60jfsnWcTpP7RGK3d9y8(Lorg/telegram/ui/SessionsActivity;I[ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$12(I[ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PR4oj7H6yGeT7W-UehwXHX0MsQE(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$11(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TJElT_mKOP2NEghJqClkVykJMX0(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$8(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z_MTITJLB7mwYR-FoejhIaxD_K4(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$10(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gFCxvPC2MZUQx6wbRcc7LoXFfVI(Lorg/telegram/ui/SessionsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$13(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDBWEZ6OdeQmBYppyDsqQ_iLfx4(Lorg/telegram/ui/SessionsActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$14(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$li5Hsk0h0FkssPfnM5WoExBk7Zw(Lorg/telegram/ui/SessionsActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$19(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ofRYLBx97UxL9kSDFLOHYpQgl3c(Lorg/telegram/ui/SessionsActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$16(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qHMGzp2pcttrnhmb9EtdoAcdses(Lorg/telegram/ui/SessionsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rc4MA62yyo-r6NpH2wZFI6n_U1U(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$18(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uE3OQ4qSQogRCOiW88b_NMyCHpg(Lorg/telegram/ui/SessionsActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SessionsActivity;->lambda$loadSessions$17(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$umcFwH049nR_wKlxBYGrr9osH1E([ZLandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$7([ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yn0tMjLf4OWWVjZ3yItxNE42Jh4(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity;->lambda$createView$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    .line 149
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsEndRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->ttlRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsDetailRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeDividerRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->ttlDivideRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsSectionRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->ttlHeaderRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/tgnet/TLRPC$TL_authorization;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->globalFlickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/SessionsActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lorg/telegram/ui/SessionsActivity;->highlightLinkDesktopDevice:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/SessionsActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/SessionsActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lorg/telegram/ui/SessionsActivity;->fragmentOpened:Z

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/SessionsActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->openCameraScanActivity()V

    return-void
.end method

.method static synthetic access$3702(Lorg/telegram/ui/SessionsActivity;I)I
    .locals 0

    .line 88
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/Components/UndoView;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    return p0
.end method

.method private static synthetic lambda$createView$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$1(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    .line 271
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 272
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 275
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/16 p1, 0x5a

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    const/16 p1, 0xb7

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const/16 p1, 0x16d

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 285
    :goto_0
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_account_setAuthorizationTTL;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_account_setAuthorizationTTL;-><init>()V

    .line 286
    iput p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_setAuthorizationTTL;->authorization_ttl_days:I

    .line 287
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    .line 288
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_4

    .line 289
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 291
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda19;->INSTANCE:Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda19;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V
    .locals 0

    .line 456
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 458
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-nez p2, :cond_0

    .line 461
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 462
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 463
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$11(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 454
    new-instance p3, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p1, p4, p2}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$12(I[ZLandroid/content/DialogInterface;I)V
    .locals 3

    .line 419
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 422
    :cond_0
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p4

    const/4 v0, 0x3

    invoke-direct {p3, p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p4, 0x0

    .line 423
    invoke-virtual {p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 424
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 426
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v0, :cond_2

    .line 428
    iget p2, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    if-lt p1, p2, :cond_1

    iget p4, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    if-ge p1, p4, :cond_1

    .line 429
    iget-object p4, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    sub-int/2addr p1, p2

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_0

    .line 431
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    iget p4, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    sub-int/2addr p1, p4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 433
    :goto_0
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;-><init>()V

    .line 434
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;->hash:J

    .line 435
    iget p4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p3, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {p4, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    .line 451
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    .line 452
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_resetWebAuthorization;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_resetWebAuthorization;-><init>()V

    .line 453
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_resetWebAuthorization;->hash:J

    .line 454
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p3, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 468
    aget-boolean p2, p2, p4

    if-eqz p2, :cond_3

    .line 469
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->bot_id:J

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/MessagesController;->blockPeer(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 236
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->ttlRow:I

    const/4 v3, 0x0

    const-string v4, "Cancel"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_6

    .line 237
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 241
    :cond_0
    iget v1, v0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    const/4 v2, 0x7

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-gt v1, v2, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    const/16 v2, 0x5d

    if-gt v1, v2, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    const/16 v2, 0xb7

    if-gt v1, v2, :cond_3

    move v1, v7

    goto :goto_0

    :cond_3
    move v1, v8

    .line 250
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    sget v9, Lorg/telegram/messenger/R$string;->SessionsSelfDestruct:I

    const-string v10, "SessionsSelfDestruct"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/String;

    new-array v11, v6, [Ljava/lang/Object;

    const-string v12, "Weeks"

    .line 253
    invoke-static {v12, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    new-array v11, v6, [Ljava/lang/Object;

    const-string v12, "Months"

    .line 254
    invoke-static {v12, v8, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    const/4 v11, 0x6

    new-array v13, v6, [Ljava/lang/Object;

    .line 255
    invoke-static {v12, v11, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    new-array v11, v6, [Ljava/lang/Object;

    const-string v12, "Years"

    .line 256
    invoke-static {v12, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    .line 258
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 260
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move v11, v6

    :goto_1
    if-ge v11, v9, :cond_5

    .line 263
    new-instance v12, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v12, v13, v6, v14, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 265
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const-string v13, "radioBackground"

    .line 266
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    const-string v14, "dialogRadioBackgroundChecked"

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 267
    aget-object v13, v10, v11

    if-ne v1, v11, :cond_4

    move v14, v5

    goto :goto_2

    :cond_4
    move v14, v6

    :goto_2
    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 268
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v13, "listSelectorSDK21"

    .line 269
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 270
    new-instance v13, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v13, v0, v2}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 296
    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 297
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a

    .line 298
    :cond_6
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    const-string v7, "dialogTextRed"

    const/4 v8, -0x1

    const-string v9, "Terminate"

    const-string v10, "Disconnect"

    if-ne v1, v2, :cond_9

    .line 299
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    .line 302
    :cond_7
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v2, :cond_8

    .line 305
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureSessions:I

    const-string v5, "AreYouSureSessions"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 306
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureSessionsTitle:I

    const-string v5, "AreYouSureSessionsTitle"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 307
    sget v2, Lorg/telegram/messenger/R$string;->Terminate:I

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 309
    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureWebSessions:I

    const-string v5, "AreYouSureWebSessions"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 310
    sget v2, Lorg/telegram/messenger/R$string;->TerminateWebSessionsTitle:I

    const-string v5, "TerminateWebSessionsTitle"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 311
    sget v2, Lorg/telegram/messenger/R$string;->Disconnect:I

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 313
    :goto_3
    new-instance v5, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 353
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 354
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 355
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 356
    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 358
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 360
    :cond_9
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    if-lt v1, v2, :cond_a

    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    if-lt v1, v2, :cond_c

    :cond_a
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    if-lt v1, v2, :cond_b

    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsEndRow:I

    if-lt v1, v2, :cond_c

    :cond_b
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    if-ne v1, v2, :cond_15

    .line 361
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_d

    return-void

    .line 364
    :cond_d
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v2, :cond_10

    .line 367
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    if-ne v1, v2, :cond_e

    .line 368
    iget-object v1, v0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_5

    .line 370
    :cond_e
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    if-lt v1, v2, :cond_f

    iget v3, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    if-ge v1, v3, :cond_f

    .line 371
    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_4

    .line 373
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    iget v3, v0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    :goto_4
    move v5, v6

    .line 375
    :goto_5
    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/SessionsActivity;->showSessionBottomSheet(Lorg/telegram/tgnet/TLRPC$TL_authorization;Z)V

    return-void

    .line 378
    :cond_10
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v11, v5, [Z

    .line 381
    iget v12, v0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v12, :cond_11

    .line 382
    sget v5, Lorg/telegram/messenger/R$string;->TerminateSessionText:I

    const-string v6, "TerminateSessionText"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 383
    sget v5, Lorg/telegram/messenger/R$string;->AreYouSureSessionTitle:I

    const-string v6, "AreYouSureSessionTitle"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 384
    sget v5, Lorg/telegram/messenger/R$string;->Terminate:I

    invoke-static {v9, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 386
    :cond_11
    iget-object v9, v0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    iget v12, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    sub-int v12, v1, v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    .line 388
    sget v12, Lorg/telegram/messenger/R$string;->TerminateWebSessionText:I

    new-array v13, v5, [Ljava/lang/Object;

    iget-object v14, v9, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->domain:Ljava/lang/String;

    aput-object v14, v13, v6

    const-string v14, "TerminateWebSessionText"

    invoke-static {v14, v12, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 389
    sget v12, Lorg/telegram/messenger/R$string;->TerminateWebSessionTitle:I

    const-string v13, "TerminateWebSessionTitle"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 390
    sget v12, Lorg/telegram/messenger/R$string;->Disconnect:I

    invoke-static {v10, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 392
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 394
    iget v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-wide v14, v9, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->bot_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v13, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    const-string v13, ""

    if-eqz v9, :cond_12

    .line 397
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_12
    move-object v9, v13

    .line 402
    :goto_6
    new-instance v14, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    .line 403
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    sget v15, Lorg/telegram/messenger/R$string;->TerminateWebSessionStop:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v9, v5, v6

    const-string v9, "TerminateWebSessionStop"

    invoke-static {v9, v15, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5, v13, v6, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 405
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v9, 0x8

    const/16 v13, 0x10

    if-eqz v5, :cond_13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_7

    :cond_13
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    :goto_7
    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v15, :cond_14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_8

    :cond_14
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    :goto_8
    invoke-virtual {v14, v5, v6, v9, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 v15, -0x1

    const/16 v16, 0x30

    const/16 v17, 0x33

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 406
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v12, v14, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    new-instance v5, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, v11}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda4;-><init>([Z)V

    invoke-virtual {v14, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    invoke-virtual {v2, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setCustomViewOffset(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 416
    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object v5, v10

    .line 418
    :goto_9
    new-instance v6, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v1, v11}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SessionsActivity;I[Z)V

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 473
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 474
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 476
    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 478
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_15
    :goto_a
    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 318
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 321
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_1

    .line 322
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v0, Lorg/telegram/messenger/R$string;->AllSessionsTerminated:I

    const-string v1, "AllSessionsTerminated"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    const/4 p1, 0x0

    .line 323
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 317
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1

    .line 328
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 332
    :cond_0
    iput-boolean p1, v0, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 333
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 334
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/SharedConfig;->pushType:I

    sget-object v3, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->registerForPush(ILjava/lang/String;)V

    .line 335
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(J)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 344
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_1

    .line 345
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v0, Lorg/telegram/messenger/R$string;->AllWebSessionsTerminated:I

    const-string v1, "AllWebSessionsTerminated"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 347
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v0, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string v1, "UnknownError"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    const/4 p1, 0x0

    .line 349
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 340
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 314
    iget p1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez p1, :cond_0

    .line 315
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_resetAuthorizations;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resetAuthorizations;-><init>()V

    .line 316
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 339
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_resetWebAuthorizations;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_resetWebAuthorizations;-><init>()V

    .line 340
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$createView$7([ZLandroid/view/View;)V
    .locals 3

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v0, 0x0

    .line 412
    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p0, v0

    .line 413
    aget-boolean p0, p0, v0

    invoke-virtual {p1, p0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 0

    .line 437
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 439
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-nez p2, :cond_0

    .line 442
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 444
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 445
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$9(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 435
    new-instance p3, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p1, p4, p2}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSessions$14(Z)V
    .locals 0

    .line 628
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return-void
.end method

.method private synthetic lambda$loadSessions$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 598
    iput-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    .line 599
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity$ListAdapter;->getItemCount()I

    :cond_0
    if-nez p1, :cond_4

    .line 601
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 603
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;

    .line 604
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_3

    .line 605
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 606
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 607
    iput-object v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_1

    .line 608
    :cond_1
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->password_pending:Z

    if-eqz v2, :cond_2

    .line 609
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 611
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_3
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorization_ttl_days:I

    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    .line 615
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 616
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->delegate:Lorg/telegram/ui/SessionsActivity$Delegate;

    if-eqz p1, :cond_4

    .line 617
    invoke-interface {p1}, Lorg/telegram/ui/SessionsActivity$Delegate;->sessionsLoaded()V

    .line 621
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_5

    .line 622
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 625
    :cond_5
    iget p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_6

    add-int/lit8 p1, p1, -0x1

    .line 626
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_6

    .line 628
    new-instance p1, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    const-wide/16 p2, 0x9c4

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$loadSessions$16(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 597
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSessions$17(Z)V
    .locals 0

    .line 652
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return-void
.end method

.method private synthetic lambda$loadSessions$18(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 636
    iput-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-nez p1, :cond_0

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 639
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_account_webAuthorizations;

    .line 640
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_webAuthorizations;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 641
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_account_webAuthorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 642
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 645
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 646
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 649
    :cond_1
    iget p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 650
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_2

    .line 652
    new-instance p1, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    const-wide/16 p2, 0x9c4

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadSessions$19(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 635
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultFragment$20(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1278
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1280
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1282
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private openCameraScanActivity()V
    .locals 4

    .line 1151
    new-instance v0, Lorg/telegram/ui/SessionsActivity$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SessionsActivity$5;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private showSessionBottomSheet(Lorg/telegram/tgnet/TLRPC$TL_authorization;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 538
    :cond_0
    new-instance v0, Lorg/telegram/ui/SessionBottomSheet;

    new-instance v1, Lorg/telegram/ui/SessionsActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SessionsActivity$4;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/telegram/ui/SessionBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_authorization;ZLorg/telegram/ui/SessionBottomSheet$Callback;)V

    .line 554
    invoke-virtual {v0}, Lorg/telegram/ui/SessionBottomSheet;->show()V

    return-void
.end method

.method private updateRows()V
    .locals 3

    const/4 v0, 0x0

    .line 661
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    const/4 v0, -0x1

    .line 662
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    .line 663
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    .line 664
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    .line 665
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    .line 666
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsSectionRow:I

    .line 667
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    .line 668
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsEndRow:I

    .line 669
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsDetailRow:I

    .line 670
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    .line 671
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    .line 672
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    .line 673
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I

    .line 674
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    .line 675
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeRow:I

    .line 676
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeDividerRow:I

    .line 677
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlHeaderRow:I

    .line 678
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlRow:I

    .line 679
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlDivideRow:I

    .line 681
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->qrLoginCamera:Z

    if-eqz v1, :cond_0

    .line 682
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeRow:I

    add-int/lit8 v1, v2, 0x1

    .line 683
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeDividerRow:I

    .line 685
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-eqz v1, :cond_2

    .line 686
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v0, :cond_1

    .line 687
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    add-int/lit8 v0, v1, 0x1

    .line 688
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    :cond_1
    return-void

    .line 692
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v1, :cond_3

    .line 693
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    add-int/lit8 v1, v2, 0x1

    .line 694
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    .line 698
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 703
    :cond_4
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    .line 704
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    .line 705
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v1, :cond_5

    goto :goto_0

    .line 708
    :cond_5
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    goto :goto_2

    .line 706
    :cond_6
    :goto_0
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    goto :goto_2

    .line 699
    :cond_7
    :goto_1
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    add-int/lit8 v1, v2, 0x1

    .line 700
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    .line 701
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    .line 711
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 712
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsSectionRow:I

    .line 713
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    .line 715
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsEndRow:I

    add-int/lit8 v0, v1, 0x1

    .line 716
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsDetailRow:I

    .line 718
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 719
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    .line 720
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    .line 722
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    .line 723
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I

    .line 726
    :cond_9
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    if-lez v0, :cond_a

    .line 727
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 728
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->ttlRow:I

    add-int/lit8 v1, v0, 0x1

    .line 729
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlDivideRow:I

    :cond_a
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    .line 189
    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity;->globalFlickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 194
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->Devices:I

    const-string v3, "Devices"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->WebSessionsTitle:I

    const-string v3, "WebSessionsTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/SessionsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SessionsActivity$1;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 208
    new-instance v0, Lorg/telegram/ui/SessionsActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SessionsActivity$ListAdapter;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    .line 210
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 211
    check-cast v0, Landroid/widget/FrameLayout;

    const-string v2, "windowBackgroundGray"

    .line 212
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 214
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SessionsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 215
    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 216
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v3, 0x11

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 219
    new-instance v3, Lorg/telegram/ui/SessionsActivity$2;

    const/4 v5, 0x0

    invoke-direct {v3, p0, p1, v1, v5}, Lorg/telegram/ui/SessionsActivity$2;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 225
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 226
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 227
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 230
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v2, 0x96

    .line 231
    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 232
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 234
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 235
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 483
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v1, :cond_1

    .line 484
    new-instance v1, Lorg/telegram/ui/SessionsActivity$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SessionsActivity$3;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x53

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 511
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 530
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 583
    sget p2, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 584
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    :cond_0
    return-void
.end method

.method getSessionsCount()I
    .locals 1

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1296
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v12, 0x1

    aput-object v2, v5, v12

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "windowBackgroundGray"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v20, "actionBarDefault"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v20, "actionBarDefaultTitle"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v20, "listSelectorSDK21"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const-string v10, "divider"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const-string v20, "progressCircle"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v23, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v11

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "windowBackgroundWhiteRedText2"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteBlueText4"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v4, v11

    const-string v29, "windowBackgroundGrayShadow"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const-string v21, "windowBackgroundWhiteGrayText4"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteBlueHeader"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v4, v3, v11

    const-string v4, "nameTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v5, v4, v11

    const-string v5, "onlineTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhiteValueText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteGrayText3"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v5, v4, v11

    const-string v5, "detailTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const-string v30, "windowBackgroundWhiteBlackText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v4, v3, v11

    const-string v4, "detailExTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const-string v21, "windowBackgroundWhiteGrayText3"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v29, "undo_background"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v11

    const-string v4, "undoImageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteRedText2"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v11

    const-string v5, "undoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteRedText2"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v11

    const-string v4, "infoTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "undo_infoColor"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v11

    const-string v5, "textPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "undo_infoColor"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v11

    const-string v4, "progressPaint"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "undo_infoColor"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v11

    const-string v5, "leftImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "undo_infoColor"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public loadSessions(Z)V
    .locals 3

    .line 589
    iget-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 593
    iput-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    .line 595
    :cond_1
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v0, :cond_2

    .line 596
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizations;-><init>()V

    .line 597
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 632
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 634
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getWebAuthorizations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getWebAuthorizations;-><init>()V

    .line 635
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 656
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    :goto_0
    return-void
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 569
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 159
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 160
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    .line 162
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 168
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 169
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 560
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 562
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1267
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 1271
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    .line 1272
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->openCameraScanActivity()V

    goto :goto_0

    .line 1274
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p3, Lorg/telegram/messenger/R$string;->QRCodePermissionNoCameraWithHint:I

    const-string v0, "QRCodePermissionNoCameraWithHint"

    .line 1275
    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string v0, "PermissionOpenSettings"

    .line 1276
    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    const-string v0, "ContactsPermissionAlertNotNow"

    .line 1285
    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    const/16 v0, 0x48

    const-string v1, "dialogTopBackground"

    .line 1286
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p3, v0, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1287
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 575
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    .line 174
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lorg/telegram/ui/SessionsActivity;->fragmentOpened:Z

    const/4 p1, 0x0

    .line 178
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 179
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 180
    instance-of v0, p2, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;

    if-eqz v0, :cond_0

    .line 181
    check-cast p2, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;

    iget-object p2, p2, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/SessionsActivity$Delegate;)V
    .locals 0

    .line 1300
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity;->delegate:Lorg/telegram/ui/SessionsActivity$Delegate;

    return-void
.end method

.method public setHighlightLinkDesktopDevice()Lorg/telegram/ui/SessionsActivity;
    .locals 1

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->highlightLinkDesktopDevice:Z

    return-object p0
.end method
