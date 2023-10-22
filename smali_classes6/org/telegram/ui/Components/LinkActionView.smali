.class public Lorg/telegram/ui/Components/LinkActionView;
.super Landroid/widget/LinearLayout;
.source "LinkActionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/LinkActionView$Delegate;,
        Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;
    }
.end annotation


# instance fields
.field private actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

.field private canEdit:Z

.field private clearTextImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final copyView:Landroid/widget/TextView;

.field private delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final frameLayout:Landroid/widget/FrameLayout;

.field private hideRevokeOption:Z

.field private final isChannel:Z

.field private final isEditableAsInput:Z

.field private final isWithAvatar:Z

.field private final linearLayout:Landroid/widget/LinearLayout;

.field link:Ljava/lang/String;

.field linkView:Landroid/widget/TextView;

.field private loadedInviteLink:Ljava/lang/String;

.field loadingImporters:Z

.field private maxView:Landroid/widget/TextView;

.field private networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

.field private optionsItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;",
            ">;"
        }
    .end annotation
.end field

.field optionsView:Landroid/widget/ImageView;

.field private permanent:Z

.field private final point:[F

.field private qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

.field private qrText:Ljava/lang/String;

.field private final removeView:Landroid/widget/TextView;

.field private final shareView:Landroid/widget/TextView;

.field private usersCount:I


# direct methods
.method public static synthetic $r8$lambda$1SgQxmHcUYYBg-8FjyJ93AhcAE8(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3fbyaHTTyq29_g_Meaf2u32xhRM(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$7(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8WaG-bcCk8SlDTKanDUzYKC5OFQ(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$5(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AraQ4_XWW-C4ogi4oF4BWxq0DwA(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$13(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IUacOpjWH8SwQr9KXW7J-7ElIl0(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->lambda$loadUsers$15(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JtmlSuiEzGWEr6Kh6ECInkvb3HA(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$handleClearEditTextButton$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q5BxiETFuwYAuRKtq88FuJ6bP7E(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$setActionButtonListener$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q8p0ZxDWxwTTjKO9aJxexRxfxZY(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->lambda$loadUsers$16(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ULfxvISTPub_4zWBzHsLQlH-ho0(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$12(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XPDsXQ2q9tt8BpNOAXnwA_agDCg(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$revokeLink$14(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_hI94C3GCjQhT4Y_i0h9EfrKjuQ(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$addMaxButton$1(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aVF-jUPykD818cJuEvaWK8Oe2I4(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$3(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tAMUL7rRMavVyxqs0z7QVjf6JAs(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tfU_BnLNHFSBiO4aGZkvJI0671E(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjL2PRet-LS4BtD4bNdQtT39Dtw(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vyE7-l62DarYhLpMWsBsfrdCGxg(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$11(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yhgf0N59oPQRvNSrCOyEvRN6WYs(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$10(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v11, p2

    .line 88
    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZZZZLandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 98
    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZZZZ)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 93
    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZZZZLandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZZZZLandroid/util/AttributeSet;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p11

    .line 426
    invoke-direct {v0, v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    .line 421
    iput-boolean v7, v0, Lorg/telegram/ui/Components/LinkActionView;->canEdit:Z

    const/4 v8, 0x2

    new-array v9, v8, [F

    .line 423
    iput-object v9, v0, Lorg/telegram/ui/Components/LinkActionView;->point:[F

    .line 428
    iput-boolean v5, v0, Lorg/telegram/ui/Components/LinkActionView;->isEditableAsInput:Z

    .line 429
    iput-boolean v6, v0, Lorg/telegram/ui/Components/LinkActionView;->isWithAvatar:Z

    .line 431
    iput-object v2, v0, Lorg/telegram/ui/Components/LinkActionView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 432
    iput-boolean v4, v0, Lorg/telegram/ui/Components/LinkActionView;->permanent:Z

    move/from16 v9, p7

    .line 433
    iput-boolean v9, v0, Lorg/telegram/ui/Components/LinkActionView;->isChannel:Z

    .line 435
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 436
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    const/high16 v10, 0x41800000    # 16.0f

    const/16 v11, 0x28

    const/16 v12, 0x12

    const/16 v13, 0x8

    if-eqz v5, :cond_0

    .line 439
    new-instance v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v14, 0x0

    .line 440
    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 442
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setLines(I)V

    .line 443
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 444
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v14, 0x14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v5, v14, v15, v8, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 445
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 446
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 447
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setVisibility(I)V

    .line 448
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v9, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 451
    :cond_0
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    .line 452
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/16 v11, 0xd

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    const/16 v15, 0x28

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v5, v8, v14, v12, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 453
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 454
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 455
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v19, 0x4

    .line 458
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 459
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    .line 460
    sget v8, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {v1, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v10, "AccDescrMoreOptions"

    invoke-static {v10, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 463
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    const/16 v8, 0x30

    const/16 v10, 0x15

    const/16 v11, 0x28

    invoke-static {v11, v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v9, v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_1

    .line 466
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v6, 0x18

    .line 467
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 468
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v20, 0x28

    const/16 v21, 0x28

    const/16 v22, 0x13

    const/16 v23, 0xc

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v25, 0x4

    move/from16 v23, v25

    .line 471
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 474
    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 475
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 477
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    const/16 v10, 0x11

    .line 478
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 479
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v12, ".."

    .line 480
    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    invoke-static {v1, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v15, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14, v15, v6, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 481
    new-instance v10, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/4 v14, 0x6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-direct {v10, v15}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v15, 0x2

    invoke-virtual {v11, v10, v7, v15, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 482
    sget v10, Lorg/telegram/messenger/R$string;->LinkActionCopy:I

    const-string v15, "LinkActionCopy"

    invoke-static {v15, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 483
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-static {v15, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 485
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v8, v10, v6, v11, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v10, 0x41600000    # 14.0f

    .line 486
    invoke-virtual {v8, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v11, "fonts/rmedium.ttf"

    .line 487
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 488
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v20, 0x0

    const/16 v21, 0x2a

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x4

    const/16 v27, 0x0

    const/16 v24, 0x4

    .line 489
    invoke-static/range {v20 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v8, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    const/16 v14, 0x11

    .line 492
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 493
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 494
    invoke-virtual {v14, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    new-instance v13, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_share_filled:I

    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v13, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    invoke-virtual {v10, v13, v6, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 495
    new-instance v10, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/4 v13, 0x6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-direct {v10, v13}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v13, 0x2

    invoke-virtual {v14, v10, v7, v13, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 496
    sget v10, Lorg/telegram/messenger/R$string;->LinkActionShare:I

    const-string v13, "LinkActionShare"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 497
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v7, 0x8

    .line 499
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v15, v10, v6, v13, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x1

    .line 500
    invoke-virtual {v15, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 501
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 502
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v23, 0x4

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v25, 0x4

    .line 503
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v15, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    const/16 v7, 0x11

    .line 507
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 508
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 509
    invoke-virtual {v7, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    new-instance v12, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_delete_filled:I

    invoke-static {v1, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v13, v14, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 510
    new-instance v10, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    move-object/from16 p5, v15

    const/16 v12, 0x8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-direct {v10, v15}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v12, 0x2

    invoke-virtual {v7, v10, v14, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 511
    sget v10, Lorg/telegram/messenger/R$string;->DeleteLink:I

    const-string v12, "DeleteLink"

    invoke-static {v12, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v10, "."

    .line 512
    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    new-instance v12, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/4 v13, 0x5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-direct {v12, v13}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v15, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 513
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0x8

    .line 514
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v6, v10, v14, v12, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v10, 0x1

    .line 515
    invoke-virtual {v6, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 516
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 517
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v14, 0x0

    const/16 v15, 0x2a

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    move-object/from16 v7, p5

    move/from16 v17, v19

    .line 518
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v10, 0x8

    .line 519
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 521
    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    .line 524
    iget-object v10, v5, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v11, 0x12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    const/4 v12, -0x1

    const/16 v13, 0x2c

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v17, 0x0

    .line 525
    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    new-instance v10, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda11;

    invoke-direct {v10, v0, v3, v2}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v4, :cond_2

    .line 545
    new-instance v4, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    :cond_2
    new-instance v4, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    new-instance v4, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda9;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p10, :cond_3

    .line 579
    iget-object v4, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0, v1, v3, v2}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$4;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/LinkActionView$4;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LinkActionView;->updateColors()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/LinkActionView;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/Components/QRCodeBottomSheet;)Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/LinkActionView;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/Components/LinkActionView;->usersCount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/LinkActionView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/LinkActionView;)[F
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/LinkActionView;->point:[F

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/LinkActionView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->getPointOnScreen(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V

    return-void
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p1
.end method

.method private getPointOnScreen(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    if-eq p1, p2, :cond_3

    .line 734
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    .line 735
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 736
    instance-of v2, p1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_1

    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 739
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 743
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    .line 747
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    .line 748
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    .line 749
    aput v1, p3, p1

    const/4 p1, 0x1

    .line 750
    aput v0, p3, p1

    return-void
.end method

.method private static synthetic lambda$addMaxButton$1(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    .line 313
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private synthetic lambda$handleClearEditTextButton$2(Landroid/view/View;)V
    .locals 1

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$loadUsers$15(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    const/4 v0, 0x0

    .line 960
    iput-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->loadingImporters:Z

    .line 961
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->loadedInviteLink:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 963
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;

    .line 964
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    .line 965
    new-instance p2, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    .line 967
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 968
    :goto_0
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->users:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 969
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 971
    :cond_1
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p1, p3}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadUsers$16(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 959
    new-instance v0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 0

    .line 611
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    .line 612
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 614
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/LinkActionView;->revokeLink()V

    return-void
.end method

.method private synthetic lambda$new$11(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 7

    .line 587
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->permanent:Z

    const/16 v1, 0x30

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->canEdit:Z

    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {v0, p1, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 589
    sget v5, Lorg/telegram/messenger/R$string;->Edit:I

    const-string v6, "Edit"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 590
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 591
    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {v0, p1, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 600
    sget v5, Lorg/telegram/messenger/R$string;->GetQRCode:I

    const-string v6, "GetQRCode"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 601
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 602
    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption:Z

    if-nez v0, :cond_1

    .line 607
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {v0, p1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 608
    sget p1, Lorg/telegram/messenger/R$string;->RevokeLink:I

    const-string v3, "RevokeLink"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 609
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 610
    new-instance p1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$12(Landroid/view/KeyEvent;)V
    .locals 2

    .line 706
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 707
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$13(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 7

    .line 580
    iget-object p4, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p4, :cond_0

    return-void

    .line 583
    :cond_0
    new-instance p4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {p4, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    .line 585
    new-instance v0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p4}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    .line 621
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 622
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    move v0, v3

    .line 624
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 625
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 626
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 627
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 628
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    const/16 v4, 0x30

    .line 630
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p4, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 636
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object p2

    goto :goto_2

    .line 638
    :cond_4
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p2

    :goto_2
    if-eqz p2, :cond_6

    .line 645
    iget-object p3, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->point:[F

    invoke-direct {p0, p3, p2, v0}, Lorg/telegram/ui/Components/LinkActionView;->getPointOnScreen(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V

    .line 646
    iget-object p3, p0, Lorg/telegram/ui/Components/LinkActionView;->point:[F

    const/4 v0, 0x1

    aget p3, p3, v0

    .line 649
    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView$1;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 667
    new-instance p1, Lorg/telegram/ui/Components/LinkActionView$2;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Components/LinkActionView$2;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    .line 674
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 675
    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 676
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 677
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 678
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p4, v4, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 681
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v5, -0x2

    invoke-direct {v4, p4, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 682
    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$3;

    invoke-direct {v5, p0, v1, p2, p1}, Lorg/telegram/ui/Components/LinkActionView$3;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 698
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 699
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 700
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 701
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v0, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 702
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 703
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 705
    new-instance p1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {p4, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 711
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 712
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    .line 713
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 715
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr v0, p4

    const/16 p4, 0x10

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    sub-int/2addr v0, p4

    int-to-float p4, v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    add-float/2addr p4, v0

    add-float/2addr p4, v2

    float-to-int p4, p4

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p1, p2, v3, p4, p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    .line 528
    :try_start_0
    iget-object p3, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    if-nez p3, :cond_0

    return-void

    .line 531
    :cond_0
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ClipboardManager;

    const-string v0, "label"

    .line 532
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 533
    invoke-virtual {p3, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    if-eqz p1, :cond_1

    .line 534
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 535
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 537
    :cond_1
    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 540
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 546
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->showUsersForPermanentLink()V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    .line 552
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    .line 555
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 556
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 557
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "InviteToGroupByLink"

    .line 558
    sget v1, Lorg/telegram/messenger/R$string;->InviteToGroupByLink:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 560
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 569
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    if-eqz p1, :cond_0

    .line 570
    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->removeLink()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$7(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    .line 565
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 566
    sget v0, Lorg/telegram/messenger/R$string;->DeleteLink:I

    const-string v1, "DeleteLink"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 567
    sget v0, Lorg/telegram/messenger/R$string;->DeleteLinkHelp:I

    const-string v1, "DeleteLinkHelp"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 568
    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v1, "Delete"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 573
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 574
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 0

    .line 592
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    .line 593
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 595
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->editLink()V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 0

    .line 603
    invoke-direct {p0}, Lorg/telegram/ui/Components/LinkActionView;->showQrCode()V

    return-void
.end method

.method private synthetic lambda$revokeLink$14(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 890
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    if-eqz p1, :cond_0

    .line 891
    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->revokeLink()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setActionButtonListener$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    .line 245
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private revokeLink()V
    .locals 3

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 886
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 887
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLink:I

    const-string v2, "RevokeLink"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 888
    sget v1, Lorg/telegram/messenger/R$string;->RevokeAlert:I

    const-string v2, "RevokeAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 889
    sget v1, Lorg/telegram/messenger/R$string;->RevokeButton:I

    const-string v2, "RevokeButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 894
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 895
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    .line 896
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 898
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 900
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private showQrCode()V
    .locals 8

    .line 759
    new-instance v7, Lorg/telegram/ui/Components/LinkActionView$5;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v0, Lorg/telegram/messenger/R$string;->InviteByQRCode:I

    const-string v1, "InviteByQRCode"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->qrText:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->isChannel:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->QRCodeLinkHelpChannel:I

    const-string v1, "QRCodeLinkHelpChannel"

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->QRCodeLinkHelpGroup:I

    const-string v1, "QRCodeLinkHelpGroup"

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/LinkActionView$5;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v7, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    .line 766
    sget v0, Lorg/telegram/messenger/R$raw;->qr_code_logo:I

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setCenterAnimation(I)V

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 768
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_2

    .line 769
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_2
    return-void
.end method

.method private updateInputPadding(Ljava/lang/Boolean;)V
    .locals 5

    .line 384
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 385
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_1

    .line 387
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_1

    .line 392
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addMaxButton(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 8

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    .line 308
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    .line 309
    sget v1, Lorg/telegram/messenger/R$string;->common_max:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    const/16 v1, 0x3c

    const/16 v2, 0x1c

    const v3, 0x800015

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    const/16 v7, 0xc

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 320
    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 321
    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    const/16 v2, 0x3c

    .line 322
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 323
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    .line 319
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LinkActionView;->updateColors()V

    return-void
.end method

.method public dismissPopupWindow()V
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getActionsLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method public getFieldContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getMaxButtonView()Landroid/widget/TextView;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOptionsItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleClearEditTextButton()V
    .locals 9

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->clearTextImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->clearTextImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->clearTextImageView:Lorg/telegram/ui/Components/BackupImageView;

    goto :goto_0

    .line 345
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->clearTextImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x18

    .line 346
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 347
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_delete_icon:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 349
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    .line 351
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 349
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 356
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->clearTextImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->clearTextImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->clearTextImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x16

    const/16 v3, 0x16

    const v4, 0x800015

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 366
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 367
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    .line 368
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 369
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 365
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public hideAllActionButtons(Z)V
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 290
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public hideAvatarsContainer()V
    .locals 2

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public hideOptions()V
    .locals 3

    .line 843
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 845
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public hideRevokeOption(Z)V
    .locals 2

    .line 835
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption:Z

    if-eq v0, p1, :cond_0

    .line 836
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption:Z

    .line 837
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 838
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public loadUsers(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;J)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 942
    invoke-virtual {p0, v0, p1, v0}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;Z)V

    return-void

    .line 945
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->loadedInviteLink:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 946
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2, v0}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;Z)V

    .line 947
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->loadingImporters:Z

    if-nez v0, :cond_2

    .line 948
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;-><init>()V

    .line 949
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 950
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    .line 951
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->link:Ljava/lang/String;

    .line 953
    :cond_1
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long p2, p2

    invoke-virtual {v1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 954
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_user:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 955
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    const/4 p3, 0x3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->limit:I

    const/4 p2, 0x1

    .line 957
    iput-boolean p2, p0, Lorg/telegram/ui/Components/LinkActionView;->loadingImporters:Z

    .line 958
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda15;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    return-void
.end method

.method public resetField()V
    .locals 2

    const-string v0, ""

    .line 217
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_1

    return-void

    .line 224
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/LinkActionView;->isWithAvatar:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setActionButtonListener(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda12;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMixedClickListener(Landroid/view/View;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public setActionButtonText(Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAvatar(I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    .line 193
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAvatar(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 2

    .line 155
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 156
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 158
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAvatar(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    .line 162
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 163
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 165
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAvatarForEditableMode(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    .line 169
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 170
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 177
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCanEdit(Z)V
    .locals 0

    .line 997
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkActionView;->canEdit:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/LinkActionView$Delegate;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    return-void
.end method

.method public setEditHint(Ljava/lang/String;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabledActionButton(ZLjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p2, :cond_1

    .line 105
    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 106
    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 108
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 109
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method public setErrorState(Z)V
    .locals 3

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_bg_error:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_bg_error:I

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public setFieldClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFieldEnabled(Z)V
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 2

    .line 805
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 807
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    const-string v1, "Loading"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "https://"

    .line 808
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 811
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setMode(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 126
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_3

    .line 133
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 135
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_4

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setNetworkImage(Ljava/lang/String;)V
    .locals 11

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 201
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 203
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 204
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    const/16 v2, 0x14

    .line 205
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 207
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 208
    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v6, 0x13

    const/16 v7, 0x24

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xe

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTop(I)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRight(I)V

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, p1}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public setOptionsItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    return-void
.end method

.method public setOptionsViewClickable(Z)V
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public setOptionsViewIcon(I)V
    .locals 2

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPermanent(Z)V
    .locals 0

    .line 993
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkActionView;->permanent:Z

    return-void
.end method

.method public setQrText(Ljava/lang/String;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->qrText:Ljava/lang/String;

    return-void
.end method

.method public setRevoke(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 818
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 819
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 820
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 823
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 825
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 826
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUsers(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 908
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public setUsers(ILjava/util/ArrayList;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .line 912
    iput p1, p0, Lorg/telegram/ui/Components/LinkActionView;->usersCount:I

    const/16 v0, 0x12

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 914
    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 915
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0, v3, v4, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 917
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 918
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {p0, v3, v0, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->countTextView:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "PeopleJoined"

    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :goto_0
    if-eqz p2, :cond_2

    move v0, v2

    .line 923
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 924
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    .line 927
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    :goto_2
    if-ge v2, p1, :cond_3

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 933
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object p1, p1, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    .line 935
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object p1, p1, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    return-void
.end method

.method public setupContainerCustomSize(II)V
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 298
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 299
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public showOptions(Z)V
    .locals 1

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateColors()V
    .locals 8

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 776
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->isEditableAsInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 777
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 778
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 780
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    .line 781
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 785
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 787
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v3, v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    const/16 v6, 0x78

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/16 v5, 0x4c

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->countTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    if-eqz v0, :cond_2

    .line 799
    invoke-virtual {v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->updateColors()V

    :cond_2
    return-void
.end method
