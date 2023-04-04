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

.field private final copyView:Landroid/widget/TextView;

.field private delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final frameLayout:Landroid/widget/FrameLayout;

.field private hideRevokeOption:Z

.field private isChannel:Z

.field private isEditableAsInput:Z

.field private isWithAvatar:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field link:Ljava/lang/String;

.field linkView:Landroid/widget/TextView;

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

.field point:[F

.field private qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

.field private final removeView:Landroid/widget/TextView;

.field private final shareView:Landroid/widget/TextView;

.field private usersCount:I


# direct methods
.method public static synthetic $r8$lambda$1SgQxmHcUYYBg-8FjyJ93AhcAE8(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2M2D1PIbReecasIXmLkEpKYhFSw(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->lambda$loadUsers$14(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8WaG-bcCk8SlDTKanDUzYKC5OFQ(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$5(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C_dHYw48hoKB_19luSqfaM8N9oU(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$1(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D72T89fzE8jsci3mh7S9-5xtOlk(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$addMaxButton$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DJAZxagxlPcfvmY0M72dGfc1E4E(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DOzAvenZ_mOsfG7hFPeVlvLTPjY(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$3(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GIToXdc7IZvryzAmmtgOo3ZOmGw(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UgsTqpzUdRXRh7OQ26M1PG1BO74(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$revokeLink$12(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jmSS1aehOb6R_vDxYIJO1IHrwY4(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->lambda$loadUsers$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzlktN9wa2JR2EZaNHcL96yl4l0(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$11(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-adxRkSgX5k_pd8ys4IP9jk-rE(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$10(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p7nER0Mk2lOwmNfaxXZmHqrNBMs(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxMpmhY0u33jdHimo-o8YGtKoX4(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$9(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wtS5T9E6YyYDy8bTN-gOOLtHDec(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$4(Landroid/content/DialogInterface;I)V

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

    .line 78
    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZZZZ)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    .line 313
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    .line 307
    iput-boolean v7, v0, Lorg/telegram/ui/Components/LinkActionView;->canEdit:Z

    const/4 v8, 0x2

    new-array v9, v8, [F

    .line 310
    iput-object v9, v0, Lorg/telegram/ui/Components/LinkActionView;->point:[F

    .line 315
    iput-boolean v5, v0, Lorg/telegram/ui/Components/LinkActionView;->isEditableAsInput:Z

    .line 316
    iput-boolean v6, v0, Lorg/telegram/ui/Components/LinkActionView;->isWithAvatar:Z

    .line 319
    iput-object v2, v0, Lorg/telegram/ui/Components/LinkActionView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 320
    iput-boolean v4, v0, Lorg/telegram/ui/Components/LinkActionView;->permanent:Z

    move/from16 v9, p7

    .line 321
    iput-boolean v9, v0, Lorg/telegram/ui/Components/LinkActionView;->isChannel:Z

    .line 323
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 324
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    const/high16 v10, 0x41800000    # 16.0f

    const/16 v11, 0x14

    const/16 v12, 0x28

    const/16 v13, 0x12

    const/16 v14, 0x8

    if-eqz v5, :cond_0

    .line 327
    new-instance v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v15, 0x0

    .line 328
    invoke-virtual {v5, v15}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 330
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setLines(I)V

    .line 331
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 332
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v5, v15, v8, v11, v12}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 333
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7, v10}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 334
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 335
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setVisibility(I)V

    .line 336
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v9, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 339
    :cond_0
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    const/16 v8, 0x14

    .line 340
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/16 v12, 0x28

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v5, v8, v11, v15, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 341
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 343
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 345
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 346
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    .line 347
    sget v8, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {v1, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v10, "AccDescrMoreOptions"

    invoke-static {v10, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 350
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    const/16 v8, 0x30

    const/16 v10, 0x15

    const/16 v11, 0x28

    invoke-static {v11, v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v9, v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_1

    .line 353
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v6, 0x18

    .line 354
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 355
    iget-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v15, 0x28

    const/16 v16, 0x28

    const/16 v17, 0x13

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    .line 358
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 361
    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 362
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 364
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    .line 365
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 366
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v11, ".."

    .line 367
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v15, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    invoke-static {v1, v15}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v13, v6, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 368
    new-instance v12, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-direct {v12, v13}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v13, 0x2

    invoke-virtual {v10, v12, v7, v13, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 369
    sget v12, Lorg/telegram/messenger/R$string;->LinkActionCopy:I

    const-string v13, "LinkActionCopy"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v15, "."

    .line 370
    invoke-virtual {v10, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v14

    new-instance v6, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v17, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v18, v9

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/4 v4, 0x0

    invoke-virtual {v14, v6, v7, v9, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 371
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v4, 0xa

    .line 373
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x1

    .line 374
    invoke-virtual {v8, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v9, "fonts/rmedium.ttf"

    .line 375
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 376
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v20, 0x28

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x4

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    .line 377
    invoke-static/range {v19 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    const/4 v10, 0x1

    .line 380
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 381
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 382
    invoke-virtual {v12, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    new-instance v14, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_share_filled:I

    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v14, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    invoke-virtual {v13, v14, v6, v10, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 383
    new-instance v13, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/16 v14, 0x8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-direct {v13, v4}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v4, 0x2

    invoke-virtual {v12, v13, v10, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 384
    sget v4, Lorg/telegram/messenger/R$string;->LinkActionShare:I

    const-string v6, "LinkActionShare"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 385
    invoke-virtual {v12, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    new-instance v14, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-direct {v14, v10}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    move-object/from16 v19, v8

    const/4 v8, 0x1

    sub-int/2addr v10, v8

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/4 v2, 0x0

    invoke-virtual {v13, v14, v10, v8, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 386
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v2, 0xa

    .line 388
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v7, v4, v6, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    .line 390
    invoke-virtual {v7, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 391
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 392
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v20, 0x0

    const/16 v21, 0x28

    const/high16 v22, 0x3f800000    # 1.0f

    .line 393
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    const/4 v4, 0x1

    .line 397
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 398
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 399
    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    new-instance v10, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_delete_filled:I

    invoke-static {v1, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 400
    new-instance v8, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/16 v10, 0x8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-direct {v8, v12}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v10, 0x2

    invoke-virtual {v6, v8, v4, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 401
    sget v8, Lorg/telegram/messenger/R$string;->DeleteLink:I

    const-string v10, "DeleteLink"

    invoke-static {v10, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 402
    invoke-virtual {v6, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    new-instance v10, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-direct {v10, v11}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 403
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0xa

    .line 404
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v2, v8, v10, v11, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 405
    invoke-virtual {v2, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 406
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 407
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 408
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x8

    .line 409
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x14

    const/4 v13, 0x0

    .line 411
    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    new-instance v4, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    const/16 v9, 0x2c

    const/16 v11, 0xc

    .line 414
    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda10;

    move-object/from16 v6, p2

    invoke-direct {v5, v0, v3, v6}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v8, v19

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p6, :cond_2

    .line 434
    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    :cond_2
    new-instance v4, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda9;

    invoke-direct {v4, v0, v6}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    new-instance v4, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0, v6}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p10, :cond_3

    .line 468
    iget-object v2, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v1, v3, v6}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$4;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/LinkActionView$4;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    move-object/from16 v2, v18

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LinkActionView;->updateColors()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/LinkActionView;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/Components/QRCodeBottomSheet;)Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/LinkActionView;)I
    .locals 0

    .line 59
    iget p0, p0, Lorg/telegram/ui/Components/LinkActionView;->usersCount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/LinkActionView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/LinkActionView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->getPointOnScreen(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V

    return-void
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p1
.end method

.method private getPointOnScreen(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    if-eq p1, p2, :cond_3

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    .line 624
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 625
    instance-of v2, p1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 628
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_0

    .line 631
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 632
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    .line 636
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    .line 637
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    .line 638
    aput v1, p3, p1

    const/4 p1, 0x1

    .line 639
    aput v0, p3, p1

    return-void
.end method

.method private static synthetic lambda$addMaxButton$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    .line 253
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private synthetic lambda$loadUsers$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 2

    const/4 v0, 0x0

    .line 819
    iput-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->loadingImporters:Z

    if-nez p1, :cond_2

    .line 821
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;

    .line 822
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 823
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    .line 825
    :cond_0
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 826
    :goto_0
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->users:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 827
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 829
    :cond_1
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadUsers$14(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 818
    new-instance v0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    .line 417
    :try_start_0
    iget-object p3, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    if-nez p3, :cond_0

    return-void

    .line 420
    :cond_0
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ClipboardManager;

    const-string v0, "label"

    .line 421
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 422
    invoke-virtual {p3, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    if-eqz p1, :cond_1

    .line 423
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 424
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 426
    :cond_1
    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 429
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/KeyEvent;)V
    .locals 2

    .line 595
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

    .line 596
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$11(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 7

    .line 469
    iget-object p4, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p4, :cond_0

    return-void

    .line 472
    :cond_0
    new-instance p4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {p4, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    .line 474
    new-instance v0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p4}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    .line 510
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 511
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    move v0, v3

    .line 513
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 514
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 515
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 516
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 517
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    const/16 v4, 0x30

    .line 519
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p4, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 525
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object p2

    goto :goto_2

    .line 527
    :cond_4
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p2

    :goto_2
    if-eqz p2, :cond_6

    .line 534
    iget-object p3, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->point:[F

    invoke-direct {p0, p3, p2, v0}, Lorg/telegram/ui/Components/LinkActionView;->getPointOnScreen(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V

    .line 535
    iget-object p3, p0, Lorg/telegram/ui/Components/LinkActionView;->point:[F

    const/4 v0, 0x1

    aget p3, p3, v0

    .line 538
    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView$1;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 556
    new-instance p1, Lorg/telegram/ui/Components/LinkActionView$2;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Components/LinkActionView$2;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    .line 563
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 564
    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 565
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 566
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 567
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p4, v4, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 570
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v5, -0x2

    invoke-direct {v4, p4, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 571
    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$3;

    invoke-direct {v5, p0, v1, p2, p1}, Lorg/telegram/ui/Components/LinkActionView$3;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 588
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v0, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 591
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 592
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 594
    new-instance p1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {p4, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 600
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 601
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    .line 602
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 604
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

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->showUsersForPermanentLink()V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    .line 441
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    .line 444
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 445
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 446
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "InviteToGroupByLink"

    .line 447
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

    .line 449
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 458
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    if-eqz p1, :cond_0

    .line 459
    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->removeLink()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    .line 454
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 455
    sget v0, Lorg/telegram/messenger/R$string;->DeleteLink:I

    const-string v1, "DeleteLink"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 456
    sget v0, Lorg/telegram/messenger/R$string;->DeleteLinkHelp:I

    const-string v1, "DeleteLinkHelp"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 457
    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v1, "Delete"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 462
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 463
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 0

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 484
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->editLink()V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 0

    .line 492
    invoke-direct {p0}, Lorg/telegram/ui/Components/LinkActionView;->showQrCode()V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 0

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    .line 501
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 503
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/LinkActionView;->revokeLink()V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 7

    .line 476
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->permanent:Z

    const/16 v1, 0x30

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->canEdit:Z

    if-eqz v0, :cond_0

    .line 477
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {v0, p1, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 478
    sget v5, Lorg/telegram/messenger/R$string;->Edit:I

    const-string v6, "Edit"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 479
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 480
    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {v0, p1, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 489
    sget v5, Lorg/telegram/messenger/R$string;->GetQRCode:I

    const-string v6, "GetQRCode"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 490
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 491
    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption:Z

    if-nez v0, :cond_1

    .line 496
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {v0, p1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 497
    sget p1, Lorg/telegram/messenger/R$string;->RevokeLink:I

    const-string v3, "RevokeLink"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const-string p1, "windowBackgroundWhiteRedText"

    .line 498
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 499
    new-instance p1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$revokeLink$12(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 767
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    if-eqz p1, :cond_0

    .line 768
    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->revokeLink()V

    :cond_0
    return-void
.end method

.method private revokeLink()V
    .locals 3

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 763
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 764
    sget v1, Lorg/telegram/messenger/R$string;->RevokeAlert:I

    const-string v2, "RevokeAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 765
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLink:I

    const-string v2, "RevokeLink"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 766
    sget v1, Lorg/telegram/messenger/R$string;->RevokeButton:I

    const-string v2, "RevokeButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 771
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 772
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private showQrCode()V
    .locals 8

    .line 643
    new-instance v7, Lorg/telegram/ui/Components/LinkActionView$5;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v0, Lorg/telegram/messenger/R$string;->InviteByQRCode:I

    const-string v1, "InviteByQRCode"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

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

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/LinkActionView$5;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v7, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    .line 650
    sget v0, Lorg/telegram/messenger/R$raw;->qr_code_logo:I

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setCenterAnimation(I)V

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method private updateInputPadding(Ljava/lang/Boolean;)V
    .locals 5

    .line 270
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
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

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_1

    .line 273
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

    .line 276
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

    .line 277
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_1

    .line 278
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

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    .line 249
    sget v1, Lorg/telegram/messenger/R$string;->common_max:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    const/16 v1, 0x3c

    const/4 v2, -0x1

    const v3, 0x800015

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    const/16 v7, 0xc

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x3c

    .line 260
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LinkActionView;->updateColors()V

    return-void
.end method

.method public dismissPopupWindow()V
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getActionsLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method public getFieldContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

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

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hideAllActionButtons(Z)V
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public hideRevokeOption(Z)V
    .locals 2

    .line 719
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption:Z

    if-eq v0, p1, :cond_0

    .line 720
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption:Z

    .line 721
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
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
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 805
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;)V

    return-void

    .line 808
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;)V

    .line 809
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->loadingImporters:Z

    if-nez v0, :cond_1

    .line 810
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;-><init>()V

    .line 811
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->link:Ljava/lang/String;

    .line 812
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long p2, p2

    invoke-virtual {v1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 813
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_user:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 814
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    const/4 p3, 0x3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->limit:I

    const/4 p2, 0x1

    .line 816
    iput-boolean p2, p0, Lorg/telegram/ui/Components/LinkActionView;->loadingImporters:Z

    .line 817
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    return-void
.end method

.method public resetField()V
    .locals 2

    const-string v0, ""

    .line 171
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_1

    return-void

    .line 178
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/LinkActionView;->isWithAvatar:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setActionButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionButtonText(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAvatar(I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAvatar(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 2

    .line 127
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 128
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAvatar(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    .line 134
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 135
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCanEdit(Z)V
    .locals 0

    .line 854
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkActionView;->canEdit:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/LinkActionView$Delegate;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    return-void
.end method

.method public setEditHint(Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 195
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

    .line 85
    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 86
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

    .line 88
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
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

.method public setFieldClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 2

    .line 689
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 691
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    const-string v1, "Loading"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "https://"

    .line 692
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 695
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

    .line 95
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 98
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->updateInputPadding(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 107
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_4

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setNetworkImage(I)V
    .locals 11

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 155
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 157
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    const-string v2, "windowBackgroundWhite"

    .line 158
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    const/16 v2, 0x14

    .line 159
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 161
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 162
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

    .line 163
    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 166
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTop(I)V

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->networkImageView:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRight(I)V

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

    .line 207
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsItems:Ljava/util/ArrayList;

    return-void
.end method

.method public setOptionsViewIcon(I)V
    .locals 2

    .line 229
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

    .line 850
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkActionView;->permanent:Z

    return-void
.end method

.method public setRevoke(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 702
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 707
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUsers(ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .line 780
    iput p1, p0, Lorg/telegram/ui/Components/LinkActionView;->usersCount:I

    const/16 v0, 0x12

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 782
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 783
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0, p1, v3, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 785
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 786
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

    .line 787
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->countTextView:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "PeopleJoined"

    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :goto_0
    if-eqz p2, :cond_3

    move p1, v2

    :goto_1
    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    .line 792
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 793
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, p1, v1, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    goto :goto_2

    .line 796
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 799
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object p1, p1, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    :cond_3
    return-void
.end method

.method public showOptions(Z)V
    .locals 1

    .line 715
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
    .locals 9

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    const-string v1, "chats_message"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 660
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->isEditableAsInput:Z

    const-string v2, "windowBackgroundWhiteBlackText"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 661
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 664
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    const-string v1, "featuredStickers_addButtonPressed"

    const-string v3, "featuredStickers_addButton"

    const-string v4, "featuredStickers_buttonText"

    const/4 v5, 0x6

    if-eqz v0, :cond_1

    .line 665
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->maxView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 669
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v4, v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const-string v3, "chat_attachAudioBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x78

    invoke-static {v4, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const-string v3, "graySection"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "listSelectorSDK21"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x4c

    invoke-static {v4, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    const-string v1, "dialogTextGray3"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->countTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlueText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-static {v2, v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    if-eqz v0, :cond_2

    .line 683
    invoke-virtual {v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->updateColors()V

    :cond_2
    return-void
.end method
