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
    iget p0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
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
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

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

.method static synthetic access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    return-object p0
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

.method static synthetic access$400(Lorg/telegram/ui/SessionsActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/SessionsActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

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

    .line 279
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 280
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 283
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/16 p1, 0x5a

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    const/16 p1, 0xb7

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const/16 p1, 0x16d

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 293
    :goto_0
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_account_setAuthorizationTTL;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_account_setAuthorizationTTL;-><init>()V

    .line 294
    iput p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_setAuthorizationTTL;->authorization_ttl_days:I

    .line 295
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_4

    .line 297
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 299
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda19;->INSTANCE:Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda19;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V
    .locals 0

    .line 464
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 466
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-nez p2, :cond_0

    .line 469
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 470
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 471
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$11(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 462
    new-instance p3, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p1, p4, p2}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$12(I[ZLandroid/content/DialogInterface;I)V
    .locals 3

    .line 427
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 430
    :cond_0
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p4

    const/4 v0, 0x3

    invoke-direct {p3, p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p4, 0x0

    .line 431
    invoke-virtual {p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 432
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 434
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v0, :cond_2

    .line 436
    iget p2, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    if-lt p1, p2, :cond_1

    iget p4, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    if-ge p1, p4, :cond_1

    .line 437
    iget-object p4, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    sub-int/2addr p1, p2

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_0

    .line 439
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    iget p4, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    sub-int/2addr p1, p4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 441
    :goto_0
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;-><init>()V

    .line 442
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;->hash:J

    .line 443
    iget p4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p3, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {p4, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    .line 459
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    .line 460
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_resetWebAuthorization;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_resetWebAuthorization;-><init>()V

    .line 461
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_resetWebAuthorization;->hash:J

    .line 462
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p3, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 476
    aget-boolean p2, p2, p4

    if-eqz p2, :cond_3

    .line 477
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
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 244
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->ttlRow:I

    const/4 v3, 0x0

    const-string v4, "Cancel"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_6

    .line 245
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 249
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

    .line 258
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    sget v9, Lorg/telegram/messenger/R$string;->SessionsSelfDestruct:I

    const-string v10, "SessionsSelfDestruct"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/String;

    new-array v11, v6, [Ljava/lang/Object;

    const-string v12, "Weeks"

    .line 261
    invoke-static {v12, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    new-array v11, v6, [Ljava/lang/Object;

    const-string v12, "Months"

    .line 262
    invoke-static {v12, v8, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    const/4 v11, 0x6

    new-array v13, v6, [Ljava/lang/Object;

    .line 263
    invoke-static {v12, v11, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    new-array v11, v6, [Ljava/lang/Object;

    const-string v12, "Years"

    .line 264
    invoke-static {v12, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    .line 266
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 267
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 268
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move v11, v6

    :goto_1
    if-ge v11, v9, :cond_5

    .line 271
    new-instance v12, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 272
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v12, v13, v6, v14, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 273
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 274
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 275
    aget-object v13, v10, v11

    if-ne v1, v11, :cond_4

    move v14, v5

    goto :goto_2

    :cond_4
    move v14, v6

    :goto_2
    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 276
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-static {v13, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    new-instance v13, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v13, v0, v2}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 304
    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 305
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a

    .line 306
    :cond_6
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    const/4 v7, -0x1

    const-string v8, "Terminate"

    const-string v9, "Disconnect"

    if-ne v1, v2, :cond_9

    .line 307
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    .line 310
    :cond_7
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v2, :cond_8

    .line 313
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureSessions:I

    const-string v5, "AreYouSureSessions"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 314
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureSessionsTitle:I

    const-string v5, "AreYouSureSessionsTitle"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 315
    sget v2, Lorg/telegram/messenger/R$string;->Terminate:I

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 317
    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureWebSessions:I

    const-string v5, "AreYouSureWebSessions"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 318
    sget v2, Lorg/telegram/messenger/R$string;->TerminateWebSessionsTitle:I

    const-string v5, "TerminateWebSessionsTitle"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 319
    sget v2, Lorg/telegram/messenger/R$string;->Disconnect:I

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 321
    :goto_3
    new-instance v5, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 361
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 362
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 364
    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 366
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 368
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

    .line 369
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_d

    return-void

    .line 372
    :cond_d
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v2, :cond_10

    .line 375
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    if-ne v1, v2, :cond_e

    .line 376
    iget-object v1, v0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_5

    .line 378
    :cond_e
    iget v2, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    if-lt v1, v2, :cond_f

    iget v3, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    if-ge v1, v3, :cond_f

    .line 379
    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_4

    .line 381
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    iget v3, v0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    :goto_4
    move v5, v6

    .line 383
    :goto_5
    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/SessionsActivity;->showSessionBottomSheet(Lorg/telegram/tgnet/TLRPC$TL_authorization;Z)V

    return-void

    .line 386
    :cond_10
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v10, v5, [Z

    .line 389
    iget v11, v0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v11, :cond_11

    .line 390
    sget v5, Lorg/telegram/messenger/R$string;->TerminateSessionText:I

    const-string v6, "TerminateSessionText"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 391
    sget v5, Lorg/telegram/messenger/R$string;->AreYouSureSessionTitle:I

    const-string v6, "AreYouSureSessionTitle"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 392
    sget v5, Lorg/telegram/messenger/R$string;->Terminate:I

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 394
    :cond_11
    iget-object v8, v0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    iget v11, v0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    sub-int v11, v1, v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    .line 396
    sget v11, Lorg/telegram/messenger/R$string;->TerminateWebSessionText:I

    new-array v12, v5, [Ljava/lang/Object;

    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->domain:Ljava/lang/String;

    aput-object v13, v12, v6

    const-string v13, "TerminateWebSessionText"

    invoke-static {v13, v11, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 397
    sget v11, Lorg/telegram/messenger/R$string;->TerminateWebSessionTitle:I

    const-string v12, "TerminateWebSessionTitle"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 398
    sget v11, Lorg/telegram/messenger/R$string;->Disconnect:I

    invoke-static {v9, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 400
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 402
    iget v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-wide v13, v8, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->bot_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    const-string v12, ""

    if-eqz v8, :cond_12

    .line 405
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_12
    move-object v8, v12

    .line 410
    :goto_6
    new-instance v13, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    .line 411
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    sget v14, Lorg/telegram/messenger/R$string;->TerminateWebSessionStop:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v6

    const-string v8, "TerminateWebSessionStop"

    invoke-static {v8, v14, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5, v12, v6, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 413
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v8, 0x8

    const/16 v12, 0x10

    if-eqz v5, :cond_13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_7

    :cond_13
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    :goto_7
    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_14

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    goto :goto_8

    :cond_14
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    :goto_8
    invoke-virtual {v13, v5, v6, v8, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 v14, -0x1

    const/16 v15, 0x30

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 414
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v11, v13, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    new-instance v5, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, v10}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda4;-><init>([Z)V

    invoke-virtual {v13, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setCustomViewOffset(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 424
    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object v5, v9

    .line 426
    :goto_9
    new-instance v6, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v1, v10}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SessionsActivity;I[Z)V

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 481
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 482
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 483
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 484
    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 486
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_15
    :goto_a
    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 326
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 329
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_1

    .line 330
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

    .line 331
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 325
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1

    .line 336
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    iput-boolean p1, v0, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 341
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 342
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/SharedConfig;->pushType:I

    sget-object v3, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->registerForPush(ILjava/lang/String;)V

    .line 343
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

    .line 349
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 352
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_1

    .line 353
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

    .line 355
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

    .line 357
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 348
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 322
    iget p1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez p1, :cond_0

    .line 323
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_resetAuthorizations;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resetAuthorizations;-><init>()V

    .line 324
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 347
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_resetWebAuthorizations;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_resetWebAuthorizations;-><init>()V

    .line 348
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

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v0, 0x0

    .line 420
    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p0, v0

    .line 421
    aget-boolean p0, p0, v0

    invoke-virtual {p1, p0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 0

    .line 445
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 447
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-nez p2, :cond_0

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 451
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 452
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$9(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 443
    new-instance p3, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p1, p4, p2}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSessions$14(Z)V
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return-void
.end method

.method private synthetic lambda$loadSessions$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 607
    iput-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    .line 608
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity$ListAdapter;->getItemCount()I

    :cond_0
    if-nez p1, :cond_4

    .line 610
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 611
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 612
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;

    .line 613
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_3

    .line 614
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 615
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 616
    iput-object v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_1

    .line 617
    :cond_1
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->password_pending:Z

    if-eqz v2, :cond_2

    .line 618
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 620
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_3
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorization_ttl_days:I

    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    .line 624
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 625
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->delegate:Lorg/telegram/ui/SessionsActivity$Delegate;

    if-eqz p1, :cond_4

    .line 626
    invoke-interface {p1}, Lorg/telegram/ui/SessionsActivity$Delegate;->sessionsLoaded()V

    .line 630
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_5

    .line 631
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 634
    :cond_5
    iget p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_6

    add-int/lit8 p1, p1, -0x1

    .line 635
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_6

    .line 637
    new-instance p1, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    const-wide/16 p2, 0x9c4

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$loadSessions$16(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 606
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSessions$17(Z)V
    .locals 0

    .line 661
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return-void
.end method

.method private synthetic lambda$loadSessions$18(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-nez p1, :cond_0

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 648
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_account_webAuthorizations;

    .line 649
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_webAuthorizations;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 650
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_account_webAuthorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 651
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 654
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 655
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 658
    :cond_1
    iget p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 659
    iput p1, p0, Lorg/telegram/ui/SessionsActivity;->repeatLoad:I

    if-lez p1, :cond_2

    .line 661
    new-instance p1, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    const-wide/16 p2, 0x9c4

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadSessions$19(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 644
    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultFragment$20(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1287
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1288
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

    .line 1289
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1291
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private openCameraScanActivity()V
    .locals 4

    .line 1160
    new-instance v0, Lorg/telegram/ui/SessionsActivity$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SessionsActivity$6;-><init>(Lorg/telegram/ui/SessionsActivity;)V

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

    .line 546
    :cond_0
    new-instance v0, Lorg/telegram/ui/SessionBottomSheet;

    new-instance v1, Lorg/telegram/ui/SessionsActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SessionsActivity$5;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/telegram/ui/SessionBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_authorization;ZLorg/telegram/ui/SessionBottomSheet$Callback;)V

    .line 563
    invoke-virtual {v0}, Lorg/telegram/ui/SessionBottomSheet;->show()V

    return-void
.end method

.method private updateRows()V
    .locals 3

    const/4 v0, 0x0

    .line 670
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    const/4 v0, -0x1

    .line 671
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    .line 672
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    .line 673
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    .line 674
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    .line 675
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsSectionRow:I

    .line 676
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    .line 677
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsEndRow:I

    .line 678
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsDetailRow:I

    .line 679
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    .line 680
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    .line 681
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    .line 682
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I

    .line 683
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    .line 684
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeRow:I

    .line 685
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeDividerRow:I

    .line 686
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlHeaderRow:I

    .line 687
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlRow:I

    .line 688
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlDivideRow:I

    .line 690
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->qrLoginCamera:Z

    if-eqz v1, :cond_0

    .line 691
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeRow:I

    add-int/lit8 v1, v2, 0x1

    .line 692
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->qrCodeDividerRow:I

    .line 694
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-eqz v1, :cond_2

    .line 695
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v0, :cond_1

    .line 696
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    add-int/lit8 v0, v1, 0x1

    .line 697
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    :cond_1
    return-void

    .line 701
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v1, :cond_3

    .line 702
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionSectionRow:I

    add-int/lit8 v1, v2, 0x1

    .line 703
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->currentSessionRow:I

    .line 707
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

    .line 712
    :cond_4
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    .line 713
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    .line 714
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v1, :cond_5

    goto :goto_0

    .line 717
    :cond_5
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    goto :goto_2

    .line 715
    :cond_6
    :goto_0
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    goto :goto_2

    .line 708
    :cond_7
    :goto_1
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsRow:I

    add-int/lit8 v1, v2, 0x1

    .line 709
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/SessionsActivity;->terminateAllSessionsDetailRow:I

    .line 710
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->noOtherSessionsRow:I

    .line 720
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 721
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsSectionRow:I

    .line 722
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsStartRow:I

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    .line 724
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsEndRow:I

    add-int/lit8 v0, v1, 0x1

    .line 725
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->passwordSessionsDetailRow:I

    .line 727
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 728
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsSectionRow:I

    .line 729
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsStartRow:I

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsEndRow:I

    .line 731
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    .line 732
    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->otherSessionsTerminateDetail:I

    .line 735
    :cond_9
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlDays:I

    if-lez v0, :cond_a

    .line 736
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->ttlHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 737
    iput v0, p0, Lorg/telegram/ui/SessionsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/SessionsActivity;->ttlRow:I

    add-int/lit8 v1, v0, 0x1

    .line 738
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

    .line 212
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

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
    new-instance v2, Lorg/telegram/ui/SessionsActivity$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SessionsActivity$2;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 227
    new-instance v3, Lorg/telegram/ui/SessionsActivity$3;

    const/4 v5, 0x0

    invoke-direct {v3, p0, p1, v1, v5}, Lorg/telegram/ui/SessionsActivity$3;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 233
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 234
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 235
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 238
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v2, 0x96

    .line 239
    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 240
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 242
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 243
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 491
    iget v1, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v1, :cond_1

    .line 492
    new-instance v1, Lorg/telegram/ui/SessionsActivity$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SessionsActivity$4;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x53

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 519
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->updateRows()V

    .line 538
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 592
    sget p2, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 593
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    :cond_0
    return-void
.end method

.method getSessionsCount()I
    .locals 1

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1305
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1234
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

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v20

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
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

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v29, v6

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
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

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v4, v11

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v15, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v24, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v4, v3, v11

    const-string v4, "nameTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v26

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v29, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v5, v4, v11

    const-string v5, "onlineTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v31

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v4

    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v35

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v5, v4, v11

    const-string v5, "detailTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SessionCell;

    aput-object v5, v4, v11

    const-string v5, "detailExTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v31

    const/16 v29, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v4

    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v11

    const-string v4, "undoImageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v11

    const-string v4, "undoTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v11

    const-string v5, "infoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v29, v5

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v11

    const-string v4, "textPaint"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v11

    const-string v4, "progressPaint"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v11

    const-string v4, "leftImageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public loadSessions(Z)V
    .locals 3

    .line 598
    iget-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Lorg/telegram/ui/SessionsActivity;->loading:Z

    .line 604
    :cond_1
    iget v0, p0, Lorg/telegram/ui/SessionsActivity;->currentType:I

    if-nez v0, :cond_2

    .line 605
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizations;-><init>()V

    .line 606
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 641
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 643
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getWebAuthorizations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getWebAuthorizations;-><init>()V

    .line 644
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/SessionsActivity;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 665
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

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 578
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

    .line 569
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 571
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1276
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 1280
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    .line 1281
    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity;->openCameraScanActivity()V

    goto :goto_0

    .line 1283
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p3, Lorg/telegram/messenger/R$string;->QRCodePermissionNoCameraWithHint:I

    const-string v0, "QRCodePermissionNoCameraWithHint"

    .line 1284
    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string v0, "PermissionOpenSettings"

    .line 1285
    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SessionsActivity;)V

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    const-string v0, "ContactsPermissionAlertNotNow"

    .line 1294
    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    const/16 v0, 0x48

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    .line 1295
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p3, v0, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1296
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 584
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 586
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

    .line 1309
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
