.class public Lorg/telegram/ui/Components/UndoView;
.super Landroid/widget/FrameLayout;
.source "UndoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/UndoView$LinkMovementMethodMy;
    }
.end annotation


# static fields
.field public static ACTION_RINGTONE_ADDED:I = 0x53


# instance fields
.field private additionalTranslationY:F

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private currentAccount:I

.field private currentAction:I

.field private currentActionRunnable:Ljava/lang/Runnable;

.field private currentCancelRunnable:Ljava/lang/Runnable;

.field private currentDialogIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private currentInfoObject:Ljava/lang/Object;

.field enterOffset:F

.field private enterOffsetMargin:I

.field private fromTop:Z

.field private hideAnimationType:I

.field private infoText:Ljava/lang/CharSequence;

.field private infoTextView:Landroid/widget/TextView;

.field private isShown:Z

.field private lastUpdateTime:J

.field private leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private prevSeconds:I

.field private progressPaint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private subinfoTextView:Landroid/widget/TextView;

.field private textPaint:Landroid/text/TextPaint;

.field private textWidth:I

.field timeLayout:Landroid/text/StaticLayout;

.field timeLayoutOut:Landroid/text/StaticLayout;

.field private timeLeft:J

.field private timeLeftString:Ljava/lang/String;

.field timeReplaceProgress:F

.field private undoButton:Landroid/widget/LinearLayout;

.field private undoImageView:Landroid/widget/ImageView;

.field private undoTextView:Landroid/widget/TextView;

.field private undoViewHeight:I


