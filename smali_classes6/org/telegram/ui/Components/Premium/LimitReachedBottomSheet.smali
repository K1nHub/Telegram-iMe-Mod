.class public Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "LimitReachedBottomSheet.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;,
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;
    }
.end annotation


# instance fields
.field actionBtn:Landroid/widget/TextView;

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
    .locals 6

    .line 194
    invoke-static {p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->hasFixedSize(I)Z

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    .line 161
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    .line 162
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    .line 163
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    .line 164
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    .line 165
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    .line 166
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    .line 167
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    .line 168
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->bottomRow:I

    .line 171
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    .line 173
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    .line 183
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 195
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 197
    iput p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 198
    iput p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    .line 202
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadAdminedChannels()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    if-ne p3, p1, :cond_1

    .line 204
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadInactiveChannels()V

    .line 206
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    const/16 p1, 0x13

    if-ne p3, p1, :cond_2

    .line 208
    new-instance p1, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    .line 209
    iget-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/16 p1, 0x12

    if-eq p3, p1, :cond_3

    const/16 p1, 0x14

    if-ne p3, p1, :cond_4

    .line 212
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 213
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 214
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/16 p2, 0x11

    .line 215
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 218
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/high16 p3, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 220
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->getTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {p2, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
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

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostLink()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeLinks(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2200(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;
    .locals 0

    .line 95
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsDescriptionString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)J
    .locals 2

    .line 95
    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsTitleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private boostChannel()V
    .locals 7

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setLoading(Z)V

    .line 470
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

.method private getBoostLink()Ljava/lang/String;
    .locals 3

    .line 989
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/ChannelBoostUtilities;->createLink(IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoostsDescriptionString()Ljava/lang/String;
    .locals 11

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    iget v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->current_level_boosts:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "ChannelBoostsJustReachedLevelNext"

    const-string v6, "BoostStories"

    const/4 v7, 0x2

    if-eqz v2, :cond_2

    .line 1341
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v2, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v2, :cond_2

    .line 1342
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-ne v0, v3, :cond_1

    .line 1343
    sget v0, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevel1:I

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "ChannelBoostsJustReachedLevel1"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1345
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevelNext:I

    new-array v2, v7, [Ljava/lang/Object;

    .line 1346
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    new-array v4, v4, [Ljava/lang/Object;

    .line 1347
    invoke-static {v6, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 1345
    invoke-static {v5, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1350
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v2, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    const-string v8, "ChannelNeedBoostsDescriptionLevelNext"

    const-string v9, "MoreBoosts"

    if-eqz v2, :cond_5

    .line 1351
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-nez v2, :cond_3

    .line 1352
    sget v2, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsAlreadyBoostedDescriptionLevel1:I

    new-array v5, v3, [Ljava/lang/Object;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    sub-int v6, v0, v1

    new-array v3, v3, [Ljava/lang/Object;

    sub-int/2addr v0, v1

    .line 1354
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v9, v6, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "ChannelNeedBoostsAlreadyBoostedDescriptionLevel1"

    .line 1352
    invoke-static {v0, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1357
    :cond_3
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-nez v0, :cond_4

    .line 1358
    sget v0, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevelNext:I

    new-array v1, v7, [Ljava/lang/Object;

    .line 1359
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v2, v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1360
    invoke-static {v6, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1358
    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1362
    :cond_4
    sget v2, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionLevelNext:I

    new-array v5, v7, [Ljava/lang/Object;

    sub-int v7, v0, v1

    new-array v10, v3, [Ljava/lang/Object;

    sub-int/2addr v0, v1

    .line 1363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v4

    invoke-static {v9, v7, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v0, v3

    new-array v1, v4, [Ljava/lang/Object;

    .line 1364
    invoke-static {v6, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .line 1362
    invoke-static {v8, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1369
    :cond_5
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-nez v2, :cond_6

    .line 1370
    sget v2, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionLevel1:I

    new-array v5, v3, [Ljava/lang/Object;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    sub-int v6, v0, v1

    new-array v3, v3, [Ljava/lang/Object;

    sub-int/2addr v0, v1

    .line 1372
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v9, v6, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "ChannelNeedBoostsDescriptionLevel1"

    .line 1370
    invoke-static {v0, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1375
    :cond_6
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-nez v0, :cond_7

    .line 1376
    sget v0, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevelNext:I

    new-array v1, v7, [Ljava/lang/Object;

    .line 1377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v2, v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1378
    invoke-static {v6, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1376
    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1380
    :cond_7
    sget v2, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionLevelNext:I

    new-array v5, v7, [Ljava/lang/Object;

    sub-int v7, v0, v1

    new-array v10, v3, [Ljava/lang/Object;

    sub-int/2addr v0, v1

    .line 1381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v4

    invoke-static {v9, v7, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v0, v3

    new-array v1, v4, [Ljava/lang/Object;

    .line 1382
    invoke-static {v6, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .line 1380
    invoke-static {v8, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoostsTitleString()Ljava/lang/String;
    .locals 5

    .line 1319
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1320
    sget v0, Lorg/telegram/messenger/R$string;->BoostsMaxLevelReached:I

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "BoostsMaxLevelReached"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1321
    :cond_0
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-nez v0, :cond_1

    .line 1322
    sget v0, Lorg/telegram/messenger/R$string;->HelpUpgradeChannel:I

    const-string v1, "HelpUpgradeChannel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1323
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    if-eqz v0, :cond_3

    .line 1324
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1325
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v1, v1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1326
    sget v1, Lorg/telegram/messenger/R$string;->YouBoostedChannel2:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v0, v3, v2

    const-string v0, "YouBoostedChannel2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1328
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->BoostingEnableStoriesForChannel2:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v0, v3, v2

    const-string v0, "BoostingEnableStoriesForChannel2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1331
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v0, :cond_4

    .line 1332
    sget v0, Lorg/telegram/messenger/R$string;->YouBoostedChannel:I

    const-string v1, "YouBoostedChannel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1334
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->BoostingEnableStoriesForChannel:I

    const-string v1, "BoostingEnableStoriesForChannel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;
    .locals 8

    .line 1391
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 1393
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1394
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1395
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1396
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

    .line 1397
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

    .line 1398
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

    .line 1400
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->publicLinksLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1401
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->publicLinksLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1402
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1403
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

    .line 1404
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

    .line 1405
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
    const/16 v4, 0xc

    if-ne p0, v4, :cond_2

    .line 1407
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistInvitesLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1408
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistInvitesLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1409
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1410
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

    .line 1411
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

    .line 1412
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

    :cond_2
    const/16 v4, 0xd

    if-ne p0, v4, :cond_3

    .line 1414
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistJoinedLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1415
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistJoinedLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1416
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_folder:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1417
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

    .line 1418
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

    .line 1419
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

    :cond_3
    const/4 v4, 0x3

    if-ne p0, v4, :cond_4

    .line 1421
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1422
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1423
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_folder:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1424
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

    .line 1425
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

    .line 1426
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

    :cond_4
    const/4 v5, 0x4

    if-ne p0, v5, :cond_5

    .line 1428
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1429
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1430
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_chats:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1431
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

    .line 1432
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

    .line 1433
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

    :cond_5
    const/4 v6, 0x5

    if-ne p0, v6, :cond_6

    .line 1435
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->channelsLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1436
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->channelsLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1437
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_groups:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1438
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

    .line 1439
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

    .line 1440
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

    :cond_6
    const/4 v6, 0x6

    if-ne p0, v6, :cond_7

    const/16 p0, 0x64

    .line 1442
    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    const/16 p0, 0xc8

    .line 1443
    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1444
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_folder:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1445
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

    .line 1446
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFileSizePremium:I

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v4, p1, v3

    const-string v4, "LimitReachedFileSizePremium"

    invoke-static {v4, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 1447
    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFileSizeLocked:I

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v3

    const-string v1, "LimitReachedFileSizeLocked"

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x7

    const-string v7, "LimitReachedAccounts"

    if-ne p0, v6, :cond_8

    .line 1449
    iput v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1450
    iput v5, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1451
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_accounts:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1452
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

    .line 1453
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

    .line 1454
    iget v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0xb

    if-ne p0, v4, :cond_9

    .line 1456
    iput v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1457
    iput v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1458
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1459
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

    .line 1460
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 1461
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0xe

    if-ne p0, v4, :cond_a

    .line 1463
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storyExpiringLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1464
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storyExpiringLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1465
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_stories:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1466
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

    .line 1467
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

    .line 1468
    iget v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0xf

    if-ne p0, v4, :cond_b

    .line 1470
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentWeeklyLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1471
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentWeeklyLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1472
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_stories:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1473
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

    .line 1474
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

    .line 1475
    iget v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x10

    const-string v5, "LimitReachedStoriesMonthly"

    const-string v6, "LimitReachedStoriesMonthlyPremium"

    if-ne p0, v4, :cond_c

    .line 1477
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1478
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1479
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_stories:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1480
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

    .line 1481
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

    .line 1482
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {v6, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto :goto_0

    :cond_c
    const/16 v4, 0x12

    if-eq p0, v4, :cond_d

    const/16 v4, 0x14

    if-eq p0, v4, :cond_d

    const/16 v4, 0x13

    if-ne p0, v4, :cond_e

    .line 1484
    :cond_d
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitDefault:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 1485
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitPremium:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 1486
    sget p0, Lorg/telegram/messenger/R$drawable;->filled_limit_boost:I

    iput p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 1487
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

    .line 1488
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

    .line 1489
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {v6, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    :cond_e
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

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

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

.method private synthetic lambda$boostChannel$11(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 4

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setLoading(Z)V

    if-nez p2, :cond_0

    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    .line 477
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewIncreaseCurrentValue()V

    .line 478
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    invoke-virtual {p0, p2, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    .line 479
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-gtz v0, :cond_1

    move v1, v3

    :cond_1
    iput-boolean v1, p2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    .line 480
    iput-boolean v3, p2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    .line 481
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->setMyBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    .line 482
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onBoostSuccess()V

    return-void
.end method

.method private synthetic lambda$boostChannel$12(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V
    .locals 4

    .line 471
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

    .line 485
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showFloodWait(I)V

    .line 488
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$leaveFromSelectedGroups$15(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 622
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p3, 0x0

    move p4, p3

    .line 623
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    .line 624
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 625
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 626
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

    .line 1504
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    .line 1505
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1506
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1507
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 1508
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    move p1, v0

    .line 1510
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1511
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    if-eqz v1, :cond_0

    .line 1512
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

    .line 1516
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 1517
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ltz v1, :cond_2

    if-eqz p1, :cond_2

    .line 1518
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1523
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    if-nez p1, :cond_3

    return-void

    .line 1527
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1528
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setIconValue(IZ)V

    .line 1529
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    .line 1530
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->startDelayedAnimation()V

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1501
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadInactiveChannels$20(Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V
    .locals 3

    .line 1655
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1656
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1657
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1659
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1661
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 1662
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    add-int/lit8 p3, p3, 0x4

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    move p2, p1

    .line 1664
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 1665
    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    if-eqz p3, :cond_1

    .line 1666
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

    .line 1670
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 1671
    iget p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ltz p3, :cond_3

    if-eqz p2, :cond_3

    .line 1672
    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1675
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    if-nez p2, :cond_4

    .line 1676
    iget p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    .line 1678
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget p3, p3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1679
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    if-eqz p3, :cond_5

    .line 1680
    invoke-virtual {p3, p2, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setIconValue(IZ)V

    .line 1681
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget p3, p3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    .line 1682
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->startDelayedAnimation()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$loadInactiveChannels$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    if-nez p2, :cond_5

    .line 1627
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;

    .line 1628
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1629
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

    .line 1631
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1632
    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    .line 1633
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->dates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    const v5, 0x15180

    .line 1634
    div-int/2addr v4, v5

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Days"

    .line 1638
    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/16 v5, 0x16d

    if-ge v4, v5, :cond_1

    .line 1640
    div-int/lit8 v4, v4, 0x1e

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Months"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1642
    :cond_1
    div-int/lit16 v4, v4, 0x16d

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Years"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1644
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    const/4 v6, 0x2

    const-string v7, "InactiveChatSignature"

    const-string v8, "Members"

    const/4 v9, 0x1

    if-eqz v5, :cond_2

    .line 1645
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v8, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1646
    sget v5, Lorg/telegram/messenger/R$string;->InactiveChatSignature:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v4, v6, v9

    invoke-static {v7, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1647
    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1648
    sget v3, Lorg/telegram/messenger/R$string;->InactiveChannelSignature:I

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "InactiveChannelSignature"

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1650
    :cond_3
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v8, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1651
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

    .line 1654
    :cond_4
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2, v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 224
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;I)V
    .locals 2

    .line 261
    instance-of p2, p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 262
    check-cast p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .line 263
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 264
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChecked(ZZ)V

    .line 270
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    goto :goto_2

    .line 271
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz p2, :cond_4

    .line 272
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    if-nez p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0xb

    if-ne p2, v1, :cond_2

    return-void

    .line 275
    :cond_2
    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 276
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getObject()Ljava/lang/Object;

    move-result-object p2

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 283
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$onViewCreated$10(Landroid/view/View;)V
    .locals 2

    .line 421
    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v0, 0x13

    if-ne p1, v0, :cond_4

    .line 422
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->canApply:Z

    if-eqz v0, :cond_1

    .line 423
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->callOnClick()Z

    .line 424
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v0, :cond_3

    iget-boolean p1, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    if-eqz p1, :cond_3

    .line 425
    new-instance p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->needSelector:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 425
    :goto_0
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 431
    :cond_1
    iget-boolean p1, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean p1, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-nez p1, :cond_2

    .line 432
    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showMoreBoostsNeeded(J)V

    goto :goto_1

    .line 434
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/16 v0, 0xb

    if-ne p1, v0, :cond_6

    .line 440
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 441
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 444
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->sendInviteMessages()V

    return-void

    .line 447
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 450
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 451
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeSelectedLinks()V

    goto :goto_2

    :cond_8
    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    .line 453
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->leaveFromSelectedGroups()V

    :cond_9
    :goto_2
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;I)Z
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 288
    iget p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v0, 0x0

    const/16 v1, 0x13

    if-eq p2, v1, :cond_0

    .line 289
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return v0
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 306
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 307
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 308
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$onViewCreated$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 310
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 318
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->invalidationEnabled:Z

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 389
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 390
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostChannel()V

    return-void
.end method

.method private static synthetic lambda$onViewCreated$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 392
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$8(Landroid/content/Context;Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 294
    iget v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x13

    if-ne v2, v3, :cond_8

    .line 298
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v3, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->empty:Z

    const-string v4, "Cancel"

    if-eqz v3, :cond_2

    .line 299
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    iget-wide v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showMoreBoostsNeeded(J)V

    goto/16 :goto_0

    .line 302
    :cond_1
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 303
    sget v1, Lorg/telegram/messenger/R$string;->PremiumNeeded:I

    const-string v3, "PremiumNeeded"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 304
    sget v1, Lorg/telegram/messenger/R$string;->PremiumNeededForBoosting:I

    const-string v3, "PremiumNeededForBoosting"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 305
    sget v1, Lorg/telegram/messenger/R$string;->CheckPhoneNumberYes:I

    const-string v3, "CheckPhoneNumberYes"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 310
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda4;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 311
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_0

    .line 313
    :cond_2
    iget-boolean v3, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->canApply:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    iget-wide v7, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->replaceDialogId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 314
    iget-boolean v1, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->needSelector:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    iput-boolean v6, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    .line 316
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iput-boolean v5, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->invalidationEnabled:Z

    .line 317
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

    .line 324
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostChannel()V

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_6

    .line 327
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 328
    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x1e

    .line 329
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v8, 0x3c

    .line 330
    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 333
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 334
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->filled_limit_boost:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 336
    new-instance v11, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$3;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v0, v12, v9, v10}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$3;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;Landroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    const/16 v13, 0x1c

    const/16 v14, 0x1c

    const/4 v15, 0x0

    const/16 v16, 0x22

    const/16 v17, 0x22

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 354
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v11, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 357
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_arrow_avatar:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/16 v10, 0x11

    const/16 v11, 0x18

    .line 359
    invoke-static {v11, v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v9, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v9, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v10, 0x3c

    const/16 v11, 0x3c

    const/4 v12, 0x0

    const/16 v13, 0x60

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 363
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v9, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, -0x2

    .line 365
    invoke-static {v10, v8, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 367
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 368
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v8, v10, :cond_5

    const v8, 0x3ccccccd    # 0.025f

    .line 369
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 371
    :cond_5
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41800000    # 16.0f

    .line 372
    invoke-virtual {v2, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/16 v13, 0x18

    const/16 v14, 0x50

    const/16 v15, 0x18

    const/16 v16, 0x0

    .line 373
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    new-instance v8, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v8}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 376
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

    .line 377
    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 378
    invoke-virtual {v3, v10, v8}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 380
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 381
    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v11, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 382
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 383
    invoke-virtual {v9, v8, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 385
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 387
    sget v1, Lorg/telegram/messenger/R$string;->ReplaceBoostChannelDescription:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v9, v7, v5

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v5, v7, v6

    const-string v5, "ReplaceBoostChannelDescription"

    invoke-static {v5, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    sget v1, Lorg/telegram/messenger/R$string;->Replace:I

    const-string v2, "Replace"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 392
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda5;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 393
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 394
    :cond_6
    iget v1, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->floodWait:I

    if-eqz v1, :cond_7

    .line 395
    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showFloodWait(I)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    const/16 v1, 0x12

    if-eq v2, v1, :cond_f

    const/16 v1, 0x14

    if-ne v2, v1, :cond_9

    goto :goto_2

    .line 404
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

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    if-eqz v1, :cond_a

    goto :goto_1

    .line 408
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v1, :cond_b

    return-void

    .line 411
    :cond_b
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 412
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 414
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment;

    iget v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitTypeToServerString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 415
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onShowPremiumScreenRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    .line 416
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 418
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 405
    :cond_e
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 400
    :cond_f
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 401
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$9()V
    .locals 3

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    .line 427
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewIncreaseCurrentValue()V

    return-void
.end method

.method private synthetic lambda$revokeLinks$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1607
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    .line 1608
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onSuccessRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$revokeLinks$19(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1600
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p2, 0x0

    .line 1601
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 1602
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    .line 1603
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1604
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    const-string v0, ""

    .line 1605
    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    .line 1606
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

    .line 549
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 552
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 553
    sget v4, Lorg/telegram/messenger/R$raw;->voip_invite:I

    sget v5, Lorg/telegram/messenger/R$string;->InviteLinkSentSingle:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 554
    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "InviteLinkSentSingle"

    invoke-static {v1, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 553
    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 557
    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->voip_invite:I

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    .line 558
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

    .line 557
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method private leaveFromSelectedGroups()V
    .locals 7

    .line 607
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

    .line 608
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 609
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 610
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 612
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 613
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "LeaveCommunities"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 614
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 615
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 616
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

    .line 618
    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->ChatsLeaveAlert:I

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ChatsLeaveAlert"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 620
    :goto_1
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 621
    sget v3, Lorg/telegram/messenger/R$string;->RevokeButton:I

    const-string v4, "RevokeButton"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 629
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 631
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 633
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

    .line 460
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

    .line 1498
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 1499
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 1500
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    .line 1501
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

    .line 1622
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    .line 1623
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 1624
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getInactiveChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getInactiveChannels;-><init>()V

    .line 1625
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

    .line 493
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 494
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$4;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    .line 517
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 518
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->recreateTitleAndDescription()V

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsTitleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsDescriptionString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 526
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

    .line 1582
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1583
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "RevokeLinks"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1584
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1585
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1586
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentIsChannel:Z

    const-string v5, "/"

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    .line 1587
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

    .line 1589
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

    .line 1592
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentIsChannel:Z

    if-eqz v1, :cond_2

    .line 1593
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLinksAlertChannel:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RevokeLinksAlertChannel"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1595
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLinksAlert:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RevokeLinksAlert"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1598
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1599
    sget v1, Lorg/telegram/messenger/R$string;->RevokeButton:I

    const-string v2, "RevokeButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1613
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1614
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 1615
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 1617
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

    .line 1574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1576
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1578
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeLinks(Ljava/util/ArrayList;)V

    return-void
.end method

.method private sendInviteMessages()V
    .locals 20

    move-object/from16 v0, p0

    .line 531
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-nez v1, :cond_0

    .line 533
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 536
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 537
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

    .line 538
    :cond_1
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v1, :cond_3

    .line 539
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    .line 544
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

    .line 545
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 546
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

    .line 548
    :cond_2
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    .line 541
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private updateButton()V
    .locals 5

    .line 638
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-ne v0, v2, :cond_8

    .line 639
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

    .line 658
    :cond_1
    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 661
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->clearOverlayText()V

    goto/16 :goto_3

    :cond_3
    :goto_0
    const-string v4, "BoostingBoostAgain"

    if-eqz v2, :cond_5

    .line 641
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingBoostAgain:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 644
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostChannel:I

    const-string v3, "BoostChannel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 647
    :cond_5
    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-eqz v0, :cond_6

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 650
    :cond_6
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingBoostAgain:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 653
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

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->checkCounterView()V

    .line 666
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    if-nez v0, :cond_9

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->Close:I

    const-string v3, "Close"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 668
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->SendInviteLink:I

    const-string v3, "SendInviteLink"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 671
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->ActionSkip:I

    const-string v3, "ActionSkip"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    .line 673
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/CounterView;->setCount(IZ)V

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    .line 676
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    .line 678
    iget v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_c

    .line 679
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

    .line 681
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "LeaveCommunities"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 683
    :cond_d
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v2, v0, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 685
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->clearOverlayText()V

    :goto_3
    return-void
.end method

.method private updateRows()V
    .locals 4

    const/4 v0, 0x0

    .line 1535
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    const/4 v1, -0x1

    .line 1536
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    .line 1537
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    .line 1538
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    .line 1539
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    .line 1540
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    .line 1541
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1542
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    .line 1543
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->hasFixedSize(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1544
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1545
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    .line 1546
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1547
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    goto :goto_1

    .line 1549
    :cond_0
    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    .line 1550
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    .line 1551
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 1553
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    goto :goto_0

    .line 1555
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    .line 1557
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    .line 1558
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v1, v0, v1

    if-le v1, v2, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 1559
    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    .line 1563
    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 1564
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    .line 1565
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->giveawayGiftsPurchaseAvailable:Z

    if-eqz v0, :cond_5

    .line 1566
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->bottomRow:I

    .line 1569
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 1

    .line 782
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    .line 724
    sget p2, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_4

    .line 725
    aget-object p1, p3, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 726
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 728
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 729
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p2, p2

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    .line 730
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3, p2, v2, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 731
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyInstance()V

    .line 732
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 733
    invoke-static {p2, p1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_2

    .line 735
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    .line 736
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 737
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 738
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 739
    instance-of p3, p2, Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_7

    .line 740
    invoke-static {p2, p1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_2

    .line 744
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 745
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p2, p2

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    .line 746
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3, p2, v2, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 747
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyInstance()V

    .line 748
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 749
    invoke-static {p2, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_2

    .line 751
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 752
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-static {p2, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_2

    .line 755
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I

    if-ne p1, p2, :cond_7

    .line 756
    aget-object p1, p3, v2

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    .line 757
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 758
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    .line 759
    aget-object p3, p3, v3

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz p3, :cond_7

    .line 761
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    if-nez v3, :cond_5

    goto :goto_2

    .line 765
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    add-int/2addr v4, p2

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    .line 766
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewIncreaseCurrentValue()V

    .line 767
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    invoke-virtual {p0, p3, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    .line 768
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-gtz v3, :cond_6

    move v3, v1

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_1
    iput-boolean v3, p3, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    .line 769
    iput-boolean v1, p3, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    .line 770
    invoke-virtual {p3, p1}, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->setMyBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    .line 771
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onBoostSuccess()V

    new-array p1, v1, [Ljava/lang/Object;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v3, "BoostingFromOtherChannel"

    .line 774
    invoke-static {v3, v0, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    const-string p3, "BoostingReassignedFromPlural"

    .line 773
    invoke-static {p3, p2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 775
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    .line 776
    sget p3, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v0, 0x1e

    invoke-virtual {p2, p3, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletinWithIconSize(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 p2, 0xfa0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    nop

    :cond_7
    :goto_2
    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 702
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 703
    sget v0, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    const-string v1, "ChannelInviteViaLink"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 705
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->LimitReached:I

    const-string v1, "LimitReached"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 710
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 711
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 712
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 717
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 718
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 719
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 11

    .line 232
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    .line 233
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$1;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v0, v3, v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 245
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->hasFixedSize:Z

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    .line 255
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 256
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

    .line 258
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

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x48

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 260
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 286
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    new-instance p1, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, v0, v3}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    return-void
.end method

.method public setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    .line 1019
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    return-void
.end method

.method public setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    .line 1024
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    .line 1025
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    return-void
.end method

.method public setCurrentValue(I)V
    .locals 0

    .line 993
    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    .line 1014
    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

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

    .line 1002
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x3

    .line 1003
    invoke-static {p1, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    .line 1004
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    .line 1005
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 1006
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    if-eqz p1, :cond_0

    .line 1007
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1009
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    .line 1010
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    return-void
.end method

.method public setVeryLargeFile(Z)V
    .locals 0

    .line 997
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    .line 998
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    return-void
.end method

.method public showStatisticButtonInLink(Ljava/lang/Runnable;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->statisticClickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public updatePremiumButtonText()V
    .locals 4

    .line 567
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const-string v1, "OK"

    const/16 v2, 0x13

    if-ne v0, v2, :cond_2

    .line 568
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v0

    const-string v2, "BoostChannel"

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v3, :cond_0

    .line 570
    sget v2, Lorg/telegram/messenger/R$string;->BoostingBoostAgain:I

    const-string v3, "BoostingBoostAgain"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 571
    :cond_0
    sget v3, Lorg/telegram/messenger/R$string;->BoostChannel:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 569
    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-eqz v0, :cond_a

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 576
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

    if-ne v0, v2, :cond_3

    goto/16 :goto_2

    .line 583
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

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 587
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->IncreaseLimit:I

    const-string v2, "IncreaseLimit"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    if-eqz v0, :cond_7

    .line 589
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    add-int/lit8 v2, v1, 0x1

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    if-ne v2, v0, :cond_5

    .line 590
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

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$raw;->double_icon:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    goto :goto_3

    .line 598
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->hideIcon()V

    goto :goto_3

    .line 601
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->hideIcon()V

    goto :goto_3

    .line 584
    :cond_8
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->hideIcon()V

    goto :goto_3

    .line 579
    :cond_9
    :goto_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "d "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 580
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 581
    sget v1, Lorg/telegram/messenger/R$string;->CopyLink:I

    const-string v2, "CopyLink"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 582
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_3
    return-void
.end method
