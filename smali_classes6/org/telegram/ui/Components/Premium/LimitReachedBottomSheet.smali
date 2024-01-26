.class public Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "LimitReachedBottomSheet.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;,
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;,
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;,
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;
    }
.end annotation


# instance fields
.field actionBtn:Landroid/widget/TextView;

.field boostFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;",
            ">;"
        }
    .end annotation
.end field

.field boostFeaturesStartRow:I

.field private boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field bottomRow:I

.field private canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

.field private canSendLink:Z

.field chatEndRow:I

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

.field private dialogId:J

.field divider:Landroid/view/View;

.field dividerRow:I

.field emptyViewDividerRow:I

.field enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field private fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field headerRow:I

.field private headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

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

.field private isCurrentChat:Z

.field private isVeryLargeFile:Z

.field limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

.field limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

.field private linkRow:I

.field private loading:Z

.field loadingRow:I

.field private lockInvalidation:Z

.field public onShowPremiumScreenRunnable:Ljava/lang/Runnable;

.field public onSuccessRunnable:Ljava/lang/Runnable;

.field parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public parentIsChannel:Z

.field premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field private requiredLvl:I

.field private restrictedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field rowCount:I

.field selectedChats:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field statisticClickRunnable:Ljava/lang/Runnable;

.field final type:I