# direct methods
.method public static synthetic $r8$lambda$5pDYUsngdsAjUAfTf6WlgMO5mBI(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8eWxdkpzy3GrADkiuxUowHwapNE(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$6(Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DCwv0P0ONjLA2IL1-euLZvuAWO4(Lorg/telegram/ui/Components/UndoView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$EzD4ijvbPJYAGavRz0rEOOWCCSI(Lorg/telegram/ui/Components/UndoView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UGXa_l46bEAu82M3R2HvE5MrPto(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aFqdairJ69QWpMVu0ABM8OC6FQI(Lorg/telegram/ui/Components/UndoView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$owSDkLOwAvlTYGVWiT9AFnvbQQ8(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$4(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$soQmswdfMCs7BxnLy0QkPIpYK7w(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0, p1, v0, v1, v0}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 235
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, v0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    const/4 v2, -0x1

    .line 95
    iput v2, v0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/4 v2, 0x1

    .line 193
    iput v2, v0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    const/16 v3, 0x8

    .line 1524
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1544
    iput v3, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    move-object/from16 v3, p4

    .line 236
    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v3, p2

    .line 237
    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move/from16 v3, p3

    .line 238
    iput-boolean v3, v0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    .line 240
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    .line 241
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 242
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "undo_infoColor"

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "undo_cancelColor"

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 244
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/Components/UndoView$LinkMovementMethodMy;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/UndoView$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 245
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x33

    const/16 v9, 0x2d

    const/16 v10, 0xd

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41500000    # 13.0f

    .line 248
    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 249
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 251
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 252
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 253
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 254
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    new-instance v7, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v7}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 255
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x33

    const/16 v10, 0x3a

    const/16 v11, 0x1b

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 258
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 259
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string/jumbo v7, "undo_background"

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const/high16 v9, -0x1000000

    or-int/2addr v8, v9

    const-string v10, "info1.**"

    invoke-virtual {v3, v10, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 260
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v8, v9

    const-string v9, "info2.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 261
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc12.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 262
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc11.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 263
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc10.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 264
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc9.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 265
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc8.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 266
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc7.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 267
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc6.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 268
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc5.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 269
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc4.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 270
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc3.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 271
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc2.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 272
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "luc1.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 273
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "Oval.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 274
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v8, 0x36

    const/4 v9, -0x2

    const/16 v10, 0x13

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v8, 0xf

    .line 277
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 278
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v9, 0x1e

    const/16 v10, 0x1e

    const/16 v11, 0x13

    const/16 v12, 0xf

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    .line 281
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 282
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    const v10, 0x22ffffff

    and-int/2addr v9, v10

    const/4 v10, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v9, v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x15

    const/16 v16, 0xb

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    new-instance v9, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    .line 292
    sget v9, Lorg/telegram/messenger/R$drawable;->chats_undo:I

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 294
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x13

    const/4 v14, 0x4

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x4

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    .line 297
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 298
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 299
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->Undo:I

    const-string v9, "Undo"

    invoke-static {v9, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/4 v11, -0x2

    const/4 v14, 0x6

    const/16 v16, 0x8

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    new-instance v1, Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    const/16 v9, 0x21

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v1, v5, v8, v11, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    .line 305
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    .line 306
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 307
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 308
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 309
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    const/16 v2, 0xc

    .line 312
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 313
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 314
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 316
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/16 v1, 0xa

    .line 317
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 319
    sget-object v1, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x4

    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1685
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1686
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private hasSubInfo()Z
    .locals 3

    .line 351
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    const/16 v2, 0x18

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0xe

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    .line 353
    invoke-static {v0}, Lorg/fork/controller/FiltersController;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/fork/controller/FiltersController;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    sget v2, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-eq v0, v2, :cond_2

    const/16 v2, 0x55

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private isTooltipAction()Z
    .locals 3

    .line 334
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->UNDO_MOVE_TO_FOLDER:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x57

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x25

    if-eq v0, v1, :cond_2

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    .line 338
    sget v1, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 285
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->canUndo()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 288
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    return-void
.end method

.method private static synthetic lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showWithAction$2(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 499
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    return-void
.end method

.method private static synthetic lambda$showWithAction$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showWithAction$4(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 620
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    invoke-direct {v1, p1}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showWithAction$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 619
    new-instance p2, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showWithAction$6(Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x1

    .line 615
    invoke-virtual {p0, p2, p2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 616
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;-><init>()V

    .line 617
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->msg_id:I

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$showWithAction$7()V
    .locals 3

    .line 1151
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->performHapticFeedback(II)Z

    return-void
.end method

.method private updatePosition()V
    .locals 2

    .line 1675
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    iget v1, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1676
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected canUndo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public didPressUrl(Landroid/text/style/CharacterStyle;)V
    .locals 0

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1548
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1549
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1551
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    sub-float/2addr v0, v2

    const/16 v2, 0x9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 1553
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1554
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1556
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1558
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentInfoObject()Ljava/lang/Object;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getEnterOffset()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1663
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    return v0
.end method

.method public hide(ZI)V
    .locals 8

    .line 373
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 377
    iput-boolean v1, p0, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    .line 378
    iget-object v2, p0, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 380
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 382
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    .line 384
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    .line 386
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 388
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    .line 390
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_5

    const/16 v4, 0x1b

    if-ne v0, v4, :cond_8

    :cond_5
    const/4 v0, 0x0

    .line 391
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 392
    iget-object v4, p0, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 393
    iget v6, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-eqz v7, :cond_7

    if-ne v7, v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v6, v4, v5, v7, p1}, Lorg/telegram/messenger/MessagesController;->removeDialogAction(JZZ)V

    .line 394
    iget v6, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    invoke-virtual {p0, v4, v5, v6}, Lorg/telegram/ui/Components/UndoView;->onRemoveDialogAction(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_b

    .line 398
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-ne p2, v3, :cond_a

    new-array p2, v3, [Landroid/animation/Animator;

    new-array v3, v3, [F

    .line 400
    iget-boolean v4, p0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v4, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    mul-float p1, p1, v0

    aput p1, v3, v1

    const-string p1, "enterOffset"

    invoke-static {p0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-virtual {v2, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0xfa

    .line 401
    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_4

    :cond_a
    const/4 p1, 0x3

    new-array p1, p1, [Landroid/animation/Animator;

    .line 403
    sget-object p2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v0, v3, [F

    const v4, 0x3f4ccccd    # 0.8f

    aput v4, v0, v1

    .line 404
    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, p1, v1

    sget-object p2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v3, [F

    aput v4, v0, v1

    .line 405
    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, p1, v3

    const/4 p2, 0x2

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 406
    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p1, p2

    .line 403
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0xb4

    .line 407
    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 409
    :goto_4
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    new-instance p1, Lorg/telegram/ui/Components/UndoView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/UndoView$1;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 419
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_6

    .line 421
    :cond_b
    iget-boolean p2, p0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz p2, :cond_c

    goto :goto_5

    :cond_c
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_5
    iget p2, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UndoView;->setEnterOffset(F)V

    const/4 p1, 0x4

    .line 422
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_d
    :goto_6
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 1645
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1646
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1647
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public isMultilineSubInfo()Z
    .locals 2

    .line 357
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    sget v1, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1564
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 1565
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1567
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    .line 1569
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1570
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1572
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1573
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1575
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1578
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const-wide/16 v3, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/16 v5, 0x1b

    if-eq v0, v5, :cond_2

    const/16 v5, 0x1a

    if-eq v0, v5, :cond_2

    const/16 v5, 0x51

    if-ne v0, v5, :cond_c

    .line 1579
    :cond_2
    iget-wide v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    const/4 v0, 0x0

    cmp-long v7, v5, v3

    if-lez v7, :cond_3

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 1580
    :goto_1
    iget v6, p0, Lorg/telegram/ui/Components/UndoView;->prevSeconds:I

    if-eq v6, v5, :cond_5

    .line 1581
    iput v5, p0, Lorg/telegram/ui/Components/UndoView;->prevSeconds:I

    new-array v6, v1, [Ljava/lang/Object;

    .line 1582
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v0

    const-string v0, "%d"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->timeLeftString:Ljava/lang/String;

    .line 1583
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_4

    .line 1584
    iput-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    .line 1585
    iput v2, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    .line 1588
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    iput v0, p0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    .line 1589
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/UndoView;->timeLeftString:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    const v8, 0x7fffffff

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    .line 1592
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v5, v0, v2

    if-gez v5, :cond_7

    const v5, 0x3dda740e

    add-float/2addr v0, v5

    .line 1593
    iput v0, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 1595
    iput v2, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    goto :goto_2

    .line 1597
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->invalidate()V

    .line 1601
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 1603
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    const/16 v6, 0xa

    const v7, 0x4189999a    # 17.2f

    if-eqz v5, :cond_8

    iget v5, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpg-float v8, v5, v2

    if-gez v8, :cond_8

    .line 1604
    iget-object v8, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    int-to-float v9, v0

    sub-float v5, v2, v5

    mul-float v9, v9, v5

    float-to-int v5, v9

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1605
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1606
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v8, p0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v5, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1607
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    invoke-virtual {v5, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1608
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1609
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1612
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_b

    .line 1613
    iget v5, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v8, v5, v2

    if-eqz v8, :cond_9

    .line 1614
    iget-object v8, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    int-to-float v9, v0

    mul-float v9, v9, v5

    float-to-int v5, v9

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1616
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1617
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v8, p0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v5, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v8, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    sub-float v8, v2, v8

    mul-float v6, v6, v8

    sub-float/2addr v7, v6

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1618
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1619
    iget v5, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_a

    .line 1620
    iget-object v2, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1622
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1627
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v0, -0x3c4c0000    # -360.0f

    iget-wide v8, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    long-to-float v2, v8

    const v5, 0x459c4000    # 5000.0f

    div-float/2addr v2, v5

    mul-float v8, v2, v0

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1630
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1631
    iget-wide v7, p0, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    sub-long v7, v5, v7

    .line 1632
    iget-wide v9, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    sub-long/2addr v9, v7

    iput-wide v9, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1633
    iput-wide v5, p0, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    cmp-long p1, v9, v3

    if-gtz p1, :cond_d

    .line 1635
    iget p1, p0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    invoke-virtual {p0, v1, p1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 1638
    :cond_d
    iget p1, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v0, 0x52

    if-eq p1, v0, :cond_e

    .line 1639
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->invalidate()V

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1536
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1537
    iget-object p1, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected onRemoveDialogAction(JI)V
    .locals 0

    return-void
.end method

.method public setAdditionalTranslationY(F)V
    .locals 1

    .line 362
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 363
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    .line 364
    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setColors(II)V
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object p2, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    const-string v0, "info1.**"

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 329
    iget-object p2, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v0, "info2.**"

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    return-void
.end method

.method public setEnterOffset(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1668
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1669
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    .line 1670
    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setEnterOffsetMargin(I)V
    .locals 0

    .line 1527
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    return-void
.end method

.method public setHideAnimationType(I)V
    .locals 0

    .line 1655
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    return-void
.end method

.method public setInfoText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1651
    iput-object p1, p0, Lorg/telegram/ui/Components/UndoView;->infoText:Ljava/lang/CharSequence;

    return-void
.end method

.method public showWithAction(JILjava/lang/Object;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    .line 439
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 453
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/UndoView;->showWithAction(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 447
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Runnable;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    .line 435
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    .line 443
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 457
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v7

    const/16 v8, 0x34

    const/16 v9, 0x3a

    if-nez v7, :cond_1

    iget v7, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-eq v7, v8, :cond_0

    const/16 v10, 0x38

    if-eq v7, v10, :cond_0

    const/16 v10, 0x39

    if-eq v7, v10, :cond_0

    if-eq v7, v9, :cond_0

    const/16 v10, 0x3b

    if-eq v7, v10, :cond_0

    const/16 v10, 0x3c

    if-eq v7, v10, :cond_0

    const/16 v10, 0x50

    if-eq v7, v10, :cond_0

    const/16 v10, 0x21

    if-ne v7, v10, :cond_1

    :cond_0
    return-void

    .line 460
    :cond_1
    iget-object v7, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    .line 461
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/4 v7, 0x1

    .line 463
    iput-boolean v7, v1, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    .line 464
    iput-object v5, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    .line 465
    iput-object v6, v1, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    .line 466
    iput-object v0, v1, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    const/4 v10, 0x0

    .line 467
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 468
    iput v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const-wide/16 v13, 0x1388

    .line 469
    iput-wide v13, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 470
    iput-object v3, v1, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v1, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    .line 472
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->Undo:I

    const-string v15, "Undo"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 475
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 476
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 477
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41700000    # 15.0f

    invoke-virtual {v13, v7, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 478
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/16 v8, 0x33

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 481
    iget-object v8, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    .line 482
    iput v13, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v13, 0xd

    .line 483
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    iput v13, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 484
    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 486
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 487
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v15, 0x13

    .line 488
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 489
    iput v10, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v10, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v15, 0x3

    .line 490
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v9, 0x36

    .line 491
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v9, -0x2

    .line 492
    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 494
    iget-object v9, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMinHeight(I)V

    const/4 v9, 0x0

    if-nez v5, :cond_3

    if-eqz v6, :cond_4

    .line 498
    :cond_3
    sget v6, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v2, v6, :cond_5

    .line 499
    :cond_4
    new-instance v6, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 502
    :cond_5
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    sget-object v6, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda4;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 506
    :goto_0
    iget-object v6, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 508
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->isTooltipAction()Z

    move-result v6

    const-string v14, ""

    move-object/from16 v16, v8

    const-wide/16 v7, 0xbb8

    const/16 v15, 0x24

    if-eqz v6, :cond_5a

    .line 516
    sget v0, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v2, v0, :cond_6

    .line 517
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 518
    sget v0, Lorg/telegram/messenger/R$string;->SoundAdded:I

    const-string v2, "SoundAdded"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 519
    sget v2, Lorg/telegram/messenger/R$string;->SoundAddedSubtitle:I

    const-string v3, "SoundAddedSubtitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 520
    iput-object v9, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    .line 521
    sget v3, Lorg/telegram/messenger/R$raw;->sound_download:I

    const-wide/16 v4, 0xfa0

    .line 522
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    move-object v9, v2

    goto/16 :goto_20

    :cond_6
    const/16 v0, 0x4a

    if-ne v2, v0, :cond_8

    .line 524
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 525
    sget v0, Lorg/telegram/messenger/R$string;->ReportChatSent:I

    const-string v2, "ReportChatSent"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 526
    sget v2, Lorg/telegram/messenger/R$string;->ReportSentInfo:I

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "ReportSentInfo"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_7

    .line 529
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->kikliko_name:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Telegram"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    move-object v9, v2

    .line 532
    sget v3, Lorg/telegram/messenger/R$raw;->ic_admin:I

    const-wide/16 v4, 0xfa0

    .line 533
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_20

    :cond_8
    const/16 v0, 0x22

    if-ne v2, v0, :cond_a

    .line 535
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 536
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 537
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 538
    sget v2, Lorg/telegram/messenger/R$string;->VoipChannelInvitedUser:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "VoipChannelInvitedUser"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_1

    :cond_9
    const/4 v3, 0x1

    .line 540
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupInvitedUser:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v10

    const-string v3, "VoipGroupInvitedUser"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 544
    :goto_1
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/16 v4, 0xc

    .line 545
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 546
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 547
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 548
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    move-object v0, v2

    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_20

    :cond_a
    const/16 v0, 0x2c

    if-ne v2, v0, :cond_e

    .line 551
    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 552
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_c

    .line 553
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 554
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 555
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelUserJoined:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    const-string v2, "VoipChannelUserJoined"

    invoke-static {v2, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_3

    :cond_b
    const/4 v4, 0x1

    .line 557
    sget v0, Lorg/telegram/messenger/R$string;->VoipChatUserJoined:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    const-string v2, "VoipChatUserJoined"

    invoke-static {v2, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_3

    .line 560
    :cond_c
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 561
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 562
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelChatJoined:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v5, v10

    const-string v2, "VoipChannelChatJoined"

    invoke-static {v2, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_3

    :cond_d
    const/4 v4, 0x1

    .line 564
    sget v0, Lorg/telegram/messenger/R$string;->VoipChatChatJoined:I

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v5, v10

    const-string v2, "VoipChatChatJoined"

    invoke-static {v2, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 569
    :goto_3
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/16 v4, 0xc

    .line 570
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 571
    check-cast v3, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 572
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 573
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2

    :cond_e
    const/16 v0, 0x25

    if-ne v2, v0, :cond_11

    .line 576
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/16 v2, 0xc

    .line 577
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 579
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_f

    .line 580
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 581
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 582
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 583
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 585
    :cond_f
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 586
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 587
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 588
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 590
    :goto_4
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 591
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 592
    sget v2, Lorg/telegram/messenger/R$string;->VoipChannelUserChanged:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v10

    const-string v0, "VoipChannelUserChanged"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_5

    :cond_10
    const/4 v3, 0x1

    .line 594
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserChanged:I

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v10

    const-string v0, "VoipGroupUserChanged"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 598
    :goto_5
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2

    :cond_11
    const/16 v0, 0x21

    if-ne v2, v0, :cond_12

    .line 601
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupCopyInviteLinkCopied:I

    const-string v2, "VoipGroupCopyInviteLinkCopied"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 603
    sget v3, Lorg/telegram/messenger/R$raw;->voip_invite:I

    .line 604
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_20

    :cond_12
    const/16 v0, 0x4d

    if-ne v2, v0, :cond_13

    .line 606
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    .line 608
    sget v3, Lorg/telegram/messenger/R$raw;->payment_success:I

    const-wide/16 v5, 0x1388

    .line 609
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 610
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_56

    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_56

    .line 611
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    .line 612
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 613
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 614
    new-instance v4, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_20

    :cond_13
    const/16 v0, 0x1e

    if-ne v2, v0, :cond_16

    .line 628
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_14

    .line 629
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 630
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 632
    :cond_14
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_15

    move-object v0, v14

    goto :goto_6

    .line 633
    :cond_15
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 635
    :goto_6
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCantNowSpeak:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v10

    const-string v0, "VoipGroupUserCantNowSpeak"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 637
    sget v3, Lorg/telegram/messenger/R$raw;->voip_muted:I

    .line 638
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_20

    :cond_16
    const/16 v0, 0x23

    if-ne v2, v0, :cond_19

    .line 641
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_17

    .line 642
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 643
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 644
    :cond_17
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_18

    .line 645
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 646
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_7

    :cond_18
    move-object v0, v14

    .line 650
    :goto_7
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCantNowSpeakForYou:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v10

    const-string v0, "VoipGroupUserCantNowSpeakForYou"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 652
    sget v3, Lorg/telegram/messenger/R$raw;->voip_muted:I

    .line 653
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_20

    :cond_19
    const/16 v0, 0x1f

    if-ne v2, v0, :cond_1b

    .line 656
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1a

    .line 657
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 658
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 660
    :cond_1a
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 661
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 663
    :goto_8
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCanNowSpeak:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v10

    const-string v0, "VoipGroupUserCanNowSpeak"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 665
    sget v3, Lorg/telegram/messenger/R$raw;->voip_unmuted:I

    .line 666
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_20

    :cond_1b
    const/16 v0, 0x26

    if-ne v2, v0, :cond_1d

    .line 668
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1c

    .line 669
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 670
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupYouCanNowSpeakIn:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v0, v4, v10

    const-string v0, "VoipGroupYouCanNowSpeakIn"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_9

    .line 672
    :cond_1c
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupYouCanNowSpeak:I

    const-string v2, "VoipGroupYouCanNowSpeak"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 675
    :goto_9
    sget v3, Lorg/telegram/messenger/R$raw;->voip_allow_talk:I

    .line 676
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_20

    :cond_1d
    const/16 v0, 0x2a

    if-ne v2, v0, :cond_1f

    .line 678
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 679
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 680
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelSoundMuted:I

    const-string v2, "VoipChannelSoundMuted"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_a

    .line 682
    :cond_1e
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupSoundMuted:I

    const-string v2, "VoipGroupSoundMuted"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 685
    :goto_a
    sget v3, Lorg/telegram/messenger/R$raw;->ic_mute:I

    .line 686
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_20

    :cond_1f
    const/16 v0, 0x2b

    if-ne v2, v0, :cond_21

    .line 688
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 689
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 690
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelSoundUnmuted:I

    const-string v2, "VoipChannelSoundUnmuted"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_b

    .line 692
    :cond_20
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupSoundUnmuted:I

    const-string v2, "VoipGroupSoundUnmuted"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 695
    :goto_b
    sget v3, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    .line 696
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_20

    .line 697
    :cond_21
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v5, 0x27

    if-eq v0, v5, :cond_54

    const/16 v5, 0x64

    if-ne v0, v5, :cond_22

    goto/16 :goto_1e

    :cond_22
    const/16 v5, 0x28

    if-eq v0, v5, :cond_51

    const/16 v5, 0x65

    if-ne v0, v5, :cond_23

    goto/16 :goto_1b

    :cond_23
    if-ne v2, v15, :cond_25

    .line 723
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_24

    .line 724
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 725
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 727
    :cond_24
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 728
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 730
    :goto_c
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCanNowSpeakForYou:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v10

    const-string v0, "VoipGroupUserCanNowSpeakForYou"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 732
    sget v3, Lorg/telegram/messenger/R$raw;->voip_unmuted:I

    .line 733
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_20

    :cond_25
    const/16 v5, 0x20

    if-ne v2, v5, :cond_27

    .line 736
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_26

    .line 737
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 738
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 740
    :cond_26
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 741
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 743
    :goto_d
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupRemovedFromGroup:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v10

    const-string v0, "VoipGroupRemovedFromGroup"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 745
    sget v3, Lorg/telegram/messenger/R$raw;->voip_group_removed:I

    .line 746
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_20

    :cond_27
    const/16 v5, 0x9

    if-eq v2, v5, :cond_4f

    const/16 v5, 0xa

    if-ne v2, v5, :cond_28

    goto/16 :goto_19

    :cond_28
    const/16 v5, 0x8

    if-ne v2, v5, :cond_29

    .line 757
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 758
    sget v2, Lorg/telegram/messenger/R$string;->NowInContacts:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    const-string v0, "NowInContacts"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 760
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_20

    :cond_29
    const/16 v5, 0x57

    if-ne v2, v5, :cond_2a

    .line 762
    sget v0, Lorg/telegram/messenger/R$string;->ProxyAddedSuccess:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 764
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_20

    :cond_2a
    const/16 v5, 0x16

    if-ne v2, v5, :cond_30

    .line 766
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-nez v3, :cond_2b

    .line 768
    sget v0, Lorg/telegram/messenger/R$string;->MainProfilePhotoSetHint:I

    const-string v2, "MainProfilePhotoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 770
    :cond_2b
    sget v0, Lorg/telegram/messenger/R$string;->MainProfileVideoSetHint:I

    const-string v2, "MainProfileVideoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 773
    :cond_2c
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v4, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 774
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_2e

    if-nez v3, :cond_2d

    .line 776
    sget v0, Lorg/telegram/messenger/R$string;->MainChannelProfilePhotoSetHint:I

    const-string v2, "MainChannelProfilePhotoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 778
    :cond_2d
    sget v0, Lorg/telegram/messenger/R$string;->MainChannelProfileVideoSetHint:I

    const-string v2, "MainChannelProfileVideoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_2e
    if-nez v3, :cond_2f

    .line 782
    sget v0, Lorg/telegram/messenger/R$string;->MainGroupProfilePhotoSetHint:I

    const-string v2, "MainGroupProfilePhotoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 784
    :cond_2f
    sget v0, Lorg/telegram/messenger/R$string;->MainGroupProfileVideoSetHint:I

    const-string v2, "MainGroupProfileVideoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 789
    :goto_e
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_20

    :cond_30
    const/16 v5, 0x17

    if-ne v2, v5, :cond_31

    .line 791
    sget v0, Lorg/telegram/messenger/R$string;->ChatWasMovedToMainList:I

    const-string v2, "ChatWasMovedToMainList"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 793
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_20

    :cond_31
    const/4 v5, 0x6

    if-ne v2, v5, :cond_32

    .line 795
    sget v0, Lorg/telegram/messenger/R$string;->ArchiveHidden:I

    const-string v2, "ArchiveHidden"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 796
    sget v2, Lorg/telegram/messenger/R$string;->ArchiveHiddenInfo:I

    const-string v3, "ArchiveHiddenInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 797
    sget v3, Lorg/telegram/messenger/R$raw;->chats_swipearchive:I

    const/16 v15, 0x30

    goto/16 :goto_20

    :cond_32
    const/16 v5, 0xd

    if-ne v0, v5, :cond_33

    .line 800
    sget v0, Lorg/telegram/messenger/R$string;->QuizWellDone:I

    const-string v2, "QuizWellDone"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 801
    sget v2, Lorg/telegram/messenger/R$string;->QuizWellDoneInfo:I

    const-string v3, "QuizWellDoneInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 802
    sget v3, Lorg/telegram/messenger/R$raw;->wallet_congrats:I

    :goto_f
    const/16 v15, 0x2c

    goto/16 :goto_20

    :cond_33
    const/16 v5, 0xe

    if-ne v0, v5, :cond_34

    .line 805
    sget v0, Lorg/telegram/messenger/R$string;->QuizWrongAnswer:I

    const-string v2, "QuizWrongAnswer"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 806
    sget v2, Lorg/telegram/messenger/R$string;->QuizWrongAnswerInfo:I

    const-string v3, "QuizWrongAnswerInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 807
    sget v3, Lorg/telegram/messenger/R$raw;->wallet_science:I

    goto :goto_f

    :cond_34
    const/4 v0, 0x7

    if-ne v2, v0, :cond_37

    .line 810
    sget v0, Lorg/telegram/messenger/R$string;->ArchivePinned:I

    const-string v2, "ArchivePinned"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 811
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/fork/controller/FiltersController;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v2

    if-nez v2, :cond_35

    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_35
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/fork/controller/FiltersController;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v2

    if-nez v2, :cond_36

    .line 812
    sget v2, Lorg/telegram/messenger/R$string;->ArchivePinnedInfo:I

    const-string v3, "ArchivePinnedInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 816
    :cond_36
    sget v3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    goto/16 :goto_20

    :cond_37
    const/16 v0, 0x14

    if-eq v2, v0, :cond_43

    const/16 v0, 0x15

    if-eq v2, v0, :cond_43

    .line 817
    sget v0, Lcom/smedialink/common/IdFabric$CustomType;->UNDO_MOVE_TO_FOLDER:I

    if-ne v2, v0, :cond_38

    goto/16 :goto_15

    :cond_38
    const/16 v0, 0x13

    if-ne v2, v0, :cond_39

    .line 874
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoText:Ljava/lang/CharSequence;

    .line 876
    sget v3, Lorg/telegram/messenger/R$raw;->ic_delete:I

    goto/16 :goto_20

    :cond_39
    const/16 v0, 0x52

    if-ne v2, v0, :cond_3b

    .line 878
    move-object v0, v3

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 879
    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_3a

    sget v0, Lorg/telegram/messenger/R$string;->AttachMediaVideoDeselected:I

    const-string v2, "AttachMediaVideoDeselected"

    goto :goto_10

    :cond_3a
    sget v0, Lorg/telegram/messenger/R$string;->AttachMediaPhotoDeselected:I

    const-string v2, "AttachMediaPhotoDeselected"

    :goto_10
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_3b
    const/16 v0, 0x4e

    if-eq v2, v0, :cond_40

    const/16 v0, 0x4f

    if-ne v2, v0, :cond_3c

    goto :goto_12

    :cond_3c
    const/4 v0, 0x3

    if-ne v2, v0, :cond_3d

    .line 896
    sget v0, Lorg/telegram/messenger/R$string;->ChatArchived:I

    const-string v2, "ChatArchived"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 898
    :cond_3d
    sget v0, Lorg/telegram/messenger/R$string;->ChatsArchived:I

    const-string v2, "ChatsArchived"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 900
    :goto_11
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/fork/controller/FiltersController;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v2

    if-nez v2, :cond_3e

    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_3e
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/fork/controller/FiltersController;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v2

    if-nez v2, :cond_3f

    .line 901
    sget v2, Lorg/telegram/messenger/R$string;->ChatArchivedInfo:I

    const-string v3, "ChatArchivedInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 905
    :cond_3f
    sget v3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    goto/16 :goto_20

    .line 883
    :cond_40
    :goto_12
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_41

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "PinnedDialogsCount"

    .line 885
    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_41
    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "UnpinnedDialogsCount"

    .line 887
    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 890
    :goto_13
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_42

    sget v2, Lorg/telegram/messenger/R$raw;->ic_pin:I

    goto :goto_14

    :cond_42
    sget v2, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    :goto_14
    move v3, v2

    .line 891
    instance-of v2, v4, Ljava/lang/Integer;

    if-eqz v2, :cond_56

    .line 892
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_20

    .line 823
    :cond_43
    :goto_15
    sget v0, Lcom/smedialink/common/IdFabric$CustomType;->UNDO_MOVE_TO_FOLDER:I

    if-ne v2, v0, :cond_44

    .line 824
    check-cast v4, [Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 825
    aget-object v5, v4, v10

    const/4 v6, 0x1

    .line 826
    aget-object v4, v4, v6

    move-object v6, v5

    move-object v5, v9

    goto :goto_16

    .line 828
    :cond_44
    check-cast v4, Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-object v5, v4

    move-object v4, v9

    move-object v6, v4

    :goto_16
    const-wide/16 v7, 0x0

    cmp-long v13, v11, v7

    if-eqz v13, :cond_4b

    .line 833
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 834
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 835
    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    .line 837
    :cond_45
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 838
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-ne v2, v0, :cond_46

    .line 841
    sget v0, Lorg/telegram/messenger/R$string;->moved_to_folder:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v10

    iget-object v3, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    iget-object v3, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v5, v4

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_17

    :cond_46
    const/4 v4, 0x2

    const/16 v0, 0x14

    if-ne v2, v0, :cond_47

    .line 844
    sget v0, Lorg/telegram/messenger/R$string;->FilterUserAddedToExisting:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    iget-object v3, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const-string v3, "FilterUserAddedToExisting"

    invoke-static {v3, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_17

    :cond_47
    const/4 v7, 0x1

    .line 846
    sget v0, Lorg/telegram/messenger/R$string;->FilterUserRemovedFrom:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    iget-object v3, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    aput-object v3, v6, v7

    const-string v3, "FilterUserRemovedFrom"

    invoke-static {v3, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_17

    .line 849
    :cond_48
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-ne v2, v0, :cond_49

    .line 852
    sget v0, Lorg/telegram/messenger/R$string;->moved_to_folder:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v5, v10

    iget-object v3, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    iget-object v3, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v5, v4

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_17

    :cond_49
    const/4 v4, 0x2

    const/16 v0, 0x14

    if-ne v2, v0, :cond_4a

    .line 855
    sget v0, Lorg/telegram/messenger/R$string;->FilterChatAddedToExisting:I

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v6, v10

    iget-object v3, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const-string v3, "FilterChatAddedToExisting"

    invoke-static {v3, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_17

    :cond_4a
    const/4 v7, 0x1

    .line 857
    sget v0, Lorg/telegram/messenger/R$string;->FilterChatRemovedFrom:I

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v6, v10

    iget-object v3, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    aput-object v3, v6, v7

    const-string v3, "FilterChatRemovedFrom"

    invoke-static {v3, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_17

    :cond_4b
    if-ne v2, v0, :cond_4c

    .line 863
    sget v0, Lorg/telegram/messenger/R$string;->moved_to_folder:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "Chats"

    invoke-static {v8, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v10

    iget-object v3, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    iget-object v3, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v5, v4

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_17

    :cond_4c
    const/4 v4, 0x2

    const/16 v0, 0x14

    if-ne v2, v0, :cond_4d

    .line 866
    sget v0, Lorg/telegram/messenger/R$string;->FilterChatsAddedToExisting:I

    new-array v6, v4, [Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v4, v10, [Ljava/lang/Object;

    const-string v7, "ChatsSelected"

    invoke-static {v7, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    iget-object v3, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v6, v4

    const-string v3, "FilterChatsAddedToExisting"

    invoke-static {v3, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_17

    .line 868
    :cond_4d
    sget v0, Lorg/telegram/messenger/R$string;->FilterChatsRemovedFrom:I

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v4, v10, [Ljava/lang/Object;

    const-string v7, "ChatsSelected"

    invoke-static {v7, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    iget-object v3, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v6, v4

    const-string v3, "FilterChatsRemovedFrom"

    invoke-static {v3, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_17
    const/16 v3, 0x14

    if-ne v2, v3, :cond_4e

    .line 872
    sget v2, Lorg/telegram/messenger/R$raw;->folder_in:I

    goto :goto_18

    :cond_4e
    sget v2, Lorg/telegram/messenger/R$raw;->folder_out:I

    :goto_18
    move v3, v2

    goto/16 :goto_20

    .line 748
    :cond_4f
    :goto_19
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    const/16 v3, 0x9

    if-ne v2, v3, :cond_50

    .line 750
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminTransferChannelToast:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    const-string v0, "EditAdminTransferChannelToast"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_1a

    :cond_50
    const/4 v3, 0x1

    .line 752
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminTransferGroupToast:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    const-string v0, "EditAdminTransferGroupToast"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 755
    :goto_1a
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_20

    :cond_51
    :goto_1b
    const/16 v2, 0x28

    if-ne v0, v2, :cond_52

    .line 703
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupAudioRecordSaved:I

    const-string v2, "VoipGroupAudioRecordSaved"

    goto :goto_1c

    :cond_52
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVideoRecordSaved:I

    const-string v2, "VoipGroupVideoRecordSaved"

    :goto_1c
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 705
    sget v3, Lorg/telegram/messenger/R$raw;->voip_record_saved:I

    const-wide/16 v4, 0xfa0

    .line 706
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 707
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v4}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 708
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, "**"

    .line 709
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "**"

    .line 710
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v4, :cond_53

    if-ltz v0, :cond_53

    if-eq v4, v0, :cond_53

    add-int/lit8 v5, v0, 0x2

    .line 712
    invoke-virtual {v2, v0, v5, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v4, 0x2

    .line 713
    invoke-virtual {v2, v4, v5, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 715
    :try_start_0
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tg://openmessage?user_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    sub-int/2addr v0, v6

    const/16 v6, 0x21

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1d

    :catch_0
    move-exception v0

    .line 717
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_53
    :goto_1d
    move-object v0, v2

    goto :goto_20

    :cond_54
    :goto_1e
    const/16 v2, 0x27

    if-ne v0, v2, :cond_55

    .line 698
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupAudioRecordStarted:I

    const-string v2, "VoipGroupAudioRecordStarted"

    goto :goto_1f

    :cond_55
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVideoRecordStarted:I

    const-string v2, "VoipGroupVideoRecordStarted"

    :goto_1f
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 700
    sget v3, Lorg/telegram/messenger/R$raw;->voip_record_start:I

    .line 701
    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 908
    :cond_56
    :goto_20
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_57

    .line 913
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v3, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 914
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    .line 915
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    .line 916
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 918
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 920
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 921
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const/16 v2, 0x8

    goto :goto_21

    .line 924
    :cond_57
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_21
    if-eqz v9, :cond_58

    const/16 v3, 0x3a

    .line 928
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    move-object/from16 v5, v16

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x6

    .line 929
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 930
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 931
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 932
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 933
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 935
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 936
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x8

    goto :goto_22

    :cond_58
    move-object/from16 v5, v16

    const/16 v2, 0x3a

    .line 938
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0xd

    .line 939
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x8

    .line 940
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 941
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 942
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 943
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 946
    :goto_22
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_59
    :goto_23
    const/16 v6, 0xe

    goto/16 :goto_34

    :cond_5a
    move-object/from16 v5, v16

    .line 947
    iget v6, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x33

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x32

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x34

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x35

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x36

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x37

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x38

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x39

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x3c

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x47

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x46

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x4b

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x29

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x4e

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x4f

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_7d

    const/16 v7, 0x50

    if-ne v6, v7, :cond_5b

    goto/16 :goto_35

    :cond_5b
    const/16 v7, 0x18

    if-eq v6, v7, :cond_7a

    const/16 v7, 0x19

    if-ne v6, v7, :cond_5c

    goto/16 :goto_31

    :cond_5c
    const/16 v4, 0xb

    if-ne v6, v4, :cond_5d

    .line 1208
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 1210
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AuthAnotherClientOk:I

    const-string v4, "AuthAnotherClientOk"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {v2, v3, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v2, 0x3a

    .line 1213
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x6

    .line 1214
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1215
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1217
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1218
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1220
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "windowBackgroundWhiteRedText2"

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1221
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1222
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1223
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1225
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1226
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_23

    :cond_5d
    const/16 v4, 0xf

    const/16 v7, 0x1a

    if-ne v6, v4, :cond_5f

    const-wide/16 v2, 0x2710

    .line 1228
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1229
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    const-string v3, "Open"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1230
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->FilterAvailableTitle:I

    const-string v3, "FilterAvailableTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->filter_new:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1232
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x3a

    .line 1234
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1235
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x6

    .line 1236
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1238
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1239
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1241
    sget v0, Lorg/telegram/messenger/R$string;->FilterAvailableText:I

    const-string v2, "FilterAvailableText"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1242
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2a

    .line 1243
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0x2a

    .line 1244
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v3, :cond_5e

    if-ltz v0, :cond_5e

    if-eq v3, v0, :cond_5e

    add-int/lit8 v4, v0, 0x1

    .line 1246
    invoke-virtual {v2, v0, v4, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v3, 0x1

    .line 1247
    invoke-virtual {v2, v3, v4, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1248
    new-instance v4, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string/jumbo v5, "tg://settings/folders"

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const/16 v5, 0x21

    invoke-virtual {v2, v4, v3, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1250
    :cond_5e
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1252
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1253
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1254
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1255
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1256
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1258
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1259
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_23

    :cond_5f
    const/16 v4, 0x10

    if-eq v6, v4, :cond_75

    const/16 v4, 0x11

    if-ne v6, v4, :cond_60

    goto/16 :goto_2c

    :cond_60
    const/16 v4, 0x12

    if-ne v6, v4, :cond_61

    .line 1312
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v2, 0xfa0

    .line 1313
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x32

    mul-int/lit16 v3, v3, 0x640

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1314
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1315
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1316
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1319
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v3, 0x3a

    .line 1320
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1321
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v3, 0x6

    .line 1322
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x7

    .line 1323
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v0, -0x1

    .line 1324
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x33

    .line 1326
    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1327
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1329
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1330
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1331
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1332
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1334
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v2}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_23

    :cond_61
    const/16 v4, 0xc

    if-ne v6, v4, :cond_63

    .line 1336
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ColorThemeChanged:I

    const-string v3, "ColorThemeChanged"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->toast_pallete:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    const/16 v2, 0x3a

    .line 1339
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x30

    .line 1340
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x6

    .line 1341
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1343
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x30

    .line 1344
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1346
    sget v0, Lorg/telegram/messenger/R$string;->ColorThemeChangedInfo:I

    const-string v2, "ColorThemeChangedInfo"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1347
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2a

    .line 1348
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0x2a

    .line 1349
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v3, :cond_62

    if-ltz v0, :cond_62

    if-eq v3, v0, :cond_62

    add-int/lit8 v4, v0, 0x1

    .line 1351
    invoke-virtual {v2, v0, v4, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v3, 0x1

    .line 1352
    invoke-virtual {v2, v3, v4, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1353
    new-instance v4, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string/jumbo v5, "tg://settings/themes"

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const/16 v5, 0x21

    invoke-virtual {v2, v4, v3, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1355
    :cond_62
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1357
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1358
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1359
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1360
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1361
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_23

    :cond_63
    const/16 v4, 0x54

    if-ne v6, v4, :cond_64

    .line 1363
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1364
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1365
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1366
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->UnlockPremiumTranscriptionHint:I

    const-string v3, "UnlockPremiumTranscriptionHint"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->unlock_premium_transcription_hint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1369
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->voice_to_text:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1370
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1371
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1373
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PremiumMore:I

    const-string v3, "PremiumMore"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x3a

    .line 1374
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1375
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x6

    .line 1376
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, -0x2

    .line 1377
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1379
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1381
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1382
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1383
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_23

    :cond_64
    const/16 v4, 0x55

    if-ne v6, v4, :cond_65

    .line 1385
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1386
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1387
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1388
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SwipeToReplyHint:I

    const-string v3, "SwipeToReplyHint"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1390
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->hint_swipe_reply:I

    const/16 v3, 0x40

    const/16 v4, 0x40

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1391
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1392
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1394
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1395
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SwipeToReplyHintMessage:I

    const-string v3, "SwipeToReplyHintMessage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x3a

    .line 1397
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1398
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x6

    .line 1399
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, -0x2

    .line 1400
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1402
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1403
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_23

    :cond_65
    const/4 v4, 0x2

    if-eq v6, v4, :cond_73

    const/4 v4, 0x4

    if-ne v6, v4, :cond_66

    goto/16 :goto_2a

    :cond_66
    const/16 v4, 0x52

    if-ne v2, v4, :cond_6b

    const/16 v2, 0x3a

    .line 1425
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1427
    move-object v0, v3

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1428
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v3, :cond_67

    sget v3, Lorg/telegram/messenger/R$string;->AttachMediaVideoDeselected:I

    const-string v4, "AttachMediaVideoDeselected"

    goto :goto_24

    :cond_67
    sget v3, Lorg/telegram/messenger/R$string;->AttachMediaPhotoDeselected:I

    const-string v4, "AttachMediaPhotoDeselected"

    :goto_24
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1430
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1431
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1432
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1434
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1435
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1436
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v2, :cond_68

    .line 1437
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v9, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_23

    .line 1438
    :cond_68
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_6a

    .line 1439
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 1440
    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_69

    .line 1441
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vthumb://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v9, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_23

    .line 1443
    :cond_69
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "thumb://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v9, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_23

    .line 1446
    :cond_6a
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_23

    :cond_6b
    const/16 v2, 0x2d

    .line 1449
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0xd

    .line 1450
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1451
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1453
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1454
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1455
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1456
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1457
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1459
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v3, 0x51

    if-eq v2, v3, :cond_70

    if-eqz v2, :cond_70

    if-ne v2, v7, :cond_6c

    goto :goto_25

    :cond_6c
    const/16 v3, 0x1b

    if-ne v2, v3, :cond_6d

    .line 1462
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChatsDeletedUndo:I

    const-string v4, "ChatsDeletedUndo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 1464
    :cond_6d
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1465
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v3, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1466
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_6e

    .line 1467
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelDeletedUndo:I

    const-string v4, "ChannelDeletedUndo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 1469
    :cond_6e
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->GroupDeletedUndo:I

    const-string v4, "GroupDeletedUndo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 1472
    :cond_6f
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChatDeletedUndo:I

    const-string v4, "ChatDeletedUndo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 1460
    :cond_70
    :goto_25
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->HistoryClearedUndo:I

    const-string v4, "HistoryClearedUndo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1475
    :goto_26
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v3, 0x51

    if-eq v2, v3, :cond_59

    const/4 v2, 0x0

    .line 1476
    :goto_27
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 1477
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-eqz v6, :cond_72

    if-ne v6, v7, :cond_71

    goto :goto_28

    :cond_71
    const/4 v6, 0x0

    goto :goto_29

    :cond_72
    :goto_28
    const/4 v6, 0x1

    :goto_29
    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->addDialogAction(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_73
    :goto_2a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_74

    .line 1406
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChatArchived:I

    const-string v3, "ChatArchived"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 1408
    :cond_74
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChatsArchived:I

    const-string v3, "ChatsArchived"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2b
    const/16 v2, 0x3a

    .line 1411
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0xd

    .line 1412
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1413
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1415
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1416
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1417
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1418
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1420
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1421
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_archived:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1422
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1423
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_23

    :cond_75
    :goto_2c
    const-wide/16 v8, 0xfa0

    .line 1261
    iput-wide v8, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1262
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1263
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1264
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/16 v2, 0x1e

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1265
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "\ud83c\udfb2"

    .line 1266
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1267
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->DiceInfo2:I

    const-string v3, "DiceInfo2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->dice:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto/16 :goto_2f

    :cond_76
    const-string/jumbo v2, "\ud83c\udfaf"

    .line 1270
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1271
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->DartInfo:I

    const-string v4, "DartInfo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2d
    const/16 v6, 0xe

    goto :goto_2e

    .line 1273
    :cond_77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiceEmojiInfo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getServerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1274
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 1275
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v6, 0xe

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v2, v4, v8, v10}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 1277
    :cond_78
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->DiceEmojiInfo:I

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v10

    const-string v4, "DiceEmojiInfo"

    invoke-static {v4, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v6, 0xe

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3, v4, v8, v10}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    :goto_2e
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1281
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1282
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1283
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1284
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1285
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1286
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1288
    :goto_2f
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SendDice:I

    const-string v3, "SendDice"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_79

    .line 1292
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1293
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1294
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "undo_cancelColor"

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1295
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1296
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_30

    :cond_79
    const/16 v3, 0x8

    .line 1298
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1299
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1300
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_30
    const/16 v2, 0x3a

    .line 1303
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1304
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x6

    .line 1305
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x7

    .line 1306
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v0, -0x1

    .line 1307
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1309
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1310
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_23

    :cond_7a
    :goto_31
    const/16 v2, 0x8

    .line 1155
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1156
    move-object v3, v4

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 1158
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1159
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v2, "undo_infoColor"

    if-eqz v0, :cond_7c

    .line 1162
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1163
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1164
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieImageView;->clearLayerColors()V

    .line 1165
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "BODY.**"

    invoke-virtual {v4, v7, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1166
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "Wibe Big.**"

    invoke-virtual {v4, v7, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1167
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "Wibe Big 3.**"

    invoke-virtual {v4, v7, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1168
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const-string v6, "Wibe Small.**"

    invoke-virtual {v4, v6, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1170
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->ProximityAlertSet:I

    const-string v6, "ProximityAlertSet"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v4, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    const/16 v6, 0x1c

    const/16 v7, 0x1c

    invoke-virtual {v2, v4, v6, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1172
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1173
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1174
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v3, :cond_7b

    .line 1177
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->ProximityAlertSetInfoUser:I

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v10

    int-to-float v0, v0

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v7, v3

    const-string v0, "ProximityAlertSetInfoUser"

    invoke-static {v0, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32

    :cond_7b
    const/4 v3, 0x1

    const/4 v6, 0x2

    .line 1179
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->ProximityAlertSetInfoGroup2:I

    new-array v7, v3, [Ljava/lang/Object;

    int-to-float v0, v0

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    const-string v0, "ProximityAlertSetInfoGroup2"

    invoke-static {v0, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    :goto_32
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x6

    .line 1183
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x3a

    const/16 v6, 0xe

    goto/16 :goto_33

    .line 1185
    :cond_7c
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1186
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1187
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->clearLayerColors()V

    .line 1188
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Body Main.**"

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1189
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Body Top.**"

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1190
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Line.**"

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1191
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Curve Big.**"

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1192
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Curve Small.**"

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    const/16 v6, 0xe

    .line 1194
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1196
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ProximityAlertCancelled:I

    const-string v3, "ProximityAlertCancelled"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->ic_mute:I

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1198
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1199
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "undo_cancelColor"

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1200
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0x3a

    .line 1203
    :goto_33
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1205
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1206
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :goto_34
    const/4 v0, 0x0

    goto/16 :goto_46

    :cond_7d
    :goto_35
    const/16 v6, 0xe

    .line 953
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 954
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-wide/16 v7, -0x1

    .line 958
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v9, 0x4c

    if-ne v0, v9, :cond_7e

    .line 959
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BroadcastGroupConvertSuccess:I

    const-string v3, "BroadcastGroupConvertSuccess"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->gigagroup_convert:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v0, 0x9

    .line 962
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 963
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_36
    const/4 v0, 0x1

    goto/16 :goto_45

    :cond_7e
    const/16 v9, 0x4b

    if-ne v0, v9, :cond_7f

    .line 965
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->GigagroupConvertCancelHint:I

    const-string v3, "GigagroupConvertCancelHint"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v0, 0x9

    .line 968
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 969
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_36

    :cond_7f
    const/16 v9, 0x46

    if-ne v2, v9, :cond_80

    .line 971
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 972
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 973
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 974
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    .line 975
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AutoDeleteHintOnText:I

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v10

    const-string v0, "AutoDeleteHintOnText"

    invoke-static {v0, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->fire_on:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v0, 0x9

    .line 977
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const-wide/16 v2, 0xfa0

    .line 978
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 980
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v10, v10, v10, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_36

    :cond_80
    const/16 v2, 0x47

    if-ne v0, v2, :cond_81

    .line 982
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AutoDeleteHintOffText:I

    const-string v3, "AutoDeleteHintOffText"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->fire_off:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 984
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-wide/16 v2, 0xbb8

    .line 985
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 986
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v10, v10, v10, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_44

    :cond_81
    const/16 v2, 0x2d

    if-ne v0, v2, :cond_82

    .line 988
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportMutualError:I

    const-string v3, "ImportMutualError"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v0, 0x9

    .line 991
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 992
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_36

    :cond_82
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_83

    .line 994
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportNotAdmin:I

    const-string v3, "ImportNotAdmin"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v0, 0x9

    .line 997
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 998
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_36

    :cond_83
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_84

    .line 1000
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportedInfo:I

    const-string v3, "ImportedInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->imported:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1002
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v10, v10, v10, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/16 v0, 0x9

    .line 1004
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1005
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_36

    :cond_84
    const/16 v2, 0x33

    if-ne v0, v2, :cond_85

    .line 1007
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AudioSpeedNormal:I

    const-string v3, "AudioSpeedNormal"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->audio_stop_speed:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v2, 0xbb8

    .line 1009
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1010
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_44

    :cond_85
    const/16 v2, 0x32

    if-ne v0, v2, :cond_86

    .line 1012
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AudioSpeedFast:I

    const-string v3, "AudioSpeedFast"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->audio_speed:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v2, 0xbb8

    .line 1014
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1015
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_44

    :cond_86
    const/16 v2, 0x34

    if-eq v0, v2, :cond_9d

    const/16 v2, 0x38

    if-eq v0, v2, :cond_9d

    const/16 v2, 0x39

    if-eq v0, v2, :cond_9d

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_9d

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_9d

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_9d

    const/16 v2, 0x50

    if-ne v0, v2, :cond_87

    goto/16 :goto_42

    :cond_87
    const/16 v2, 0x36

    if-ne v0, v2, :cond_88

    .line 1042
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelNotifyMembersInfoOn:I

    const-string v3, "ChannelNotifyMembersInfoOn"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->silent_unmute:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v2, 0xbb8

    .line 1044
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1045
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_44

    :cond_88
    const/16 v2, 0x37

    if-ne v0, v2, :cond_89

    .line 1047
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelNotifyMembersInfoOff:I

    const-string v3, "ChannelNotifyMembersInfoOff"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->silent_mute:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v2, 0xbb8

    .line 1049
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1050
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_44

    :cond_89
    const/16 v2, 0x29

    if-ne v0, v2, :cond_8d

    if-nez v4, :cond_8c

    .line 1053
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v11, v2

    if-nez v0, :cond_8a

    .line 1054
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->InvLinkToSavedMessages:I

    const-string v3, "InvLinkToSavedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 1056
    :cond_8a
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1057
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1058
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->InvLinkToGroup:I

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v0, v9, v10

    const-string v0, "InvLinkToGroup"

    invoke-static {v0, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 1060
    :cond_8b
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1061
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->InvLinkToUser:I

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    const-string v0, "InvLinkToUser"

    invoke-static {v0, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 1065
    :cond_8c
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1066
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->InvLinkToChats:I

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    new-array v4, v10, [Ljava/lang/Object;

    const-string v11, "Chats"

    invoke-static {v11, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    const-string v0, "InvLinkToChats"

    invoke-static {v0, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    :goto_37
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {v0, v2, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v2, 0xbb8

    .line 1069
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_44

    :cond_8d
    const/16 v2, 0x35

    if-ne v0, v2, :cond_99

    .line 1071
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    if-eqz v4, :cond_90

    .line 1072
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v2, :cond_8e

    goto :goto_39

    .line 1106
    :cond_8e
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1107
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8f

    .line 1108
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "FwdMessageToManyChats"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 1110
    :cond_8f
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "FwdMessagesToManyChats"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    :goto_38
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto/16 :goto_3e

    .line 1073
    :cond_90
    :goto_39
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v9, v11, v2

    if-nez v9, :cond_92

    .line 1074
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_91

    .line 1075
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    const-string v3, "FwdMessageToSavedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 1077
    :cond_91
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->FwdMessagesToSavedMessages:I

    const-string v3, "FwdMessagesToSavedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    :goto_3a
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_cloud:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto/16 :goto_3f

    .line 1082
    :cond_92
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 1083
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1084
    move-object v3, v4

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v2, :cond_98

    .line 1087
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_94

    .line 1088
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->FwdMessageToGroup:I

    new-array v8, v4, [Ljava/lang/Object;

    if-eqz v3, :cond_93

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    goto :goto_3b

    :cond_93
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_3b
    aput-object v2, v8, v10

    const-string v2, "FwdMessageToGroup"

    invoke-static {v2, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d

    .line 1090
    :cond_94
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->FwdMessagesToGroup:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    if-eqz v3, :cond_95

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    goto :goto_3c

    :cond_95
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_3c
    aput-object v2, v8, v10

    const-string v2, "FwdMessagesToGroup"

    invoke-static {v2, v4, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d

    .line 1093
    :cond_96
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_98

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_97

    .line 1097
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->FwdMessageToUser:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v10

    const-string v2, "FwdMessageToUser"

    invoke-static {v2, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d

    .line 1099
    :cond_97
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->FwdMessagesToUser:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v10

    const-string v2, "FwdMessagesToUser"

    invoke-static {v2, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    :cond_98
    :goto_3d
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    :goto_3e
    const-wide/16 v7, 0x12c

    :goto_3f
    const-wide/16 v2, 0xbb8

    .line 1115
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    const-wide/16 v11, 0x2

    .line 1116
    div-long/2addr v2, v11

    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_44

    :cond_99
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_a5

    .line 1118
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    if-nez v4, :cond_9c

    .line 1120
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v11, v2

    if-nez v0, :cond_9a

    .line 1121
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BackgroundToSavedMessages:I

    const-string v3, "BackgroundToSavedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->saved_messages:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto/16 :goto_41

    .line 1124
    :cond_9a
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1125
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1126
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BackgroundToGroup:I

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v0, v9, v10

    const-string v0, "BackgroundToGroup"

    invoke-static {v0, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_40

    .line 1128
    :cond_9b
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1129
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BackgroundToUser:I

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    const-string v0, "BackgroundToUser"

    invoke-static {v0, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    :goto_40
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_41

    .line 1134
    :cond_9c
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1135
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BackgroundToChats:I

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    new-array v4, v10, [Ljava/lang/Object;

    const-string v11, "Chats"

    invoke-static {v11, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    const-string v0, "BackgroundToChats"

    invoke-static {v0, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    :goto_41
    const-wide/16 v2, 0xbb8

    .line 1138
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_44

    .line 1017
    :cond_9d
    :goto_42
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v0

    if-nez v0, :cond_9e

    return-void

    .line 1020
    :cond_9e
    sget v0, Lorg/telegram/messenger/R$raw;->copy:I

    .line 1021
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v3, 0x50

    if-ne v2, v3, :cond_9f

    .line 1022
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->EmailCopied:I

    const-string v4, "EmailCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    :cond_9f
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_a0

    .line 1024
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->PhoneCopied:I

    const-string v4, "PhoneCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    :cond_a0
    const/16 v3, 0x38

    if-ne v2, v3, :cond_a1

    .line 1026
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->UsernameCopied:I

    const-string v4, "UsernameCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    :cond_a1
    const/16 v3, 0x39

    if-ne v2, v3, :cond_a2

    .line 1028
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->HashtagCopied:I

    const-string v4, "HashtagCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    :cond_a2
    const/16 v3, 0x34

    if-ne v2, v3, :cond_a3

    .line 1030
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->MessageCopied:I

    const-string v4, "MessageCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    :cond_a3
    const/16 v3, 0x3b

    if-ne v2, v3, :cond_a4

    .line 1032
    sget v0, Lorg/telegram/messenger/R$raw;->voip_invite:I

    .line 1033
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->LinkCopied:I

    const-string v4, "LinkCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    .line 1035
    :cond_a4
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->TextCopied:I

    const-string v4, "TextCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    :goto_43
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v3, 0x1e

    invoke-virtual {v2, v0, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v2, 0xbb8

    .line 1038
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    const-wide/16 v11, 0x2

    .line 1039
    div-long/2addr v2, v11

    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1040
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_a5
    :goto_44
    const/4 v0, 0x0

    .line 1140
    :goto_45
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1141
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "undo_cancelColor"

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1142
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0x3a

    .line 1144
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1145
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1147
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1148
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const-wide/16 v2, 0x0

    cmp-long v4, v7, v2

    if-lez v4, :cond_a6

    .line 1150
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v3, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v2, v3, v7, v8}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1482
    :cond_a6
    :goto_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_a7
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    .line 1484
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->isMultilineSubInfo()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 1485
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1486
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_a8

    .line 1488
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :cond_a8
    const/16 v2, 0x10

    .line 1490
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 1491
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v2

    move/from16 p3, v0

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    invoke-virtual/range {p1 .. p6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1492
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    const/16 v2, 0x25

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto/16 :goto_49

    .line 1493
    :cond_a9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->hasSubInfo()Z

    move-result v2

    if-eqz v2, :cond_aa

    const/16 v2, 0x34

    .line 1494
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto/16 :goto_49

    .line 1495
    :cond_aa
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_b0

    .line 1496
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1497
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v3, v2

    if-gtz v3, :cond_ab

    .line 1499
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    :cond_ab
    const/16 v2, 0x10

    .line 1501
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1502
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v7, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v7

    invoke-virtual/range {p1 .. p6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1503
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_ad

    const/16 v4, 0x11

    if-eq v3, v4, :cond_ad

    const/16 v4, 0x12

    if-eq v3, v4, :cond_ad

    const/16 v4, 0x54

    if-eq v3, v4, :cond_ad

    const/16 v4, 0x56

    if-ne v3, v4, :cond_ac

    goto :goto_47

    :cond_ac
    const/16 v15, 0x1c

    goto :goto_48

    :cond_ad
    :goto_47
    const/16 v15, 0xe

    :goto_48
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    .line 1504
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_ae

    const/16 v4, 0x34

    .line 1505
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto :goto_49

    :cond_ae
    const/16 v4, 0x19

    if-ne v3, v4, :cond_af

    const/16 v0, 0x32

    .line 1507
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto :goto_49

    :cond_af
    if-eqz v0, :cond_b0

    const/16 v3, 0x8

    .line 1509
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    .line 1513
    :cond_b0
    :goto_49
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b4

    .line 1514
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1515
    iget-boolean v0, v1, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz v0, :cond_b1

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_4a

    :cond_b1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4a
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UndoView;->setEnterOffset(F)V

    .line 1516
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/Animator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1517
    iget-boolean v4, v1, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz v4, :cond_b2

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_4b

    :cond_b2
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_4b
    iget v6, v1, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v7, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v5, v5, v6

    aput v5, v2, v10

    if-eqz v4, :cond_b3

    const/4 v4, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_4c

    :cond_b3
    const/high16 v14, -0x40800000    # -1.0f

    const/4 v4, 0x1

    :goto_4c
    aput v14, v2, v4

    const-string v4, "enterOffset"

    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1518
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xb4

    .line 1519
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1520
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_b4
    return-void
.end method
