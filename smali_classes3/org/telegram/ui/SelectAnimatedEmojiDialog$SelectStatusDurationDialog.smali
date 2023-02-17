.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;
.super Landroid/app/Dialog;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectStatusDurationDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;
    }
.end annotation


# instance fields
.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private changeToScrimColor:Z

.field private clipBottom:I

.field private contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

.field private current:Landroid/graphics/Rect;

.field private dateBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private dismissed:Z

.field private done:Z

.field private emojiPreviewView:Landroid/view/View;

.field private from:Landroid/graphics/Rect;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field private lastInsets:Landroid/view/WindowInsets;

.field private linearLayoutView:Landroid/widget/LinearLayout;

.field private menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private parentDialogDismiss:Ljava/lang/Runnable;

.field private parentDialogView:Landroid/view/View;

.field private parentDialogX:I

.field private parentDialogY:I

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showAnimator:Landroid/animation/ValueAnimator;

.field private showMenuAnimator:Landroid/animation/ValueAnimator;

.field private showMenuT:F

.field private showT:F

.field private showing:Z

.field private showingMenu:Z

.field private tempLocation:[I

.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field private to:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$6DLLqEcZVHLMW-v60sLzV2oNGuI(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$6(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F16FXcccDYFHAE_7qeLzgSeWm54(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;[ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$5([ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RBDwuACKq2xOwsYbwqJPRqU6nYA(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RgQrMKPXkvQP4xyPNiyZCiSRSIA(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U0uBZBBJhq6ytrIlw5p1dVNShEs(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$done$9(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y_rAZj07dkEk6Fb73PyaMBv6G30(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$7(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YyQFaNLZ52AvugfPPd44Noe6Bg8(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$done$8(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b4oun976qkEqCvbFOp9jamldFCc(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$animateMenuShow$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$evqgNmG2cgbF9M7P3YV8L3o9EYw(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hMbKsxXhj0n-M85n9II1OkyRyiA(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jN84w7raECIoGeLH3_gDBPEtlLs(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;ZZLjava/lang/Runnable;[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$animateShow$10(ZZLjava/lang/Runnable;[ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uXJmpeMm4O4JPRxCFP9l7ikE8KM(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;[ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lambda$new$4([ZI)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v12, p6

    .line 4631
    iput-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 4632
    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 4487
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->to:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->current:Landroid/graphics/Rect;

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 4509
    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    const/4 v13, 0x0

    .line 4776
    iput-boolean v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done:Z

    .line 5014
    iput-boolean v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dismissed:Z

    .line 4633
    iput-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4634
    iput-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v5, p3

    .line 4635
    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogDismiss:Ljava/lang/Runnable;

    .line 4636
    iput-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogView:Landroid/view/View;

    .line 4638
    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v6, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4643
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->linearLayoutView:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    .line 4644
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4646
    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->emojiPreviewView:Landroid/view/View;

    .line 4660
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->linearLayoutView:Landroid/widget/LinearLayout;

    const/16 v16, 0xa0

    const/16 v17, 0xa0

    const/16 v18, 0x11

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x10

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4662
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v6, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-direct {v5, v2, v6, v12}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 4663
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->linearLayoutView:Landroid/widget/LinearLayout;

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4666
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v5, Lorg/telegram/messenger/R$string;->SetEmojiStatusUntil1Hour:I

    const-string v6, "SetEmojiStatusUntil1Hour"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    .line 4667
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4668
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v5, Lorg/telegram/messenger/R$string;->SetEmojiStatusUntil2Hours:I

    const-string v6, "SetEmojiStatusUntil2Hours"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    .line 4669
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4670
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v5, Lorg/telegram/messenger/R$string;->SetEmojiStatusUntil8Hours:I

    const-string v6, "SetEmojiStatusUntil8Hours"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    .line 4671
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4672
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v5, Lorg/telegram/messenger/R$string;->SetEmojiStatusUntil2Days:I

    const-string v6, "SetEmojiStatusUntil2Days"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    .line 4673
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4674
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v5, Lorg/telegram/messenger/R$string;->SetEmojiStatusUntilOther:I

    const-string v6, "SetEmojiStatusUntilOther"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda8;

    invoke-direct {v6, v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;)V

    .line 4675
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4694
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->linearLayoutView:Landroid/widget/LinearLayout;

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-static {v6, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4696
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4698
    sget v5, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    const/4 v5, 0x0

    .line 4699
    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4701
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 4702
    iput v14, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v6, 0x33

    .line 4703
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v6, 0x0

    .line 4704
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4705
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    .line 4706
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4707
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_0

    const v8, -0x7ffeff00

    or-int/2addr v6, v8

    .line 4708
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4711
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    new-instance v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 4717
    :cond_0
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4718
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    invoke-virtual {v6, v15}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 4719
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    const/16 v8, 0x504

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 4720
    iput v14, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v6, 0x1c

    if-lt v7, v6, :cond_1

    .line 4722
    iput v15, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4724
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 4728
    iput-boolean v15, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 4730
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->prepareBlurBitmap()V

    .line 4732
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 4733
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 4734
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 4735
    iget-object v2, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v2, :cond_4

    .line 4736
    iget-object v5, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v6, v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v6, :cond_4

    .line 4737
    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_9

    const-string v5, "160_160"

    .line 4743
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const v7, 0x3e4ccccd    # 0.2f

    const-string v8, "windowBackgroundWhiteGrayIcon"

    invoke-static {v6, v8, v7}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v6

    .line 4744
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v8, 0x5a

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 4745
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v9, "video/webm"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x200

    if-eqz v8, :cond_6

    .line 4746
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    .line 4747
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "g"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_5

    .line 4749
    invoke-virtual {v6, v9, v9}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_5
    move-object/from16 v17, v8

    move-object/from16 v18, v10

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_7

    .line 4752
    invoke-static {v2, v13}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4753
    invoke-virtual {v6, v9, v9}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 4755
    :cond_7
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    move-object/from16 v18, v5

    move-object/from16 v17, v8

    .line 4758
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v7, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-wide v9, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v26, 0x0

    const/16 v28, 0x1

    move-object/from16 v16, v8

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-wide/from16 v24, v9

    move-object/from16 v27, v2

    invoke-virtual/range {v16 .. v28}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 4759
    iget-object v2, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_9

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4760
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v1

    goto :goto_1

    :cond_8
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_1
    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4764
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 4765
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v2, v2, v13

    invoke-virtual/range {p5 .. p5}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 4766
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v2, v2, v15

    invoke-virtual/range {p5 .. p5}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 4767
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v2, v2, v13

    invoke-virtual/range {p5 .. p5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual/range {p5 .. p5}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 4768
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v2, v2, v15

    invoke-virtual/range {p5 .. p5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual/range {p5 .. p5}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 4769
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->to:Landroid/graphics/Rect;

    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->current:Landroid/graphics/Rect;

    invoke-static {v1, v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 4771
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4772
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v2, v1, v13

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogX:I

    .line 4773
    aget v1, v1, v15

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogY:I

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->clipBottom:I

    return-void
.end method

.method static synthetic access$10000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;
    .locals 0

    .line 4484
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->to:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;
    .locals 0

    .line 4484
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;
    .locals 0

    .line 4484
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    return-object p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    .line 4484
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object p0
.end method

.method static synthetic access$10402(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 4484
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$10500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F
    .locals 0

    .line 4484
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    return p0
.end method

.method static synthetic access$10502(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;F)F
    .locals 0

    .line 4484
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    return p1
.end method

.method static synthetic access$10602(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 4484
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$8300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;
    .locals 0

    .line 4484
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->blurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Paint;
    .locals 0

    .line 4484
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->blurBitmapPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F
    .locals 0

    .line 4484
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    return p0
.end method

.method static synthetic access$8502(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;F)F
    .locals 0

    .line 4484
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    return p1
.end method

.method static synthetic access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;
    .locals 0

    .line 4484
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Z
    .locals 0

    .line 4484
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->changeToScrimColor:Z

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 4484
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;
    .locals 0

    .line 4484
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->current:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I
    .locals 0

    .line 4484
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->clipBottom:I

    return p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I
    .locals 0

    .line 4484
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogX:I

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I
    .locals 0

    .line 4484
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogY:I

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 4484
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$9602(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 4484
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->lastInsets:Landroid/view/WindowInsets;

    return-object p1
.end method

.method static synthetic access$9700(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/app/Activity;
    .locals 0

    .line 4484
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V
    .locals 0

    .line 4484
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->prepareBlurBitmap()V

    return-void
.end method

.method static synthetic access$9900(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I
    .locals 0

    .line 4484
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    return-object p0
.end method

.method private animateMenuShow(ZLjava/lang/Runnable;)V
    .locals 3

    .line 4945
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 4946
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showingMenu:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 4949
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4951
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showingMenu:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 4953
    iget v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    aput v2, v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    .line 4954
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4966
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_3

    .line 4987
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4988
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 4990
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4991
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4993
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateShow(ZLjava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 10

    .line 4868
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 4870
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 4874
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 4875
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showing:Z

    if-ne v1, p1, :cond_2

    return-void

    .line 4878
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4880
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showing:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 4882
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iput-boolean v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    :cond_4
    new-array v1, v0, [Z

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 4885
    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    aput v4, v2, v3

    if-eqz p1, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    .line 4886
    new-instance v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda1;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p4

    move-object v6, p3

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;ZZLjava/lang/Runnable;[Z)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4908
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$2;

    move-object v2, v9

    move-object v5, p3

    move-object v6, v1

    move v7, p4

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;ZLjava/lang/Runnable;[ZZLjava/lang/Runnable;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4936
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x1a4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4937
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4938
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private done(Ljava/lang/Integer;)V
    .locals 6

    .line 4778
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4781
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 4783
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->getOutBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->changeToScrimColor:Z

    if-eqz v2, :cond_2

    .line 4784
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogView:Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4785
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v5, v4, v1

    aget v4, v4, v0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 4787
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 4788
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v4, v4, v1

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 4789
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v4, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 4790
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v4, v4, v1

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 4791
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    aget v4, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :goto_1
    if-eqz p1, :cond_3

    .line 4793
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogDismiss:Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    .line 4794
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 4796
    :cond_3
    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Ljava/lang/Integer;)V

    new-instance v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Ljava/lang/Integer;)V

    xor-int/lit8 p1, v2, 0x1

    invoke-direct {p0, v1, v3, v4, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateShow(ZLjava/lang/Runnable;Ljava/lang/Runnable;Z)V

    const/4 p1, 0x0

    .line 4811
    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateMenuShow(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private getParentActivity()Landroid/app/Activity;
    .locals 2

    .line 4827
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4828
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 4829
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4830
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 4831
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$animateMenuShow$11(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 4955
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    .line 4957
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackScaleY(F)V

    .line 4958
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4959
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 4961
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showMenuT:F

    int-to-float v2, v0

    int-to-float v3, p1

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v1

    .line 4962
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    const/16 v4, -0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 4963
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$animateShow$10(ZZLjava/lang/Runnable;[ZLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 4887
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    iput p5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    .line 4888
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->from:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->to:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->current:Landroid/graphics/Rect;

    invoke-static {v0, v1, p5, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 4889
    iget-object p5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->contentView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->invalidate()V

    if-nez p1, :cond_0

    .line 4892
    iget-object p5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    invoke-virtual {p5, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4895
    :cond_0
    iget p5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    const v0, 0x3ccccccd    # 0.025f

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float p5, p5, v0

    if-gez p5, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 4897
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->imageViewEmoji:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iput-boolean v2, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 4898
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p2, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    .line 4900
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p5, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p2, p5, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4903
    :cond_2
    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->showT:F

    const/high16 p5, 0x3f000000    # 0.5f

    cmpg-float p2, p2, p5

    if-gez p2, :cond_3

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    aget-boolean p1, p4, v2

    if-nez p1, :cond_3

    .line 4904
    aput-boolean v1, p4, v2

    .line 4905
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$done$8(Ljava/lang/Integer;)V
    .locals 0

    .line 4797
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->onEnd(Ljava/lang/Integer;)V

    .line 4799
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$done$9(Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 4806
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4808
    :catch_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->onEndPartly(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 4

    .line 4667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 4

    .line 4669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1c20

    add-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 4

    .line 4671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x7080

    add-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 4

    .line 4673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x2a300

    add-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$new$4([ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4681
    aput-boolean v1, p1, v0

    .line 4682
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$new$5([ZLandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 4685
    aget-boolean p1, p1, p2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4686
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateMenuShow(ZLjava/lang/Runnable;)V

    .line 4688
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dateBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 4676
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dateBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Z

    .line 4680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;[Z)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createStatusUntilDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$StatusUntilDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    .line 4684
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;[Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 4690
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dateBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 4691
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateMenuShow(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 4713
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 4714
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private prepareBlurBitmap()V
    .locals 7

    .line 4837
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4841
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4842
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 4843
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 4844
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 4845
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v6, 0x3daaaaab

    .line 4846
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    const-string v6, "windowBackgroundWhite"

    .line 4847
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4848
    invoke-virtual {v1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4849
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4850
    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4852
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 4853
    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4854
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 4855
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->tempLocation:[I

    const/4 v6, 0x0

    aget v6, v0, v6

    int-to-float v6, v6

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4856
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->parentDialogView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4857
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    const/16 v0, 0xa

    .line 4859
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit16 v2, v2, 0xb4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v4, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 4860
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->blurBitmapPaint:Landroid/graphics/Paint;

    .line 4861
    iput-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->blurBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 5017
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5020
    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->done(Ljava/lang/Integer;)V

    const/4 v0, 0x1

    .line 5021
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dismissed:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 4998
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4999
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 5000
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dismiss()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method protected getOutBounds(Landroid/graphics/Rect;)Z
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected onEnd(Ljava/lang/Integer;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected onEndPartly(Ljava/lang/Integer;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public show()V
    .locals 6

    .line 5008
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 5009
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5010
    invoke-direct {p0, v2, v0, v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateShow(ZLjava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 5011
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateMenuShow(ZLjava/lang/Runnable;)V

    return-void
.end method