# direct methods
.method public static synthetic $r8$lambda$-oka44ZBvi7nDBDuJQZQ9ls0Eqk(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6Zaj8oLFEenp3kEJ50Fk6HD_2XE(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadAdminedChannels$16(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9jIC7ucMXHGtMQRC5yHsL3ByuaU(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BQPALE8DshGOPteu61K2zUYbyE4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EftBM6BJShoZWCW6DGf7o3Odug8(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EjeTjEcFOfUHcrbAmawS2LUcMxs(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$8(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HXgnLk9gKI9V_G45-0eZ29a6oS0(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$revokeLinks$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IxuQM9FMGvwG1Va9jx4BVutiHfw(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadAdminedChannels$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LdB9OcbwlmLzqRijGkMANslb6LU(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$boostChannel$11(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M5XUA7dUP4kIbTjuQxiIz4utSVQ(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$boostChannel$12(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RJWckBSdY_NjhPGNLzGNsg7AdXI(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$T52Bn6DD1brXOeavkEwgIBI0Y2Y(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XewZWG6lsdPMp9Lymcov8DqT6AY(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadInactiveChannels$20(Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zr4IXfjERhpu4RnwzDowsYmRbpM(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cHAiEo6-bflMVYeJUI6palYEszE(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$leaveFromSelectedGroups$15(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gIljy8wN-jJvBFxi4aPczjh-emQ(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$revokeLinks$19(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h4_an0Nf_HLCItvuauucWCtdW4g(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jyi7jxvco0STUJDRTjzDaJJXIBE(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$boostChannel$13(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$krGGeifkdCxqwGsFcYOcL6ulnUQ(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzJTxR6IJvenWXx237ejynhggcY(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$mPFtU0sEN0eNK2bfh-CFbamjP1I(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$sendInviteMessages$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$tLt2rpkiVQXcuzwcB73CaxNQs4Q(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadInactiveChannels$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 285
    invoke-static {p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->hasFixedSize(I)Z

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, -0x1

    .line 136
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    const/4 v1, 0x0

    .line 142
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    .line 176
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    .line 177
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    .line 178
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    .line 179
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    .line 180
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    .line 181
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    .line 182
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    .line 183
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->bottomRow:I

    .line 184
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesStartRow:I

    .line 261
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    .line 263
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    .line 273
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 282
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->requiredLvl:I

    .line 286
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 287
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 288
    iput p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 289
    iput p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    .line 290
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    .line 291
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    .line 293
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadAdminedChannels()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    if-ne p3, p1, :cond_1

    .line 295
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadInactiveChannels()V

    .line 297
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    const/16 p1, 0x13

    if-ne p3, p1, :cond_2

    .line 299
    new-instance p1, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    .line 300
    iget-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/16 p1, 0x12

    if-eq p3, p1, :cond_3

    const/16 p1, 0x14

    if-eq p3, p1, :cond_3

    const/16 p1, 0x18

    if-eq p3, p1, :cond_3

    const/16 p1, 0x19

    if-eq p3, p1, :cond_3

    const/16 p1, 0x16

    if-eq p3, p1, :cond_3

    const/16 p1, 0x17

    if-eq p3, p1, :cond_3

    const/16 p1, 0x15

    if-eq p3, p1, :cond_3

    const/16 p1, 0x1a

    if-eq p3, p1, :cond_3

    const/16 p1, 0x1b

    if-ne p3, p1, :cond_5

    .line 313
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 314
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 317
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 318
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/16 p2, 0x11

    .line 319
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 322
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/high16 p3, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 323
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 324
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->getTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {p2, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {p3, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p4, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p4

    const/16 p5, 0x78

    invoke-static {p4, p5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p4

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostLink()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeLinks(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3200(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;
    .locals 0

    .line 101
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsDescriptionString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->requiredLvl:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsTitleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)J
    .locals 2

    .line 101
    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private boostChannel()V
    .locals 7

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setLoading(Z)V

    .line 594
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget v4, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->slot:I

    new-instance v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    new-instance v6, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/ChannelBoostsController;->applyBoost(JILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private boostFeaturesForLevel(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;",
            ">;"
        }
    .end annotation

    .line 2046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2047
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 2049
    :cond_0
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_feature_stories:I

    const-string v3, "BoostFeatureStoriesPerDay"

    invoke-static {v2, v3, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_feature_reactions:I

    const-string v3, "BoostFeatureCustomReaction"

    invoke-static {v2, v3, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2051
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsAvailable(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 2052
    :goto_0
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsAvailable(I)I

    move-result v3

    :cond_2
    if-lez v2, :cond_3

    .line 2054
    sget v4, Lorg/telegram/messenger/R$drawable;->menu_feature_color_name:I

    const/4 v5, 0x7

    const-string v6, "BoostFeatureNameColor"

    invoke-static {v4, v6, v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez v2, :cond_4

    .line 2057
    sget v4, Lorg/telegram/messenger/R$drawable;->menu_feature_links:I

    const-string v5, "BoostFeatureReplyColor"

    invoke-static {v4, v5, v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    :cond_4
    iget v2, v1, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    if-lt p1, v2, :cond_5

    .line 2060
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_feature_links2:I

    sget v4, Lorg/telegram/messenger/R$string;->BoostFeatureReplyIcon:I

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    :cond_5
    iget v2, v1, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    if-lt p1, v2, :cond_6

    .line 2063
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_feature_status:I

    sget v4, Lorg/telegram/messenger/R$string;->BoostFeatureEmojiStatuses:I

    const-string v5, "1000+"

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(IILjava/lang/String;)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-lez v3, :cond_7

    .line 2066
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_feature_color_profile:I

    const-string v4, "BoostFeatureProfileColor"

    invoke-static {v2, v4, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2068
    :cond_7
    iget v2, v1, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    if-lt p1, v2, :cond_8

    .line 2069
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_feature_cover:I

    sget v3, Lorg/telegram/messenger/R$string;->BoostFeatureProfileIcon:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2071
    :cond_8
    iget v2, v1, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    if-lt p1, v2, :cond_9

    .line 2072
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_feature_wallpaper:I

    const/16 v3, 0x8

    const-string v4, "BoostFeatureBackground"

    invoke-static {v2, v4, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2074
    :cond_9
    iget v1, v1, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    if-lt p1, v1, :cond_a

    .line 2075
    sget p1, Lorg/telegram/messenger/R$drawable;->menu_feature_custombg:I

    sget v1, Lorg/telegram/messenger/R$string;->BoostFeatureCustomBackground:I

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v0
.end method

.method private getBoostLink()Ljava/lang/String;
    .locals 3

    .line 1204
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/ChannelBoostUtilities;->createLink(IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoostsDescriptionString()Ljava/lang/String;
    .locals 10

    .line 1625
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1626
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1627
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    iget v3, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->current_level_boosts:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    const-string v6, "BoostStories"

    const-string v7, "ChannelBoostsJustReachedLevelNext"

    const/4 v8, 0x2

    if-eqz v3, :cond_3

    .line 1628
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v3, v3, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v3, :cond_3

    .line 1629
    iget v0, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-ne v0, v4, :cond_2

    .line 1630
    sget v0, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevel1:I

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "ChannelBoostsJustReachedLevel1"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1632
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevelNext:I

    new-array v2, v8, [Ljava/lang/Object;

    .line 1633
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 1634
    invoke-static {v6, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 1632
    invoke-static {v7, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1637
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v3, v3, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    const-string v9, "MoreBoosts"

    if-eqz v3, :cond_6

    .line 1638
    iget v3, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-nez v3, :cond_4

    .line 1639
    sget v3, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionForNewFeatures:I

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v5

    iget v0, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    sub-int v1, v0, v2

    new-array v7, v4, [Ljava/lang/Object;

    sub-int/2addr v0, v2

    .line 1642
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v9, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 1639
    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1645
    :cond_4
    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-nez v1, :cond_5

    .line 1646
    sget v0, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevelNext:I

    new-array v1, v8, [Ljava/lang/Object;

    .line 1647
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    .line 1648
    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1646
    invoke-static {v7, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1650
    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionForNewFeatures:I

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v5

    sub-int v0, v1, v2

    new-array v7, v4, [Ljava/lang/Object;

    sub-int/2addr v1, v2

    .line 1653
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v9, v0, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 1650
    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1658
    :cond_6
    iget v3, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-nez v3, :cond_7

    .line 1659
    sget v3, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionForNewFeatures:I

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v5

    iget v0, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    sub-int v1, v0, v2

    new-array v7, v4, [Ljava/lang/Object;

    sub-int/2addr v0, v2

    .line 1662
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v9, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 1659
    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1665
    :cond_7
    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-nez v1, :cond_8

    .line 1666
    sget v0, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevelNext:I

    new-array v1, v8, [Ljava/lang/Object;

    .line 1667
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    .line 1668
    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1666
    invoke-static {v7, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1670
    :cond_8
    sget v3, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionForNewFeatures:I

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v5

    sub-int v0, v1, v2

    new-array v7, v4, [Ljava/lang/Object;

    sub-int/2addr v1, v2

    .line 1673
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v9, v0, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 1670
    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoostsTitleString()Ljava/lang/String;
    .locals 5

    .line 1604
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1605
    sget v0, Lorg/telegram/messenger/R$string;->BoostsMaxLevelReached:I

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "BoostsMaxLevelReached"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1606
    :cond_0
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-nez v0, :cond_1

    .line 1607
    sget v0, Lorg/telegram/messenger/R$string;->BoostChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1608
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    if-eqz v0, :cond_3

    .line 1609
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1610
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v1, v1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v1, :cond_2

    .line 1611
    sget v1, Lorg/telegram/messenger/R$string;->YouBoostedChannel2:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v0, v3, v2

    const-string v0, "YouBoostedChannel2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1613
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->BoostChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1616
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v0, :cond_4

    .line 1617
    sget v0, Lorg/telegram/messenger/R$string;->YouBoostedChannel:I

    const-string v1, "YouBoostedChannel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1619
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->BoostingEnableStoriesForChannel:I

    const-string v1, "BoostingEnableStoriesForChannel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;
    .locals 8

    .line 1682
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 1684
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1685
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1686
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1687
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

    .line 1688
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

    .line 1689
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
    const/16 v4, 0x1c

    if-ne p0, v4, :cond_1

    .line 1691
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1692
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1693
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1694
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinSavedDialogs:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 1695
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinSavedDialogsPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 1696
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinSavedDialogsLocked:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    if-ne p0, v1, :cond_2

    .line 1698
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->publicLinksLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1699
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->publicLinksLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1700
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1701
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

    .line 1702
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

    .line 1703
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

    :cond_2
    const/16 v4, 0xc

    if-ne p0, v4, :cond_3

    .line 1705
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistInvitesLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1706
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistInvitesLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1707
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1708
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFolderLinks:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "LimitReachedFolderLinks"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 1709
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFolderLinksPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedFolderLinksPremium"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 1710
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFolderLinksLocked:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedFolderLinksLocked"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0xd

    if-ne p0, v4, :cond_4

    .line 1712
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistJoinedLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1713
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistJoinedLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1714
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_folder:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1715
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedSharedFolders:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "LimitReachedSharedFolders"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 1716
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedSharedFoldersPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedSharedFoldersPremium"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 1717
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedSharedFoldersLocked:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedSharedFoldersLocked"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x3

    if-ne p0, v4, :cond_5

    .line 1719
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1720
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1721
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_folder:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1722
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

    .line 1723
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

    .line 1724
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

    :cond_5
    const/4 v5, 0x4

    if-ne p0, v5, :cond_6

    .line 1726
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1727
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1728
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_chats:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1729
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

    .line 1730
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

    .line 1731
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

    :cond_6
    const/4 v6, 0x5

    if-ne p0, v6, :cond_7

    .line 1733
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->channelsLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1734
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->channelsLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1735
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_groups:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1736
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

    .line 1737
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

    .line 1738
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

    :cond_7
    const/4 v6, 0x6

    if-ne p0, v6, :cond_8

    const/16 p0, 0x64

    .line 1740
    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    const/16 p0, 0xc8

    .line 1741
    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1742
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_folder:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1743
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

    .line 1744
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFileSizePremium:I

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v4, p1, v3

    const-string v4, "LimitReachedFileSizePremium"

    invoke-static {v4, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 1745
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFileSizeLocked:I

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v3

    const-string v1, "LimitReachedFileSizeLocked"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x7

    const-string v7, "LimitReachedAccounts"

    if-ne p0, v6, :cond_9

    .line 1747
    iput v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1748
    iput v5, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1749
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_accounts:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1750
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedAccounts:I

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v7, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 1751
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

    .line 1752
    iget v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0xb

    if-ne p0, v4, :cond_a

    .line 1754
    iput v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1755
    iput v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1756
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1757
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedAccounts:I

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v7, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    const-string p0, ""

    .line 1758
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 1759
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0xe

    if-ne p0, v4, :cond_b

    .line 1761
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storyExpiringLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1762
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storyExpiringLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1763
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_stories:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1764
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesCount:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "LimitReachedStoriesCount"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 1765
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesCountPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedStoriesCountPremium"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    .line 1766
    iget v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0xf

    if-ne p0, v4, :cond_c

    .line 1768
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentWeeklyLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1769
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentWeeklyLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1770
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_stories:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1771
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesWeekly:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "LimitReachedStoriesWeekly"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 1772
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesWeeklyPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "LimitReachedStoriesWeeklyPremium"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    .line 1773
    iget v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x10

    const-string v5, "LimitReachedStoriesMonthly"

    const-string v6, "LimitReachedStoriesMonthlyPremium"

    if-ne p0, v4, :cond_d

    .line 1775
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1776
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1777
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_stories:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1778
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesMonthly:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v5, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 1779
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesMonthlyPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {v6, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    .line 1780
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {v6, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x12

    if-eq p0, v4, :cond_e

    const/16 v4, 0x14

    if-eq p0, v4, :cond_e

    const/16 v4, 0x18

    if-eq p0, v4, :cond_e

    const/16 v4, 0x1a

    if-eq p0, v4, :cond_e

    const/16 v4, 0x1b

    if-eq p0, v4, :cond_e

    const/16 v4, 0x19

    if-eq p0, v4, :cond_e

    const/16 v4, 0x16

    if-eq p0, v4, :cond_e

    const/16 v4, 0x17

    if-eq p0, v4, :cond_e

    const/16 v4, 0x13

    if-eq p0, v4, :cond_e

    const/16 v4, 0x15

    if-ne p0, v4, :cond_f

    .line 1782
    :cond_e
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1783
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1784
    sget p0, Lorg/telegram/messenger/R$drawable;->filled_limit_boost:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1785
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesMonthly:I

    new-array p1, v1, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v5, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    .line 1786
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesMonthlyPremium:I

    new-array p1, v2, [Ljava/lang/Object;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {v6, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    .line 1787
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {v6, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    :cond_f
    :goto_0
    return-object v0
.end method

.method private static hasFixedSize(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$boostChannel$11(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 4

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setLoading(Z)V

    if-nez p2, :cond_0

    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    .line 601
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewIncreaseCurrentValue()V

    .line 602
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    invoke-virtual {p0, p2, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    .line 603
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-gtz v0, :cond_1

    move v1, v3

    :cond_1
    iput-boolean v1, p2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    .line 604
    iput-boolean v3, p2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    .line 605
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->setMyBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    .line 606
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onBoostSuccess()V

    return-void
.end method

.method private synthetic lambda$boostChannel$12(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V
    .locals 4

    .line 595
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private synthetic lambda$boostChannel$13(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 609
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showFloodWait(I)V

    .line 612
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$leaveFromSelectedGroups$15(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 760
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p3, 0x0

    move p4, p3

    .line 761
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    .line 762
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 763
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 764
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

.method private synthetic lambda$loadAdminedChannels$16(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1802
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    .line 1803
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1804
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1805
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 1806
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    move p1, v0

    .line 1808
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1809
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    if-eqz v1, :cond_0

    .line 1810
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 1814
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 1815
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ltz v1, :cond_2

    if-eqz p1, :cond_2

    .line 1816
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1821
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    if-nez p1, :cond_3

    return-void

    .line 1825
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1826
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setIconValue(IZ)V

    .line 1827
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    .line 1828
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->startDelayedAnimation()V

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1799
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadInactiveChannels$20(Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V
    .locals 3

    .line 1971
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1972
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1973
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1975
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1977
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 1978
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    add-int/lit8 p3, p3, 0x4

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    move p2, p1

    .line 1980
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 1981
    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    if-eqz p3, :cond_1

    .line 1982
    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move p2, p1

    .line 1986
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 1987
    iget p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ltz p3, :cond_3

    if-eqz p2, :cond_3

    .line 1988
    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1991
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    if-nez p2, :cond_4

    .line 1992
    iget p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    .line 1994
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget p3, p3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1995
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    if-eqz p3, :cond_5

    .line 1996
    invoke-virtual {p3, p2, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setIconValue(IZ)V

    .line 1997
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget p3, p3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    .line 1998
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->startDelayedAnimation()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$loadInactiveChannels$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    if-nez p2, :cond_5

    .line 1943
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;

    .line 1944
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1945
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->dates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1947
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1948
    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    .line 1949
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->dates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    const v5, 0x15180

    .line 1950
    div-int/2addr v4, v5

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Days"

    .line 1954
    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/16 v5, 0x16d

    if-ge v4, v5, :cond_1

    .line 1956
    div-int/lit8 v4, v4, 0x1e

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Months"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1958
    :cond_1
    div-int/lit16 v4, v4, 0x16d

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Years"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1960
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    const/4 v6, 0x2

    const-string v7, "InactiveChatSignature"

    const-string v8, "Members"

    const/4 v9, 0x1

    if-eqz v5, :cond_2

    .line 1961
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v8, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1962
    sget v5, Lorg/telegram/messenger/R$string;->InactiveChatSignature:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v4, v6, v9

    invoke-static {v7, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1963
    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1964
    sget v3, Lorg/telegram/messenger/R$string;->InactiveChannelSignature:I

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "InactiveChannelSignature"

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1966
    :cond_3
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v8, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1967
    sget v5, Lorg/telegram/messenger/R$string;->InactiveChatSignature:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v4, v6, v9

    invoke-static {v7, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1970
    :cond_4
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2, v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 328
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;I)V
    .locals 2

    .line 375
    instance-of p2, p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 376
    check-cast p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .line 377
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 378
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 383
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChecked(ZZ)V

    .line 384
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    goto :goto_2

    .line 385
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz p2, :cond_4

    .line 386
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    if-nez p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0xb

    if-ne p2, v1, :cond_2

    return-void

    .line 389
    :cond_2
    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 390
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getObject()Ljava/lang/Object;

    move-result-object p2

    .line 391
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 396
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 397
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$onViewCreated$10(Landroid/view/View;)V
    .locals 2

    .line 545
    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v0, 0x13

    if-ne p1, v0, :cond_4

    .line 546
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->canApply:Z

    if-eqz v0, :cond_1

    .line 547
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->callOnClick()Z

    .line 548
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v0, :cond_3

    iget-boolean p1, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    if-eqz p1, :cond_3

    .line 549
    new-instance p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->needSelector:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 549
    :goto_0
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 555
    :cond_1
    iget-boolean p1, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean p1, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-nez p1, :cond_2

    .line 556
    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    invoke-static {v0, v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showMoreBoostsNeeded(JLorg/telegram/ui/ActionBar/BottomSheet;)V

    goto :goto_1

    .line 558
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/16 v0, 0xb

    if-ne p1, v0, :cond_6

    .line 564
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 565
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 568
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->sendInviteMessages()V

    return-void

    .line 571
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 574
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 575
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeSelectedLinks()V

    goto :goto_2

    :cond_8
    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    .line 577
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->leaveFromSelectedGroups()V

    :cond_9
    :goto_2
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;I)Z
    .locals 2

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 402
    iget p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v0, 0x0

    const/16 v1, 0x13

    if-eq p2, v1, :cond_0

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return v0
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 420
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 421
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 422
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$onViewCreated$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 424
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 432
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->invalidationEnabled:Z

    .line 434
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 503
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 504
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostChannel()V

    return-void
.end method

.method private static synthetic lambda$onViewCreated$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 506
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$8(Landroid/content/Context;Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 408
    iget v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x13

    const/16 v4, 0x15

    const/16 v5, 0x18

    if-ne v2, v3, :cond_8

    .line 412
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v3, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->empty:Z

    const-string v6, "Cancel"

    if-eqz v3, :cond_2

    .line 413
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    iget-wide v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showMoreBoostsNeeded(JLorg/telegram/ui/ActionBar/BottomSheet;)V

    goto/16 :goto_0

    .line 416
    :cond_1
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 417
    sget v1, Lorg/telegram/messenger/R$string;->PremiumNeeded:I

    const-string v3, "PremiumNeeded"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 418
    sget v1, Lorg/telegram/messenger/R$string;->PremiumNeededForBoosting:I

    const-string v3, "PremiumNeededForBoosting"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 419
    sget v1, Lorg/telegram/messenger/R$string;->CheckPhoneNumberYes:I

    const-string v3, "CheckPhoneNumberYes"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 424
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda4;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 425
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_0

    .line 427
    :cond_2
    iget-boolean v3, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->canApply:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_4

    iget-wide v9, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->replaceDialogId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_4

    .line 428
    iget-boolean v1, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->needSelector:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    iput-boolean v8, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    .line 430
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iput-boolean v7, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->invalidationEnabled:Z

    .line 431
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-object v3, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->myBoosts:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    iget-object v2, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 438
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostChannel()V

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_6

    .line 441
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 442
    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x1e

    .line 443
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v10, 0x3c

    .line 444
    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 447
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 448
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$drawable;->filled_limit_boost:I

    invoke-static {v12, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 450
    new-instance v13, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$3;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v0, v14, v11, v12}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$3;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;Landroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    const/16 v15, 0x1c

    const/16 v16, 0x1c

    const/16 v17, 0x0

    const/16 v18, 0x22

    const/16 v19, 0x22

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 468
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v13, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    new-instance v11, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 471
    sget v12, Lorg/telegram/messenger/R$drawable;->msg_arrow_avatar:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/16 v12, 0x11

    .line 473
    invoke-static {v5, v5, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 476
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v11, 0x3c

    const/16 v12, 0x3c

    const/4 v13, 0x0

    const/16 v14, 0x60

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 477
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, -0x2

    .line 479
    invoke-static {v11, v10, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 481
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 482
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v4, :cond_5

    const v4, 0x3ccccccd    # 0.025f

    .line 483
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 485
    :cond_5
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 486
    invoke-virtual {v2, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/16 v13, 0x18

    const/16 v14, 0x50

    const/16 v15, 0x18

    const/16 v16, 0x0

    .line 487
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 490
    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-wide v11, v11, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->replaceDialogId:J

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 491
    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {v4, v11, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 492
    invoke-virtual {v3, v10, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 494
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 495
    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v11, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 496
    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {v3, v11, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 497
    invoke-virtual {v5, v4, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 499
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 500
    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 501
    sget v1, Lorg/telegram/messenger/R$string;->ReplaceBoostChannelDescription:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v9, v5, v7

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v4, v5, v8

    const-string v4, "ReplaceBoostChannelDescription"

    invoke-static {v4, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    sget v1, Lorg/telegram/messenger/R$string;->Replace:I

    const-string v2, "Replace"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 506
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda5;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 507
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 508
    :cond_6
    iget v1, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->floodWait:I

    if-eqz v1, :cond_7

    .line 509
    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showFloodWait(I)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    const/16 v1, 0x12

    if-eq v2, v1, :cond_f

    const/16 v1, 0x14

    if-eq v2, v1, :cond_f

    if-eq v2, v5, :cond_f

    const/16 v1, 0x19

    if-eq v2, v1, :cond_f

    const/16 v1, 0x16

    if-eq v2, v1, :cond_f

    const/16 v1, 0x17

    if-eq v2, v1, :cond_f

    if-eq v2, v4, :cond_f

    const/16 v1, 0x1a

    if-eq v2, v1, :cond_f

    const/16 v1, 0x1b

    if-ne v2, v1, :cond_9

    goto :goto_2

    .line 528
    :cond_9
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_e

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    if-eqz v1, :cond_a

    goto :goto_1

    .line 532
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v1, :cond_b

    return-void

    .line 535
    :cond_b
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 536
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 538
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment;

    iget v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitTypeToServerString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 539
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onShowPremiumScreenRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    .line 540
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 542
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 529
    :cond_e
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 524
    :cond_f
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 525
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$9()V
    .locals 3

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    .line 551
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewIncreaseCurrentValue()V

    return-void
.end method

.method private synthetic lambda$revokeLinks$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1923
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    .line 1924
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onSuccessRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$revokeLinks$19(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1916
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p2, 0x0

    .line 1917
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 1918
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    .line 1919
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1920
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    const-string v0, ""

    .line 1921
    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    .line 1922
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    const/16 v2, 0x40

    invoke-virtual {v0, p3, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendInviteMessages$14()V
    .locals 6

    .line 673
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 676
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 677
    sget v4, Lorg/telegram/messenger/R$raw;->voip_invite:I

    sget v5, Lorg/telegram/messenger/R$string;->InviteLinkSentSingle:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 678
    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "InviteLinkSentSingle"

    invoke-static {v1, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 677
    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 681
    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->voip_invite:I

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    .line 682
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v2, "InviteLinkSent"

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 681
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method private leaveFromSelectedGroups()V
    .locals 7

    .line 745
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

    .line 746
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 747
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 748
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 750
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 751
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "LeaveCommunities"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 752
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 753
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 754
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

    goto :goto_1

    .line 756
    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->ChatsLeaveAlert:I

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ChatsLeaveAlert"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 758
    :goto_1
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 759
    sget v3, Lorg/telegram/messenger/R$string;->RevokeButton:I

    const-string v4, "RevokeButton"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 767
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 768
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 769
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 771
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private limitPreviewIncreaseCurrentValue()V
    .locals 5

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    iget v3, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->current_level_boosts:I

    sub-int v4, v2, v3

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v4, v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->increaseCurrentValue(III)V

    return-void
.end method

.method public static limitTypeToServerString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const-string p0, "double_limits__chatlists_joined"

    return-object p0

    :pswitch_2
    const-string p0, "double_limits__chatlist_invites"

    return-object p0

    :pswitch_3
    const-string p0, "double_limits__stickers_faved"

    return-object p0

    :pswitch_4
    const-string p0, "double_limits__saved_gifs"

    return-object p0

    :pswitch_5
    const-string p0, "double_limits__caption_length"

    return-object p0

    :pswitch_6
    const-string p0, "double_limits__upload_max_fileparts"

    return-object p0

    :pswitch_7
    const-string p0, "double_limits__channels"

    return-object p0

    :pswitch_8
    const-string p0, "double_limits__dialog_filters_chats"

    return-object p0

    :pswitch_9
    const-string p0, "double_limits__dialog_filters"

    return-object p0

    :pswitch_a
    const-string p0, "double_limits__channels_public"

    return-object p0

    :pswitch_b
    const-string p0, "double_limits__dialog_pinned"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private loadAdminedChannels()V
    .locals 3

    const/4 v0, 0x1

    .line 1796
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 1797
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 1798
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    .line 1799
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadInactiveChannels()V
    .locals 3

    const/4 v0, 0x1

    .line 1938
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 1939
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 1940
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getInactiveChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getInactiveChannels;-><init>()V

    .line 1941
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private onBoostSuccess()V
    .locals 3

    .line 617
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 618
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$4;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    .line 641
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 642
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->recreateTitleAndDescription()V

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsTitleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsDescriptionString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget v1, v1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostCount:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->setCount(IZ)V

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

    .line 1898
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1899
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "RevokeLinks"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1900
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1901
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1902
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentIsChannel:Z

    const-string v5, "/"

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    .line 1903
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

    .line 1905
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

    .line 1908
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentIsChannel:Z

    if-eqz v1, :cond_2

    .line 1909
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLinksAlertChannel:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RevokeLinksAlertChannel"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1911
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLinksAlert:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RevokeLinksAlert"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1914
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1915
    sget v1, Lorg/telegram/messenger/R$string;->RevokeButton:I

    const-string v2, "RevokeButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1929
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1930
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 1931
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 1933
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method private revokeSelectedLinks()V
    .locals 4

    .line 1890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1891
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1892
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1894
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeLinks(Ljava/util/ArrayList;)V

    return-void
.end method

.method private sendInviteMessages()V
    .locals 20

    move-object/from16 v0, p0

    .line 655
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-nez v1, :cond_0

    .line 657
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 660
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 662
    :cond_1
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v1, :cond_3

    .line 663
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    .line 668
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 669
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 670
    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v15

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v2, v1

    move-object/from16 v19, v15

    move/from16 v15, v16

    move-object/from16 v16, v18

    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_1

    .line 672
    :cond_2
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 665
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private setupBoostFeatures()V
    .locals 6

    .line 2015
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    .line 2019
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2020
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v1, v0

    :cond_0
    const/16 v0, 0xa

    .line 2024
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2026
    iget-object v3, v2, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$PeerColors;->maxLevel()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2027
    iget-object v3, v2, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$PeerColors;->maxLevel()I

    move-result v4

    :cond_2
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2028
    iget v3, v2, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2029
    iget v3, v2, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2030
    iget v3, v2, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2031
    iget v3, v2, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2032
    iget v2, v2, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-gt v1, v0, :cond_6

    .line 2036
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesForLevel(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 2037
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->arraysEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2038
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;-><init>(IZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2039
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private updateButton()V
    .locals 5

    .line 776
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-ne v0, v2, :cond_8

    .line 777
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v2, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->canApply:Z

    const-string v3, "OK"

    if-nez v2, :cond_0

    iget-boolean v4, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->empty:Z

    if-eqz v4, :cond_3

    :cond_0
    iget-boolean v4, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v4, :cond_1

    goto :goto_0

    .line 796
    :cond_1
    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-eqz v0, :cond_2

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 799
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->clearOverlayText()V

    goto/16 :goto_3

    :cond_3
    :goto_0
    const-string v4, "BoostingBoostAgain"

    if-eqz v2, :cond_5

    .line 779
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingBoostAgain:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 782
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostChannel:I

    const-string v3, "BoostChannel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 785
    :cond_5
    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-eqz v0, :cond_6

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 788
    :cond_6
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingBoostAgain:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 791
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    :cond_8
    const/16 v2, 0xb

    if-ne v0, v2, :cond_b

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->checkCounterView()V

    .line 804
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    if-nez v0, :cond_9

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->Close:I

    const-string v3, "Close"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 806
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->SendInviteLink:I

    const-string v3, "SendInviteLink"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 809
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->ActionSkip:I

    const-string v3, "ActionSkip"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    .line 811
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/CounterView;->setCount(IZ)V

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    .line 814
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    .line 816
    iget v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_c

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "RevokeLinks"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 819
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "LeaveCommunities"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 821
    :cond_d
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v2, v0, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 823
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->clearOverlayText()V

    :goto_3
    return-void
.end method

.method private updateRows()V
    .locals 5

    const/4 v0, 0x0

    .line 1833
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    const/4 v1, -0x1

    .line 1834
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    .line 1835
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    .line 1836
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    .line 1837
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    .line 1838
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    .line 1839
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    .line 1840
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesStartRow:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1842
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    .line 1843
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_4

    const/16 v4, 0x12

    if-eq v0, v4, :cond_4

    const/16 v4, 0x14

    if-eq v0, v4, :cond_4

    const/16 v4, 0x18

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1b

    if-eq v0, v4, :cond_4

    const/16 v4, 0x16

    if-eq v0, v4, :cond_4

    const/16 v4, 0x17

    if-eq v0, v4, :cond_4

    const/16 v4, 0x19

    if-eq v0, v4, :cond_4

    const/16 v4, 0x15

    if-ne v0, v4, :cond_0

    goto :goto_1

    .line 1865
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->hasFixedSize(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1866
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1867
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    .line 1868
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 1869
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    goto :goto_2

    .line 1871
    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    .line 1872
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_2

    .line 1873
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    .line 1875
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    goto :goto_0

    .line 1877
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    .line 1879
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    .line 1880
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v1, v0, v1

    if-le v1, v2, :cond_6

    add-int/lit8 v1, v0, 0x1

    .line 1881
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    goto :goto_2

    :cond_4
    :goto_1
    if-eq v0, v3, :cond_5

    const v0, 0x3e75c28f    # 0.24f

    .line 1856
    iput v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    add-int/lit8 v0, v1, 0x1

    .line 1857
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    .line 1858
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->giveawayGiftsPurchaseAvailable:Z

    if-eqz v0, :cond_5

    .line 1859
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->bottomRow:I

    .line 1862
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setupBoostFeatures()V

    .line 1863
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesStartRow:I

    .line 1864
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    .line 1885
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected channelColorLevelMin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 1

    .line 977
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 8

    .line 884
    sget p2, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, p2, :cond_b

    .line 885
    aget-object p1, p3, v3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 886
    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 887
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    .line 888
    instance-of v4, p3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 889
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v4

    .line 890
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v1, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_0
    move-object v1, v5

    .line 891
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v0, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_1

    :cond_1
    move-object v0, v5

    .line 892
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 893
    :cond_2
    instance-of v4, v1, Lorg/telegram/ui/ChatEditActivity;

    if-eqz v4, :cond_3

    .line 894
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 896
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    if-eqz p2, :cond_5

    .line 898
    instance-of p2, v0, Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_4

    .line 899
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 901
    :cond_4
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 902
    invoke-static {v5, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_2

    .line 904
    :cond_5
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 905
    invoke-static {v0, p1, v3}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :goto_2
    return-void

    :cond_6
    if-eqz p2, :cond_9

    .line 910
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 911
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p2, p2

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    .line 912
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3, p2, v3, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 913
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyInstance()V

    .line 914
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 915
    invoke-static {p2, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_5

    .line 917
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    .line 918
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, v1, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 919
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 920
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 921
    instance-of p2, v5, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_10

    .line 922
    invoke-static {v5, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_5

    .line 926
    :cond_9
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 927
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p2, p2

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    .line 928
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3, p2, v3, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 929
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyInstance()V

    .line 930
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 931
    invoke-static {p2, p1, v3}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_5

    .line 933
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 934
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-static {p2, p1, v3}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_5

    .line 937
    :cond_b
    sget p2, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I

    if-ne p1, p2, :cond_f

    .line 938
    aget-object p1, p3, v3

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    .line 939
    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 940
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 941
    aget-object p3, p3, v0

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz p3, :cond_e

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    if-nez v0, :cond_c

    goto :goto_4

    .line 947
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v4, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    add-int/2addr v4, p2

    iput v4, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    .line 948
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewIncreaseCurrentValue()V

    .line 949
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    invoke-virtual {p0, p3, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    .line 950
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-gtz v0, :cond_d

    move v0, v2

    goto :goto_3

    :cond_d
    move v0, v3

    :goto_3
    iput-boolean v0, p3, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    .line 951
    iput-boolean v2, p3, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    .line 952
    invoke-virtual {p3, p1}, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->setMyBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    .line 953
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onBoostSuccess()V

    new-array p1, v2, [Ljava/lang/Object;

    new-array p3, v3, [Ljava/lang/Object;

    const-string v0, "BoostingFromOtherChannel"

    .line 956
    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v3

    const-string p3, "BoostingReassignedFromPlural"

    .line 955
    invoke-static {p3, p2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 957
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    .line 958
    sget p3, Lorg/telegram/messenger/R$raw;->ic_boosts_replace:I

    const/16 v0, 0x1e

    invoke-virtual {p2, p3, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletinWithIconSize(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 p2, 0xfa0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_5

    :cond_e
    :goto_4
    return-void

    .line 959
    :cond_f
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didStartedMultiGiftsSelector:I

    if-ne p1, p2, :cond_10

    .line 960
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_10
    :goto_5
    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 846
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 862
    sget v0, Lorg/telegram/messenger/R$string;->LimitReached:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 848
    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->BoostChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 858
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->UnlockBoostChannelFeatures:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 860
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 868
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 869
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 870
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 871
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedMultiGiftsSelector:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 876
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 877
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 878
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 879
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedMultiGiftsSelector:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 11

    .line 336
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    .line 337
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 339
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$1;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v0, v3, v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 349
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->hasFixedSize:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_0

    .line 360
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    .line 369
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 370
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    const/4 v4, -0x1

    const/16 v5, 0x48

    const/16 v6, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/16 v10, 0xc

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x48

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 374
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    new-instance p1, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, v0, v3}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    return-void
.end method

.method public setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V
    .locals 0

    .line 1233
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    .line 1234
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    .line 1235
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    return-void
.end method

.method public setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    .line 1239
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    .line 1240
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    .line 1241
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    return-void
.end method

.method public setCurrentValue(I)V
    .locals 0

    .line 1208
    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    .line 1229
    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    return-void
.end method

.method public setRequiredLvl(I)V
    .locals 0

    .line 691
    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->requiredLvl:I

    return-void
.end method

.method public setRestrictedUsers(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .line 1217
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x3

    .line 1218
    invoke-static {p1, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    .line 1219
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    .line 1220
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 1221
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    if-eqz p1, :cond_0

    .line 1222
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1224
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 1225
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    return-void
.end method

.method public setVeryLargeFile(Z)V
    .locals 0

    .line 1212
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    .line 1213
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    return-void
.end method

.method public showStatisticButtonInLink(Ljava/lang/Runnable;)V
    .locals 0

    .line 1245
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->statisticClickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public updatePremiumButtonText()V
    .locals 4

    .line 695
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const-string v1, "OK"

    const/16 v2, 0x13

    if-ne v0, v2, :cond_2

    .line 696
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v0

    const-string v2, "BoostChannel"

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v3, :cond_0

    .line 698
    sget v2, Lorg/telegram/messenger/R$string;->BoostingBoostAgain:I

    const-string v3, "BoostingBoostAgain"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 699
    :cond_0
    sget v3, Lorg/telegram/messenger/R$string;->BoostChannel:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 697
    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-eqz v0, :cond_a

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 704
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostChannel:I

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    const/16 v2, 0x12

    if-eq v0, v2, :cond_9

    const/16 v2, 0x14

    if-eq v0, v2, :cond_9

    const/16 v2, 0x18

    if-eq v0, v2, :cond_9

    const/16 v2, 0x19

    if-eq v0, v2, :cond_9

    const/16 v2, 0x16

    if-eq v0, v2, :cond_9

    const/16 v2, 0x17

    if-eq v0, v2, :cond_9

    const/16 v2, 0x15

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_3

    goto/16 :goto_2

    .line 721
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 725
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->IncreaseLimit:I

    const-string v2, "IncreaseLimit"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    if-eqz v0, :cond_7

    .line 727
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    add-int/lit8 v2, v1, 0x1

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    if-ne v2, v0, :cond_5

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$raw;->addone_icon:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    const v3, 0x3fcccccd    # 1.6f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40200000    # 2.5f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$raw;->double_icon:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    goto :goto_3

    .line 736
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->hideIcon()V

    goto :goto_3

    .line 739
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->hideIcon()V

    goto :goto_3

    .line 722
    :cond_8
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->hideIcon()V

    goto :goto_3

    .line 717
    :cond_9
    :goto_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "d "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 718
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 719
    sget v1, Lorg/telegram/messenger/R$string;->CopyLink:I

    const-string v2, "CopyLink"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 720
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_3
    return-void
.end method
