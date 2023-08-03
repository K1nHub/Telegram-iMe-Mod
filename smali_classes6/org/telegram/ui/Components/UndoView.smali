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

.field private currentInfoObject2:Ljava/lang/Object;

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

    .line 261
    invoke-direct {p0, p1, v0, v1, v0}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 269
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, v0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    const/4 v2, -0x1

    .line 130
    iput v2, v0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/4 v2, 0x1

    .line 227
    iput v2, v0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    const/16 v3, 0x8

    .line 1617
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1637
    iput v3, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    move-object/from16 v3, p4

    .line 270
    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v3, p2

    .line 271
    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move/from16 v3, p3

    .line 272
    iput-boolean v3, v0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    .line 274
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    .line 275
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 276
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 278
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/Components/UndoView$LinkMovementMethodMy;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/UndoView$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 279
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

    .line 281
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41500000    # 13.0f

    .line 282
    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 283
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 285
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 286
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 287
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 288
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    new-instance v7, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v7}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 289
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

    .line 291
    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 292
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 293
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const/high16 v9, -0x1000000

    or-int/2addr v8, v9

    const-string v10, "info1.**"

    invoke-virtual {v3, v10, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 294
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    or-int/2addr v8, v9

    const-string v9, "info2.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 295
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc12.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 296
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc11.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 297
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc10.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 298
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc9.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 299
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc8.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 300
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc7.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 301
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc6.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 302
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc5.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 303
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc4.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 304
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc3.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 305
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc2.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 306
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "luc1.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 307
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    const-string v9, "Oval.**"

    invoke-virtual {v3, v9, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 308
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

    .line 310
    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v8, 0xf

    .line 311
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 312
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v9, 0x1e

    const/16 v10, 0x1e

    const/16 v11, 0x13

    const/16 v12, 0xf

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    .line 315
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 316
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

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

    .line 317
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x15

    const/16 v16, 0xb

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    new-instance v9, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    .line 326
    sget v9, Lorg/telegram/messenger/R$drawable;->chats_undo:I

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 328
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

    .line 330
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    .line 331
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 332
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 333
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->Undo:I

    const-string v9, "Undo"

    invoke-static {v9, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/4 v11, -0x2

    const/4 v14, 0x6

    const/16 v16, 0x8

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
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

    .line 339
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    .line 340
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 341
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 342
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 343
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    const/16 v2, 0xc

    .line 346
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 347
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 348
    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 350
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/16 v1, 0xa

    .line 351
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 353
    sget-object v1, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x4

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private hasSubInfo()Z
    .locals 2

    .line 388
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->isSortingDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->isFoldersHidden()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->isSortingDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->isFoldersHidden()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 391
    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->isSortingDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->isFoldersHidden()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    sget v1, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-eq v0, v1, :cond_4

    const/16 v1, 0x55

    if-eq v0, v1, :cond_4

    const/16 v1, 0x58

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject2:Ljava/lang/Object;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Integer;

    .line 392
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isFoldersHidden()Z
    .locals 1

    .line 94
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/FiltersController;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden()Z

    move-result v0

    return v0
.end method

.method private isSortingDisabled()Z
    .locals 2

    .line 98
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/FiltersController;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isTooltipAction()Z
    .locals 5

    .line 368
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-eq v0, v2, :cond_3

    sget v3, Lcom/iMe/common/IdFabric$CustomType;->UNDO_ACTION_CHAT_UNARCHIVED_FEW:I

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    .line 371
    :cond_0
    sget v3, Lcom/iMe/common/IdFabric$CustomType;->UNDO_MOVE_TO_FOLDER:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    return v4

    :cond_1
    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    const/16 v3, 0x57

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2

    const/16 v3, 0x13

    if-eq v0, v3, :cond_2

    const/16 v3, 0x14

    if-eq v0, v3, :cond_2

    const/16 v3, 0x15

    if-eq v0, v3, :cond_2

    const/16 v3, 0x16

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x21

    if-eq v0, v2, :cond_2

    const/16 v2, 0x22

    if-eq v0, v2, :cond_2

    const/16 v2, 0x23

    if-eq v0, v2, :cond_2

    const/16 v2, 0x24

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x25

    if-eq v0, v2, :cond_2

    const/16 v2, 0x26

    if-eq v0, v2, :cond_2

    const/16 v2, 0x27

    if-eq v0, v2, :cond_2

    const/16 v2, 0x28

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4e

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x64

    if-eq v0, v2, :cond_2

    const/16 v2, 0x65

    if-eq v0, v2, :cond_2

    .line 375
    sget v2, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v0, v2, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    :goto_0
    return v1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 319
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->canUndo()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 322
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

    .line 545
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

    .line 666
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    if-eqz v0, :cond_0

    .line 667
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

    .line 665
    new-instance p2, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showWithAction$6(Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x1

    .line 661
    invoke-virtual {p0, p2, p2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 662
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;-><init>()V

    .line 663
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->msg_id:I

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 665
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

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->performHapticFeedback(II)Z

    return-void
.end method

.method private updatePosition()V
    .locals 2

    .line 1768
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

    .line 1769
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

    .line 1641
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1642
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1644
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

    .line 1646
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1647
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1649
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1651
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1774
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentInfoObject()Ljava/lang/Object;
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getEnterOffset()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1756
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    return v0
.end method

.method public hide(ZI)V
    .locals 8

    .line 412
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    .line 416
    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject2:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 417
    iput-boolean v1, p0, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    .line 418
    iget-object v2, p0, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 420
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 422
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    .line 424
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    .line 426
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 428
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    .line 430
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
    move v0, v1

    .line 431
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 432
    iget-object v4, p0, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 433
    iget v6, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-eqz v7, :cond_7

    if-ne v7, v2, :cond_6

    goto :goto_1

    :cond_6
    move v7, v1

    goto :goto_2

    :cond_7
    :goto_1
    move v7, v3

    :goto_2
    invoke-virtual {v6, v4, v5, v7, p1}, Lorg/telegram/messenger/MessagesController;->removeDialogAction(JZZ)V

    .line 434
    iget v6, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    invoke-virtual {p0, v4, v5, v6}, Lorg/telegram/ui/Components/UndoView;->onRemoveDialogAction(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_b

    .line 438
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-ne p2, v3, :cond_a

    new-array p2, v3, [Landroid/animation/Animator;

    new-array v3, v3, [F

    .line 440
    iget-boolean v4, p0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    move p1, v0

    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v4, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr p1, v0

    aput p1, v3, v1

    const-string p1, "enterOffset"

    invoke-static {p0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-virtual {v2, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0xfa

    .line 441
    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_4

    :cond_a
    const/4 p1, 0x3

    new-array p1, p1, [Landroid/animation/Animator;

    .line 443
    sget-object p2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v0, v3, [F

    const v4, 0x3f4ccccd    # 0.8f

    aput v4, v0, v1

    .line 444
    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, p1, v1

    sget-object p2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v3, [F

    aput v4, v0, v1

    .line 445
    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, p1, v3

    const/4 p2, 0x2

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 446
    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p1, p2

    .line 443
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0xb4

    .line 447
    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 449
    :goto_4
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 450
    new-instance p1, Lorg/telegram/ui/Components/UndoView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/UndoView$1;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 459
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_6

    .line 461
    :cond_b
    iget-boolean p2, p0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz p2, :cond_c

    goto :goto_5

    :cond_c
    move p1, v0

    :goto_5
    iget p2, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UndoView;->setEnterOffset(F)V

    const/4 p1, 0x4

    .line 462
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_d
    :goto_6
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 1738
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1739
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1740
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public isMultilineSubInfo()Z
    .locals 2

    .line 396
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

    .line 1657
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1658
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1660
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    .line 1662
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1663
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1665
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1666
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1668
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1671
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const-wide/16 v3, 0x0

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_2

    const/16 v5, 0x1b

    if-eq v0, v5, :cond_2

    const/16 v5, 0x1a

    if-eq v0, v5, :cond_2

    const/16 v5, 0x51

    if-eq v0, v5, :cond_2

    const/16 v5, 0x58

    if-ne v0, v5, :cond_c

    .line 1672
    :cond_2
    iget-wide v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    cmp-long v0, v5, v3

    const/4 v7, 0x0

    if-lez v0, :cond_3

    long-to-float v0, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    goto :goto_1

    :cond_3
    move v0, v7

    .line 1673
    :goto_1
    iget v5, p0, Lorg/telegram/ui/Components/UndoView;->prevSeconds:I

    if-eq v5, v0, :cond_5

    .line 1674
    iput v0, p0, Lorg/telegram/ui/Components/UndoView;->prevSeconds:I

    new-array v5, v2, [Ljava/lang/Object;

    .line 1675
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    const-string v0, "%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/UndoView;->timeLeftString:Ljava/lang/String;

    .line 1676
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_4

    .line 1677
    iput-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    .line 1678
    iput v1, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    .line 1681
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    .line 1682
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

    .line 1685
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v5, v0, v1

    if-gez v5, :cond_7

    const v5, 0x3dda740e

    add-float/2addr v0, v5

    .line 1686
    iput v0, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1688
    iput v1, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    goto :goto_2

    .line 1690
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->invalidate()V

    .line 1694
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 1696
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    const/16 v6, 0xa

    const v7, 0x4189999a    # 17.2f

    if-eqz v5, :cond_8

    iget v5, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpg-float v8, v5, v1

    if-gez v8, :cond_8

    .line 1697
    iget-object v8, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    int-to-float v9, v0

    sub-float v5, v1, v5

    mul-float/2addr v9, v5

    float-to-int v5, v9

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1698
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1699
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

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1700
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    invoke-virtual {v5, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1701
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1705
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_b

    .line 1706
    iget v5, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v8, v5, v1

    if-eqz v8, :cond_9

    .line 1707
    iget-object v8, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    int-to-float v9, v0

    mul-float/2addr v9, v5

    float-to-int v5, v9

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1709
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1710
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

    sub-float v8, v1, v8

    mul-float/2addr v6, v8

    sub-float/2addr v7, v6

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1711
    iget-object v5, p0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1712
    iget v5, p0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v1, v5, v1

    if-eqz v1, :cond_a

    .line 1713
    iget-object v1, p0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1715
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1720
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v0, -0x3c4c0000    # -360.0f

    iget-wide v8, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    long-to-float v1, v8

    const v5, 0x459c4000    # 5000.0f

    div-float/2addr v1, v5

    mul-float v8, v1, v0

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1723
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1724
    iget-wide v5, p0, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    sub-long v5, v0, v5

    .line 1725
    iget-wide v7, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    sub-long/2addr v7, v5

    iput-wide v7, p0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1726
    iput-wide v0, p0, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    cmp-long p1, v7, v3

    if-gtz p1, :cond_d

    .line 1728
    iget p1, p0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 1731
    :cond_d
    iget p1, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v0, 0x52

    if-eq p1, v0, :cond_e

    .line 1732
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->invalidate()V

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1629
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1630
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

    .line 401
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 402
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    .line 403
    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setColors(II)V
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object p2, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    const-string v0, "info1.**"

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 363
    iget-object p2, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v0, "info2.**"

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    return-void
.end method

.method public setEnterOffset(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1761
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1762
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    .line 1763
    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setEnterOffsetMargin(I)V
    .locals 0

    .line 1620
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    return-void
.end method

.method public setHideAnimationType(I)V
    .locals 0

    .line 1748
    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    return-void
.end method

.method public setInfoText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1744
    iput-object p1, p0, Lorg/telegram/ui/Components/UndoView;->infoText:Ljava/lang/CharSequence;

    return-void
.end method

.method public showError(Ljava/lang/CharSequence;)V
    .locals 9

    .line 86
    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/16 v2, 0x0

    const/16 v4, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showInfo(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/UndoView;->showInfo(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showInfo(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 9

    .line 82
    sget v0, Lorg/telegram/messenger/R$raw;->info:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/16 v2, 0x0

    const/16 v4, 0x12

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

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

    .line 479
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    .line 491
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 492
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 493
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

    .line 487
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

    .line 475
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

    .line 483
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 21
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

    .line 497
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v7

    const/16 v8, 0x34

    const/16 v9, 0x3a

    if-nez v7, :cond_1

    iget v7, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    sget v10, Lcom/iMe/common/IdFabric$CustomType;->UNDO_IMAGE_COPIED:I

    if-eq v7, v10, :cond_0

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

    .line 500
    :cond_1
    iget-object v7, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    .line 501
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/4 v7, 0x1

    .line 503
    iput-boolean v7, v1, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    .line 504
    iput-object v5, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    .line 505
    iput-object v6, v1, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    .line 506
    iput-object v0, v1, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    const/4 v10, 0x0

    .line 507
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 508
    iput v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const-wide/16 v13, 0x1388

    .line 509
    iput-wide v13, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 510
    iput-object v3, v1, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    .line 511
    iput-object v4, v1, Lorg/telegram/ui/Components/UndoView;->currentInfoObject2:Ljava/lang/Object;

    .line 512
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v1, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    .line 513
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->Undo:I

    const-string v15, "Undo"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 516
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 517
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 518
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41700000    # 15.0f

    invoke-virtual {v13, v7, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 519
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/16 v8, 0x33

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 524
    iget-object v8, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 525
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    iput v13, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 527
    iget-object v8, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    .line 528
    iput v13, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v13, 0xd

    .line 529
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    iput v13, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 530
    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 532
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 533
    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v15, 0x13

    .line 534
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 535
    iput v10, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v10, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v15, 0x3

    .line 536
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v9, 0x36

    .line 537
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v9, -0x2

    .line 538
    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 540
    iget-object v9, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMinHeight(I)V

    const/4 v9, 0x0

    if-nez v5, :cond_3

    if-eqz v6, :cond_4

    .line 544
    :cond_3
    sget v15, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v2, v15, :cond_5

    .line 545
    :cond_4
    new-instance v15, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda1;

    invoke-direct {v15, v1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v1, v15}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 548
    :cond_5
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    sget-object v15, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda4;

    invoke-virtual {v1, v15}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 552
    :goto_0
    iget-object v15, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 554
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->isTooltipAction()Z

    move-result v15

    const-string v14, ""

    move-object/from16 v16, v8

    const/4 v7, 0x2

    const/16 v8, 0x24

    if-eqz v15, :cond_67

    .line 562
    sget v0, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v2, v0, :cond_6

    .line 563
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 564
    sget v0, Lorg/telegram/messenger/R$string;->SoundAdded:I

    const-string v2, "SoundAdded"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 565
    sget v2, Lorg/telegram/messenger/R$string;->SoundAddedSubtitle:I

    const-string v3, "SoundAddedSubtitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 566
    iput-object v9, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    .line 567
    sget v3, Lorg/telegram/messenger/R$raw;->sound_download:I

    const-wide/16 v4, 0xfa0

    .line 568
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    move-object v9, v2

    goto/16 :goto_2b

    :cond_6
    const/16 v0, 0x4a

    if-ne v2, v0, :cond_8

    .line 570
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 571
    sget v0, Lorg/telegram/messenger/R$string;->ReportChatSent:I

    const-string v2, "ReportChatSent"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 572
    sget v2, Lorg/telegram/messenger/R$string;->ReportSentInfo:I

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "ReportSentInfo"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_7

    .line 575
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

    .line 578
    sget v3, Lorg/telegram/messenger/R$raw;->ic_admin:I

    const-wide/16 v4, 0xfa0

    .line 579
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2b

    :cond_8
    const/16 v0, 0x22

    if-ne v2, v0, :cond_a

    .line 581
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 582
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 583
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 584
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

    .line 586
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

    .line 590
    :goto_1
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/16 v4, 0xc

    .line 591
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 592
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 593
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 594
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v3, 0xbb8

    .line 595
    iput-wide v3, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    move-object v0, v2

    :goto_2
    move v3, v10

    goto/16 :goto_2b

    :cond_a
    const/16 v0, 0x2c

    if-ne v2, v0, :cond_e

    .line 597
    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 598
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_c

    .line 599
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 600
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 601
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

    .line 603
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

    .line 606
    :cond_c
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 607
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 608
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

    .line 610
    sget v0, Lorg/telegram/messenger/R$string;->VoipChatChatJoined:I

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v5, v10

    const-string v2, "VoipChatChatJoined"

    invoke-static {v2, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 615
    :goto_3
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/16 v4, 0xc

    .line 616
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 617
    check-cast v3, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 618
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 619
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v2, 0xbb8

    .line 620
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2

    :cond_e
    const/16 v0, 0x25

    if-ne v2, v0, :cond_11

    .line 622
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/16 v2, 0xc

    .line 623
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 625
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_f

    .line 626
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 627
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 628
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 629
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 631
    :cond_f
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 632
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 633
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 634
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 636
    :goto_4
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 637
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 638
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

    .line 640
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserChanged:I

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v10

    const-string v0, "VoipGroupUserChanged"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 644
    :goto_5
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v5, 0xbb8

    .line 645
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2

    :cond_11
    const-wide/16 v5, 0xbb8

    const/16 v0, 0x21

    if-ne v2, v0, :cond_12

    .line 647
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupCopyInviteLinkCopied:I

    const-string v2, "VoipGroupCopyInviteLinkCopied"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 649
    sget v3, Lorg/telegram/messenger/R$raw;->voip_invite:I

    .line 650
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2b

    :cond_12
    const/16 v0, 0x4d

    if-ne v2, v0, :cond_13

    .line 652
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    .line 654
    sget v3, Lorg/telegram/messenger/R$raw;->payment_success:I

    const-wide/16 v5, 0x1388

    .line 655
    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 656
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_63

    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_63

    .line 657
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    .line 658
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 659
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 660
    new-instance v4, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    :cond_13
    const/16 v0, 0x1e

    if-ne v2, v0, :cond_16

    .line 674
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_14

    .line 675
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 676
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 678
    :cond_14
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_15

    move-object v0, v14

    goto :goto_6

    .line 679
    :cond_15
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 681
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

    .line 683
    sget v3, Lorg/telegram/messenger/R$raw;->voip_muted:I

    const-wide/16 v4, 0xbb8

    .line 684
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2b

    :cond_16
    const/16 v0, 0x23

    if-ne v2, v0, :cond_19

    .line 687
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_17

    .line 688
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 689
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 690
    :cond_17
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_18

    .line 691
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 692
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_7

    :cond_18
    move-object v0, v14

    .line 696
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

    .line 698
    sget v3, Lorg/telegram/messenger/R$raw;->voip_muted:I

    const-wide/16 v4, 0xbb8

    .line 699
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2b

    :cond_19
    const/16 v0, 0x1f

    if-ne v2, v0, :cond_1b

    .line 702
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1a

    .line 703
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 704
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 706
    :cond_1a
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 707
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 709
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

    .line 711
    sget v3, Lorg/telegram/messenger/R$raw;->voip_unmuted:I

    const-wide/16 v4, 0xbb8

    .line 712
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2b

    :cond_1b
    const/16 v0, 0x26

    if-ne v2, v0, :cond_1d

    .line 714
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1c

    .line 715
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 716
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

    .line 718
    :cond_1c
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupYouCanNowSpeak:I

    const-string v2, "VoipGroupYouCanNowSpeak"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 721
    :goto_9
    sget v3, Lorg/telegram/messenger/R$raw;->voip_allow_talk:I

    const-wide/16 v4, 0xbb8

    .line 722
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2b

    :cond_1d
    const/16 v0, 0x2a

    if-ne v2, v0, :cond_1f

    .line 724
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 725
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 726
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelSoundMuted:I

    const-string v2, "VoipChannelSoundMuted"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_a

    .line 728
    :cond_1e
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupSoundMuted:I

    const-string v2, "VoipGroupSoundMuted"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 731
    :goto_a
    sget v3, Lorg/telegram/messenger/R$raw;->ic_mute:I

    const-wide/16 v4, 0xbb8

    .line 732
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2b

    :cond_1f
    const/16 v0, 0x2b

    if-ne v2, v0, :cond_21

    .line 734
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 735
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 736
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelSoundUnmuted:I

    const-string v2, "VoipChannelSoundUnmuted"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_b

    .line 738
    :cond_20
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupSoundUnmuted:I

    const-string v2, "VoipGroupSoundUnmuted"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 741
    :goto_b
    sget v3, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    const-wide/16 v4, 0xbb8

    .line 742
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2b

    .line 743
    :cond_21
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v5, 0x27

    if-eq v0, v5, :cond_61

    const/16 v5, 0x64

    if-ne v0, v5, :cond_22

    goto/16 :goto_29

    :cond_22
    const/16 v5, 0x28

    if-eq v0, v5, :cond_5e

    const/16 v5, 0x65

    if-ne v0, v5, :cond_23

    goto/16 :goto_26

    :cond_23
    if-ne v2, v8, :cond_25

    .line 769
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_24

    .line 770
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 771
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 773
    :cond_24
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 774
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 776
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

    .line 778
    sget v3, Lorg/telegram/messenger/R$raw;->voip_unmuted:I

    const-wide/16 v4, 0xbb8

    .line 779
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2b

    :cond_25
    const/16 v5, 0x20

    if-ne v2, v5, :cond_27

    .line 782
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_26

    .line 783
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 784
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 786
    :cond_26
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 787
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 789
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

    .line 791
    sget v3, Lorg/telegram/messenger/R$raw;->voip_group_removed:I

    const-wide/16 v4, 0xbb8

    .line 792
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2b

    :cond_27
    const/16 v5, 0x9

    if-eq v2, v5, :cond_5c

    const/16 v5, 0xa

    if-ne v2, v5, :cond_28

    goto/16 :goto_24

    :cond_28
    const/16 v5, 0x8

    if-ne v2, v5, :cond_29

    .line 803
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 804
    sget v2, Lorg/telegram/messenger/R$string;->NowInContacts:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    const-string v0, "NowInContacts"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 806
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_2b

    :cond_29
    const/16 v5, 0x57

    if-ne v2, v5, :cond_2a

    .line 808
    sget v0, Lorg/telegram/messenger/R$string;->ProxyAddedSuccess:I

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 810
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_2b

    :cond_2a
    const/16 v5, 0x16

    if-ne v2, v5, :cond_30

    .line 812
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-nez v3, :cond_2b

    .line 814
    sget v0, Lorg/telegram/messenger/R$string;->MainProfilePhotoSetHint:I

    const-string v2, "MainProfilePhotoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 816
    :cond_2b
    sget v0, Lorg/telegram/messenger/R$string;->MainProfileVideoSetHint:I

    const-string v2, "MainProfileVideoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 819
    :cond_2c
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v4, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 820
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_2e

    if-nez v3, :cond_2d

    .line 822
    sget v0, Lorg/telegram/messenger/R$string;->MainChannelProfilePhotoSetHint:I

    const-string v2, "MainChannelProfilePhotoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 824
    :cond_2d
    sget v0, Lorg/telegram/messenger/R$string;->MainChannelProfileVideoSetHint:I

    const-string v2, "MainChannelProfileVideoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_2e
    if-nez v3, :cond_2f

    .line 828
    sget v0, Lorg/telegram/messenger/R$string;->MainGroupProfilePhotoSetHint:I

    const-string v2, "MainGroupProfilePhotoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 830
    :cond_2f
    sget v0, Lorg/telegram/messenger/R$string;->MainGroupProfileVideoSetHint:I

    const-string v2, "MainGroupProfileVideoSetHint"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 835
    :goto_e
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_2b

    :cond_30
    const/16 v5, 0x17

    if-ne v2, v5, :cond_31

    .line 837
    sget v0, Lorg/telegram/messenger/R$string;->ChatWasMovedToMainList:I

    const-string v2, "ChatWasMovedToMainList"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 839
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_2b

    :cond_31
    const/4 v5, 0x6

    if-ne v2, v5, :cond_34

    if-eqz v3, :cond_32

    .line 841
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    sget v0, Lorg/telegram/messenger/R$string;->hidden_chats_unpinned:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_32
    sget v0, Lorg/telegram/messenger/R$string;->ArchiveHidden:I

    const-string v2, "ArchiveHidden"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    if-eqz v3, :cond_33

    .line 842
    move-object v2, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_33

    sget v2, Lorg/telegram/messenger/R$string;->hidden_chats_swipe_for_hidden_chats:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_33
    sget v2, Lorg/telegram/messenger/R$string;->ArchiveHiddenInfo:I

    const-string v3, "ArchiveHiddenInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_10
    move-object v9, v2

    .line 843
    sget v3, Lorg/telegram/messenger/R$raw;->chats_swipearchive:I

    const/16 v8, 0x30

    goto/16 :goto_2b

    :cond_34
    const/16 v5, 0xd

    if-ne v0, v5, :cond_35

    .line 846
    sget v0, Lorg/telegram/messenger/R$string;->QuizWellDone:I

    const-string v2, "QuizWellDone"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 847
    sget v2, Lorg/telegram/messenger/R$string;->QuizWellDoneInfo:I

    const-string v3, "QuizWellDoneInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 848
    sget v3, Lorg/telegram/messenger/R$raw;->wallet_congrats:I

    :goto_11
    const/16 v8, 0x2c

    goto/16 :goto_2b

    :cond_35
    const/16 v5, 0xe

    if-ne v0, v5, :cond_36

    .line 851
    sget v0, Lorg/telegram/messenger/R$string;->QuizWrongAnswer:I

    const-string v2, "QuizWrongAnswer"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 852
    sget v2, Lorg/telegram/messenger/R$string;->QuizWrongAnswerInfo:I

    const-string v3, "QuizWrongAnswerInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 853
    sget v3, Lorg/telegram/messenger/R$raw;->wallet_science:I

    goto :goto_11

    :cond_36
    const/4 v0, 0x7

    if-ne v2, v0, :cond_3b

    if-eqz v3, :cond_37

    .line 856
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_12

    :cond_37
    move v0, v10

    :goto_12
    if-eqz v0, :cond_38

    .line 857
    sget v2, Lorg/telegram/messenger/R$string;->hidden_chats_pinned:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_38
    sget v2, Lorg/telegram/messenger/R$string;->ArchivePinned:I

    const-string v3, "ArchivePinned"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_13
    if-nez v0, :cond_3a

    .line 858
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->isSortingDisabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->isFoldersHidden()Z

    move-result v0

    if-nez v0, :cond_39

    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 859
    :cond_39
    sget v0, Lorg/telegram/messenger/R$string;->ArchivePinnedInfo:I

    const-string v3, "ArchivePinnedInfo"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 863
    :cond_3a
    sget v3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    goto/16 :goto_28

    :cond_3b
    const/16 v0, 0x14

    if-eq v2, v0, :cond_47

    const/16 v0, 0x15

    if-eq v2, v0, :cond_47

    .line 864
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->UNDO_MOVE_TO_FOLDER:I

    if-ne v2, v0, :cond_3c

    goto/16 :goto_19

    :cond_3c
    const/16 v0, 0x13

    if-ne v2, v0, :cond_3d

    .line 931
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoText:Ljava/lang/CharSequence;

    .line 933
    sget v3, Lorg/telegram/messenger/R$raw;->ic_delete:I

    goto/16 :goto_2b

    :cond_3d
    const/16 v0, 0x52

    if-ne v2, v0, :cond_3f

    .line 935
    move-object v0, v3

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 936
    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_3e

    sget v0, Lorg/telegram/messenger/R$string;->AttachMediaVideoDeselected:I

    const-string v2, "AttachMediaVideoDeselected"

    goto :goto_14

    :cond_3e
    sget v0, Lorg/telegram/messenger/R$string;->AttachMediaPhotoDeselected:I

    const-string v2, "AttachMediaPhotoDeselected"

    :goto_14
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_3f
    const/16 v0, 0x4e

    if-eq v2, v0, :cond_44

    const/16 v0, 0x4f

    if-ne v2, v0, :cond_40

    goto :goto_16

    :cond_40
    const/4 v0, 0x3

    if-ne v2, v0, :cond_41

    .line 953
    sget v0, Lorg/telegram/messenger/R$string;->ChatArchived:I

    const-string v2, "ChatArchived"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 955
    :cond_41
    sget v0, Lorg/telegram/messenger/R$string;->ChatsArchived:I

    const-string v2, "ChatsArchived"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 957
    :goto_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->isSortingDisabled()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->isFoldersHidden()Z

    move-result v2

    if-nez v2, :cond_42

    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 958
    :cond_42
    sget v2, Lorg/telegram/messenger/R$string;->ChatArchivedInfo:I

    const-string v3, "ChatArchivedInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 962
    :cond_43
    sget v3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    goto/16 :goto_2b

    .line 940
    :cond_44
    :goto_16
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_45

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "PinnedDialogsCount"

    .line 942
    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_45
    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "UnpinnedDialogsCount"

    .line 944
    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 947
    :goto_17
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_46

    sget v2, Lorg/telegram/messenger/R$raw;->ic_pin:I

    goto :goto_18

    :cond_46
    sget v2, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    :goto_18
    move v3, v2

    .line 948
    instance-of v2, v4, Ljava/lang/Integer;

    if-eqz v2, :cond_63

    .line 949
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_2b

    .line 871
    :cond_47
    :goto_19
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->UNDO_MOVE_TO_FOLDER:I

    if-ne v2, v0, :cond_48

    .line 872
    check-cast v4, [Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 873
    aget-object v5, v4, v10

    const/4 v6, 0x1

    .line 874
    aget-object v4, v4, v6

    move-object v13, v5

    move-object v5, v9

    move-object v6, v5

    goto :goto_1b

    .line 876
    :cond_48
    instance-of v5, v4, Lcom/iMe/storage/domain/model/topics/TopicModel;

    if-eqz v5, :cond_4b

    .line 877
    check-cast v4, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 878
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 879
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1a

    .line 880
    :cond_49
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 881
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v4

    invoke-static {v4}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/ui/topics/TopicInfo;->getTitleResId()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1a

    :cond_4a
    move-object v4, v9

    :goto_1a
    move-object v5, v4

    move-object v4, v9

    move-object v6, v4

    move-object v13, v6

    goto :goto_1b

    .line 884
    :cond_4b
    check-cast v4, Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-object v6, v4

    move-object v4, v9

    move-object v5, v4

    move-object v13, v5

    :goto_1b
    const-wide/16 v17, 0x0

    cmp-long v15, v11, v17

    if-eqz v15, :cond_56

    .line 890
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 891
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 892
    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    .line 894
    :cond_4c
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 895
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-ne v2, v0, :cond_4d

    .line 898
    sget v0, Lorg/telegram/messenger/R$string;->moved_to_folder:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v10

    iget-object v3, v13, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    iget-object v3, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    aput-object v3, v5, v7

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_22

    :cond_4d
    const/16 v0, 0x14

    if-ne v2, v0, :cond_4f

    .line 901
    sget v0, Lorg/telegram/messenger/R$string;->FilterUserAddedToExisting:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v10

    if-eqz v5, :cond_4e

    goto :goto_1c

    :cond_4e
    iget-object v5, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    :goto_1c
    const/4 v3, 0x1

    aput-object v5, v4, v3

    const-string v3, "FilterUserAddedToExisting"

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_22

    .line 903
    :cond_4f
    sget v0, Lorg/telegram/messenger/R$string;->FilterUserRemovedFrom:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v10

    if-eqz v5, :cond_50

    goto :goto_1d

    :cond_50
    iget-object v5, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    :goto_1d
    const/4 v3, 0x1

    aput-object v5, v4, v3

    const-string v3, "FilterUserRemovedFrom"

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_22

    .line 906
    :cond_51
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-ne v2, v0, :cond_52

    .line 909
    sget v0, Lorg/telegram/messenger/R$string;->moved_to_folder:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v5, v10

    iget-object v3, v13, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    iget-object v3, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    aput-object v3, v5, v7

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_22

    :cond_52
    const/16 v0, 0x14

    if-ne v2, v0, :cond_54

    .line 912
    sget v0, Lorg/telegram/messenger/R$string;->FilterChatAddedToExisting:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v4, v10

    if-eqz v5, :cond_53

    goto :goto_1e

    :cond_53
    iget-object v5, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    :goto_1e
    const/4 v3, 0x1

    aput-object v5, v4, v3

    const-string v3, "FilterChatAddedToExisting"

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_22

    .line 914
    :cond_54
    sget v0, Lorg/telegram/messenger/R$string;->FilterChatRemovedFrom:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v4, v10

    if-eqz v5, :cond_55

    goto :goto_1f

    :cond_55
    iget-object v5, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    :goto_1f
    const/4 v3, 0x1

    aput-object v5, v4, v3

    const-string v3, "FilterChatRemovedFrom"

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_22

    :cond_56
    if-ne v2, v0, :cond_57

    .line 920
    sget v0, Lorg/telegram/messenger/R$string;->moved_to_folder:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v6, v10, [Ljava/lang/Object;

    const-string v11, "Chats"

    invoke-static {v11, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v10

    iget-object v3, v13, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    iget-object v3, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    aput-object v3, v5, v7

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_22

    :cond_57
    const/16 v0, 0x14

    if-ne v2, v0, :cond_59

    .line 923
    sget v0, Lorg/telegram/messenger/R$string;->FilterChatsAddedToExisting:I

    new-array v4, v7, [Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v11, v10, [Ljava/lang/Object;

    const-string v12, "ChatsSelected"

    invoke-static {v12, v3, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v10

    if-eqz v5, :cond_58

    goto :goto_20

    :cond_58
    iget-object v5, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    :goto_20
    const/4 v3, 0x1

    aput-object v5, v4, v3

    const-string v3, "FilterChatsAddedToExisting"

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_22

    .line 925
    :cond_59
    sget v0, Lorg/telegram/messenger/R$string;->FilterChatsRemovedFrom:I

    new-array v4, v7, [Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v11, v10, [Ljava/lang/Object;

    const-string v12, "ChatsSelected"

    invoke-static {v12, v3, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v10

    if-eqz v5, :cond_5a

    goto :goto_21

    :cond_5a
    iget-object v5, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    :goto_21
    const/4 v3, 0x1

    aput-object v5, v4, v3

    const-string v3, "FilterChatsRemovedFrom"

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_22
    const/16 v3, 0x14

    if-ne v2, v3, :cond_5b

    .line 929
    sget v2, Lorg/telegram/messenger/R$raw;->folder_in:I

    goto :goto_23

    :cond_5b
    sget v2, Lorg/telegram/messenger/R$raw;->folder_out:I

    :goto_23
    move v3, v2

    goto/16 :goto_2b

    .line 794
    :cond_5c
    :goto_24
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5d

    .line 796
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

    goto :goto_25

    :cond_5d
    const/4 v3, 0x1

    .line 798
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

    .line 801
    :goto_25
    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_2b

    :cond_5e
    :goto_26
    const/16 v2, 0x28

    if-ne v0, v2, :cond_5f

    .line 749
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupAudioRecordSaved:I

    const-string v2, "VoipGroupAudioRecordSaved"

    goto :goto_27

    :cond_5f
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVideoRecordSaved:I

    const-string v2, "VoipGroupVideoRecordSaved"

    :goto_27
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 751
    sget v3, Lorg/telegram/messenger/R$raw;->voip_record_saved:I

    const-wide/16 v4, 0xfa0

    .line 752
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 753
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v4}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 754
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, "**"

    .line 755
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "**"

    .line 756
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v4, :cond_60

    if-ltz v0, :cond_60

    if-eq v4, v0, :cond_60

    add-int/lit8 v5, v0, 0x2

    .line 758
    invoke-virtual {v2, v0, v5, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v4, 0x2

    .line 759
    invoke-virtual {v2, v4, v5, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 761
    :try_start_0
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tg://openmessage?user_id="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    sub-int/2addr v0, v7

    const/16 v6, 0x21

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_28

    :catch_0
    move-exception v0

    .line 763
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_60
    :goto_28
    move-object v0, v2

    goto :goto_2b

    :cond_61
    :goto_29
    const/16 v2, 0x27

    if-ne v0, v2, :cond_62

    .line 744
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupAudioRecordStarted:I

    const-string v2, "VoipGroupAudioRecordStarted"

    goto :goto_2a

    :cond_62
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVideoRecordStarted:I

    const-string v2, "VoipGroupVideoRecordStarted"

    :goto_2a
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 746
    sget v3, Lorg/telegram/messenger/R$raw;->voip_record_start:I

    const-wide/16 v4, 0xbb8

    .line 747
    iput-wide v4, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 965
    :cond_63
    :goto_2b
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_64

    .line 970
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v3, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 971
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    .line 972
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    .line 973
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 975
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 977
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 978
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const/16 v2, 0x8

    goto :goto_2c

    .line 981
    :cond_64
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2c
    if-eqz v9, :cond_65

    const/16 v3, 0x3a

    .line 985
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    move-object/from16 v5, v16

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x6

    .line 986
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 987
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 988
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 989
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 990
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 992
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 993
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x8

    goto :goto_2d

    :cond_65
    move-object/from16 v5, v16

    const/16 v2, 0x3a

    .line 995
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0xd

    .line 996
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x8

    .line 997
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 998
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 999
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1000
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1003
    :goto_2d
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_66
    :goto_2e
    const/16 v6, 0xe

    goto/16 :goto_4c

    :cond_67
    move-object/from16 v5, v16

    .line 1004
    iget v15, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    sget v9, Lcom/iMe/common/IdFabric$CustomType;->UNDO_IMAGE_COPIED:I

    if-eq v15, v9, :cond_9b

    const/16 v7, 0x2d

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x2e

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x2f

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x34

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x35

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x36

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x37

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x38

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x39

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x3a

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x3b

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x3c

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x47

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x46

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x4b

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x4c

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x29

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x4e

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x4f

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x3d

    if-eq v15, v7, :cond_9b

    const/16 v7, 0x50

    if-ne v15, v7, :cond_68

    goto/16 :goto_4d

    :cond_68
    const/16 v7, 0x18

    if-eq v15, v7, :cond_98

    const/16 v7, 0x19

    if-ne v15, v7, :cond_69

    goto/16 :goto_49

    :cond_69
    const/16 v7, 0xb

    if-ne v15, v7, :cond_6a

    .line 1259
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 1261
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AuthAnotherClientOk:I

    const-string v4, "AuthAnotherClientOk"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {v2, v3, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v2, 0x3a

    .line 1264
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x6

    .line 1265
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1266
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1268
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1269
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1271
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1272
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1273
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1274
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1276
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1277
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_2e

    :cond_6a
    const/16 v7, 0xf

    const/16 v9, 0x1a

    if-ne v15, v7, :cond_6c

    const-wide/16 v2, 0x2710

    .line 1279
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1280
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    const-string v3, "Open"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->FilterAvailableTitle:I

    const-string v3, "FilterAvailableTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1282
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->filter_new:I

    invoke-virtual {v0, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1283
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

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x3a

    .line 1285
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1286
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x6

    .line 1287
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1289
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1290
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1292
    sget v0, Lorg/telegram/messenger/R$string;->FilterAvailableText:I

    const-string v2, "FilterAvailableText"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1293
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2a

    .line 1294
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1295
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v4, :cond_6b

    if-ltz v0, :cond_6b

    if-eq v4, v0, :cond_6b

    add-int/lit8 v3, v0, 0x1

    .line 1297
    invoke-virtual {v2, v0, v3, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v4, 0x1

    .line 1298
    invoke-virtual {v2, v4, v3, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1299
    new-instance v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string v5, "tg://settings/folders"

    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1301
    :cond_6b
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1303
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1304
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1305
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1306
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1307
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1309
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1310
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_2e

    :cond_6c
    const/16 v7, 0x10

    if-eq v15, v7, :cond_93

    const/16 v7, 0x11

    if-ne v15, v7, :cond_6d

    goto/16 :goto_44

    :cond_6d
    const/16 v7, 0x12

    if-ne v15, v7, :cond_74

    if-eqz v4, :cond_6e

    .line 1363
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2f

    :cond_6e
    move v0, v10

    .line 1364
    :goto_2f
    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v3, 0xfa0

    .line 1365
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x32

    mul-int/lit16 v4, v4, 0x640

    const/16 v7, 0x2710

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1366
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1367
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1368
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_6f

    move v3, v10

    goto :goto_30

    :cond_6f
    const/16 v3, 0x8

    :goto_30
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1371
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_70

    move v3, v10

    goto :goto_31

    :cond_70
    const/16 v3, 0x8

    :goto_31
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0x3a

    .line 1372
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz v6, :cond_71

    .line 1375
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0x3e

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_32

    :cond_71
    const/16 v2, 0x8

    .line 1377
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_32
    const/4 v2, 0x6

    .line 1378
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x7

    .line 1379
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v2, -0x1

    .line 1380
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x33

    .line 1382
    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x8

    .line 1383
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v0, :cond_72

    const/16 v3, 0x13

    .line 1386
    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1387
    iput v10, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v10, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1389
    :cond_72
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1392
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1393
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_73

    goto :goto_33

    :cond_73
    sget v0, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    :goto_33
    invoke-virtual {v2, v0, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1394
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1395
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1397
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v2}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_2e

    :cond_74
    const/16 v7, 0xc

    if-ne v15, v7, :cond_76

    .line 1399
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ColorThemeChanged:I

    const-string v3, "ColorThemeChanged"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->toast_pallete:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    const/16 v2, 0x3a

    .line 1402
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x30

    .line 1403
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x6

    .line 1404
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1406
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x30

    .line 1407
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1409
    sget v0, Lorg/telegram/messenger/R$string;->ColorThemeChangedInfo:I

    const-string v2, "ColorThemeChangedInfo"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1410
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2a

    .line 1411
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1412
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v4, :cond_75

    if-ltz v0, :cond_75

    if-eq v4, v0, :cond_75

    add-int/lit8 v3, v0, 0x1

    .line 1414
    invoke-virtual {v2, v0, v3, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v4, 0x1

    .line 1415
    invoke-virtual {v2, v4, v3, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1416
    new-instance v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string v5, "tg://settings/themes"

    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1418
    :cond_75
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1419
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1420
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1421
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1422
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1423
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1424
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2e

    :cond_76
    const/16 v7, 0x54

    if-ne v15, v7, :cond_77

    .line 1426
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1427
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1428
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1429
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->UnlockPremiumTranscriptionHint:I

    const-string v3, "UnlockPremiumTranscriptionHint"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->unlock_premium_transcription_hint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1431
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1432
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->voice_to_text:I

    invoke-virtual {v0, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1433
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1434
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1436
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PremiumMore:I

    const-string v3, "PremiumMore"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x3a

    .line 1437
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1438
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

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x6

    .line 1439
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, -0x2

    .line 1440
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1442
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1443
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1444
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1445
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1446
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2e

    :cond_77
    const/16 v7, 0x55

    if-ne v15, v7, :cond_78

    .line 1448
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1449
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1450
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1451
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SwipeToReplyHint:I

    const-string v3, "SwipeToReplyHint"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1452
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1453
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->hint_swipe_reply:I

    const/16 v3, 0x40

    const/16 v4, 0x40

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1454
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1455
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1457
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1458
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SwipeToReplyHintMessage:I

    const-string v3, "SwipeToReplyHintMessage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x3a

    .line 1460
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1461
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

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x6

    .line 1462
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, -0x2

    .line 1463
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1465
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1466
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2e

    :cond_78
    const/4 v7, 0x2

    if-eq v15, v7, :cond_89

    const/4 v7, 0x4

    if-eq v15, v7, :cond_89

    const/16 v7, 0x17

    if-eq v15, v7, :cond_89

    .line 1467
    sget v7, Lcom/iMe/common/IdFabric$CustomType;->UNDO_ACTION_CHAT_UNARCHIVED_FEW:I

    if-ne v15, v7, :cond_79

    goto/16 :goto_3a

    :cond_79
    const/16 v6, 0x52

    if-ne v2, v6, :cond_7e

    const/16 v2, 0x3a

    .line 1495
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1497
    move-object v0, v3

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1498
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v3, :cond_7a

    sget v3, Lorg/telegram/messenger/R$string;->AttachMediaVideoDeselected:I

    const-string v4, "AttachMediaVideoDeselected"

    goto :goto_34

    :cond_7a
    sget v3, Lorg/telegram/messenger/R$string;->AttachMediaPhotoDeselected:I

    const-string v4, "AttachMediaPhotoDeselected"

    :goto_34
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1499
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1500
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1501
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1502
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1504
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1505
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1506
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v2, :cond_7b

    .line 1507
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2e

    .line 1508
    :cond_7b
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_7d

    .line 1509
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IIZ)V

    .line 1510
    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_7c

    .line 1511
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vthumb://"

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

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2e

    .line 1513
    :cond_7c
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumb://"

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

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2e

    .line 1516
    :cond_7d
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2e

    :cond_7e
    const/16 v2, 0x2d

    .line 1519
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0xd

    .line 1520
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1521
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1523
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41700000    # 15.0f

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1524
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1525
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1526
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1527
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1529
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v6, 0x58

    if-ne v2, v6, :cond_81

    .line 1530
    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 1531
    move-object v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_7f

    .line 1533
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v6, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    const/16 v6, 0x30

    .line 1535
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1536
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v6, 0x6

    .line 1537
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1539
    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x30

    .line 1540
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1541
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1543
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->FolderLinkDeletedTitle:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v10

    const-string v2, "FolderLinkDeletedTitle"

    invoke-static {v2, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1544
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1546
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1547
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "FolderLinkDeletedSubtitle"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 1549
    :cond_7f
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1550
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->FolderLinkDeleted:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    if-nez v2, :cond_80

    move-object v2, v14

    :cond_80
    const/16 v5, 0x2731

    const/16 v7, 0x2a

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v10

    const-string v2, "FolderLinkDeleted"

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    :cond_81
    const/16 v3, 0x51

    if-eq v2, v3, :cond_86

    if-eqz v2, :cond_86

    if-ne v2, v9, :cond_82

    goto :goto_35

    :cond_82
    const/16 v3, 0x1b

    if-ne v2, v3, :cond_83

    .line 1555
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChatsDeletedUndo:I

    const-string v4, "ChatsDeletedUndo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 1557
    :cond_83
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 1558
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v3, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1559
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_84

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_84

    .line 1560
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelDeletedUndo:I

    const-string v4, "ChannelDeletedUndo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 1562
    :cond_84
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->GroupDeletedUndo:I

    const-string v4, "GroupDeletedUndo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 1565
    :cond_85
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChatDeletedUndo:I

    const-string v4, "ChatDeletedUndo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 1553
    :cond_86
    :goto_35
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->HistoryClearedUndo:I

    const-string v4, "HistoryClearedUndo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1568
    :goto_36
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v3, 0x51

    if-eq v2, v3, :cond_66

    move v2, v10

    .line 1569
    :goto_37
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_66

    .line 1570
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-eqz v6, :cond_88

    if-ne v6, v9, :cond_87

    goto :goto_38

    :cond_87
    move v6, v10

    goto :goto_39

    :cond_88
    :goto_38
    const/4 v6, 0x1

    :goto_39
    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->addDialogAction(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_89
    :goto_3a
    const/16 v0, 0x17

    if-ne v15, v0, :cond_8b

    .line 1470
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_8a

    sget v2, Lorg/telegram/messenger/R$string;->hidden_chats_undo_chat_unhidden_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    :cond_8a
    sget v2, Lorg/telegram/messenger/R$string;->ChatWasMovedToMainList:I

    const-string v3, "ChatWasMovedToMainList"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_3b
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3c
    const/16 v2, 0x3a

    goto :goto_3f

    :cond_8b
    const/4 v4, 0x2

    if-ne v2, v4, :cond_8d

    .line 1473
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_8c

    sget v2, Lorg/telegram/messenger/R$string;->hidden_chats_undo_chat_hidden:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_8c
    sget v2, Lorg/telegram/messenger/R$string;->ChatArchived:I

    const-string v3, "ChatArchived"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_3d
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 1475
    :cond_8d
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_8e

    sget v2, Lorg/telegram/messenger/R$string;->hidden_chats_undo_chats_hidden:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3e

    :cond_8e
    sget v2, Lorg/telegram/messenger/R$string;->ChatsArchived:I

    const-string v3, "ChatsArchived"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_3e
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 1477
    :goto_3f
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0xd

    .line 1478
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1480
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v2, 0x17

    if-ne v0, v2, :cond_8f

    if-eqz v6, :cond_8f

    .line 1481
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

    const/16 v2, 0x3e

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_40

    .line 1483
    :cond_8f
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1485
    :goto_40
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1486
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    if-nez v6, :cond_90

    const/16 v2, 0x8

    goto :goto_41

    :cond_90
    move v2, v10

    :goto_41
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1487
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1488
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1490
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1491
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v3, 0x17

    if-eq v2, v3, :cond_92

    sget v3, Lcom/iMe/common/IdFabric$CustomType;->UNDO_ACTION_CHAT_UNARCHIVED_FEW:I

    if-ne v2, v3, :cond_91

    goto :goto_42

    :cond_91
    sget v2, Lorg/telegram/messenger/R$raw;->chats_archived:I

    goto :goto_43

    :cond_92
    :goto_42
    sget v2, Lorg/telegram/messenger/R$raw;->chats_unarchive:I

    :goto_43
    invoke-virtual {v0, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1492
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1493
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_2e

    :cond_93
    :goto_44
    const-wide/16 v6, 0xfa0

    .line 1312
    iput-wide v6, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1313
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1314
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1315
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/16 v2, 0x1e

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1316
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    const-string v2, "\ud83c\udfb2"

    .line 1317
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 1318
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->DiceInfo2:I

    const-string v3, "DiceInfo2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1319
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->dice:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto/16 :goto_47

    :cond_94
    const-string v2, "\ud83c\udfaf"

    .line 1321
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 1322
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->DartInfo:I

    const-string v4, "DartInfo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_45
    const/16 v6, 0xe

    goto :goto_46

    .line 1324
    :cond_95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiceEmojiInfo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getServerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1325
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_96

    .line 1326
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v6, 0xe

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v2, v4, v7, v10}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_45

    .line 1328
    :cond_96
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

    move-result v7

    invoke-static {v3, v4, v7, v10}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    :goto_46
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1332
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1333
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1334
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1335
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1336
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1337
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1339
    :goto_47
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SendDice:I

    const-string v3, "SendDice"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_97

    .line 1343
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

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1344
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1345
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1346
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1347
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_48

    :cond_97
    const/16 v3, 0x8

    .line 1349
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1350
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1351
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_48
    const/16 v2, 0x3a

    .line 1354
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1355
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x6

    .line 1356
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x7

    .line 1357
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v0, -0x1

    .line 1358
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1360
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1361
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2e

    :cond_98
    :goto_49
    const/16 v2, 0x8

    .line 1206
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1207
    move-object v3, v4

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 1209
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1210
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_9a

    .line 1213
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1214
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1215
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->clearLayerColors()V

    .line 1216
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v6

    const-string v7, "BODY.**"

    invoke-virtual {v2, v7, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1217
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v6

    const-string v7, "Wibe Big.**"

    invoke-virtual {v2, v7, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1218
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v6

    const-string v7, "Wibe Big 3.**"

    invoke-virtual {v2, v7, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1219
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v4

    const-string v6, "Wibe Small.**"

    invoke-virtual {v2, v6, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1221
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->ProximityAlertSet:I

    const-string v6, "ProximityAlertSet"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v4, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    const/16 v6, 0x1c

    const/16 v7, 0x1c

    invoke-virtual {v2, v4, v6, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1223
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1225
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v3, :cond_99

    .line 1228
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

    goto :goto_4a

    :cond_99
    const/4 v3, 0x1

    const/4 v6, 0x2

    .line 1230
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

    .line 1232
    :goto_4a
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x6

    .line 1234
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x3a

    const/16 v6, 0xe

    goto/16 :goto_4b

    .line 1236
    :cond_9a
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1237
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1238
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->clearLayerColors()V

    .line 1239
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v3

    const-string v4, "Body Main.**"

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1240
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v3

    const-string v4, "Body Top.**"

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1241
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v3

    const-string v4, "Line.**"

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1242
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v3

    const-string v4, "Curve Big.**"

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1243
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    const-string v3, "Curve Small.**"

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    const/16 v6, 0xe

    .line 1245
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1247
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ProximityAlertCancelled:I

    const-string v3, "ProximityAlertCancelled"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1248
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->ic_mute:I

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1249
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1250
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1251
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0x3a

    .line 1254
    :goto_4b
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1256
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1257
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :goto_4c
    move v0, v10

    goto/16 :goto_5e

    :cond_9b
    :goto_4d
    const/16 v6, 0xe

    .line 1010
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1011
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1013
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-wide/16 v19, -0x1

    .line 1015
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v7, 0x4c

    if-ne v0, v7, :cond_9c

    .line 1016
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BroadcastGroupConvertSuccess:I

    const-string v3, "BroadcastGroupConvertSuccess"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->gigagroup_convert:I

    invoke-virtual {v0, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v0, 0x9

    .line 1019
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1020
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_4e
    move-wide/from16 v2, v19

    const/4 v0, 0x1

    goto/16 :goto_5d

    :cond_9c
    const/16 v7, 0x4b

    if-ne v0, v7, :cond_9d

    .line 1022
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->GigagroupConvertCancelHint:I

    const-string v3, "GigagroupConvertCancelHint"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    invoke-virtual {v0, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v0, 0x9

    .line 1025
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1026
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_4e

    :cond_9d
    const/16 v7, 0x46

    if-ne v2, v7, :cond_9e

    .line 1028
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1029
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1030
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1031
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    .line 1032
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AutoDeleteHintOnText:I

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const-string v0, "AutoDeleteHintOnText"

    invoke-static {v0, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->fire_on:I

    invoke-virtual {v0, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v0, 0x9

    .line 1034
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const-wide/16 v2, 0xfa0

    .line 1035
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1037
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v10, v10, v10, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_4e

    :cond_9e
    const/16 v2, 0x47

    if-ne v0, v2, :cond_9f

    .line 1039
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AutoDeleteHintOffText:I

    const-string v3, "AutoDeleteHintOffText"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->fire_off:I

    invoke-virtual {v0, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1041
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-wide/16 v2, 0xbb8

    .line 1042
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1043
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v10, v10, v10, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_5c

    :cond_9f
    const/16 v2, 0x2d

    if-ne v0, v2, :cond_a0

    .line 1045
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportMutualError:I

    const-string v3, "ImportMutualError"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v0, 0x9

    .line 1048
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1049
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_4e

    :cond_a0
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_a1

    .line 1051
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportNotAdmin:I

    const-string v3, "ImportNotAdmin"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v0, 0x9

    .line 1054
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1055
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_4e

    :cond_a1
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_a2

    .line 1057
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportedInfo:I

    const-string v3, "ImportedInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->imported:I

    invoke-virtual {v0, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1059
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v10, v10, v10, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/16 v0, 0x9

    .line 1061
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1062
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_4e

    :cond_a2
    if-eq v0, v9, :cond_b9

    const/16 v2, 0x34

    if-eq v0, v2, :cond_b9

    const/16 v2, 0x38

    if-eq v0, v2, :cond_b9

    const/16 v2, 0x39

    if-eq v0, v2, :cond_b9

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_b9

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_b9

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_b9

    const/16 v2, 0x50

    if-ne v0, v2, :cond_a3

    goto/16 :goto_5a

    :cond_a3
    const/16 v2, 0x36

    if-ne v0, v2, :cond_a4

    .line 1093
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelNotifyMembersInfoOn:I

    const-string v3, "ChannelNotifyMembersInfoOn"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->silent_unmute:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v2, 0xbb8

    .line 1095
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1096
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5c

    :cond_a4
    const/16 v2, 0x37

    if-ne v0, v2, :cond_a5

    .line 1098
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelNotifyMembersInfoOff:I

    const-string v3, "ChannelNotifyMembersInfoOff"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->silent_mute:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v2, 0xbb8

    .line 1100
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1101
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5c

    :cond_a5
    const/16 v2, 0x29

    if-ne v0, v2, :cond_a9

    if-nez v4, :cond_a8

    .line 1104
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v11, v2

    if-nez v0, :cond_a6

    .line 1105
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->InvLinkToSavedMessages:I

    const-string v3, "InvLinkToSavedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4f

    .line 1107
    :cond_a6
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1108
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1109
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->InvLinkToGroup:I

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v0, v7, v10

    const-string v0, "InvLinkToGroup"

    invoke-static {v0, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    .line 1111
    :cond_a7
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1112
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->InvLinkToUser:I

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    const-string v0, "InvLinkToUser"

    invoke-static {v0, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    .line 1116
    :cond_a8
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1117
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->InvLinkToChats:I

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    new-array v4, v10, [Ljava/lang/Object;

    const-string v9, "Chats"

    invoke-static {v9, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    const-string v0, "InvLinkToChats"

    invoke-static {v0, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    :goto_4f
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {v0, v2, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v2, 0xbb8

    .line 1120
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_5c

    :cond_a9
    const/16 v2, 0x35

    if-ne v0, v2, :cond_b5

    .line 1122
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    if-eqz v4, :cond_ac

    .line 1123
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v2, :cond_aa

    goto :goto_51

    .line 1157
    :cond_aa
    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1158
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_ab

    .line 1159
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "FwdMessageToManyChats"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 1161
    :cond_ab
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "FwdMessagesToManyChats"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    :goto_50
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto/16 :goto_56

    .line 1124
    :cond_ac
    :goto_51
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v11, v2

    if-nez v2, :cond_ae

    .line 1125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_ad

    .line 1126
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    const-string v3, "FwdMessageToSavedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52

    .line 1128
    :cond_ad
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->FwdMessagesToSavedMessages:I

    const-string v3, "FwdMessagesToSavedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    :goto_52
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_cloud:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto/16 :goto_57

    .line 1133
    :cond_ae
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 1134
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1135
    move-object v3, v4

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v2, :cond_b4

    .line 1138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_b0

    .line 1139
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->FwdMessageToGroup:I

    new-array v8, v4, [Ljava/lang/Object;

    if-eqz v3, :cond_af

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    goto :goto_53

    :cond_af
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_53
    aput-object v2, v8, v10

    const-string v2, "FwdMessageToGroup"

    invoke-static {v2, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55

    .line 1141
    :cond_b0
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->FwdMessagesToGroup:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    if-eqz v3, :cond_b1

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    goto :goto_54

    :cond_b1
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_54
    aput-object v2, v8, v10

    const-string v2, "FwdMessagesToGroup"

    invoke-static {v2, v4, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55

    .line 1144
    :cond_b2
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_b4

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_b3

    .line 1148
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

    goto :goto_55

    .line 1150
    :cond_b3
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

    .line 1153
    :cond_b4
    :goto_55
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    :goto_56
    const-wide/16 v19, 0x12c

    :goto_57
    const-wide/16 v2, 0xbb8

    .line 1166
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    const-wide/16 v7, 0x2

    .line 1167
    div-long v7, v2, v7

    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_5c

    :cond_b5
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_c2

    .line 1169
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    if-nez v4, :cond_b8

    .line 1171
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v11, v2

    if-nez v0, :cond_b6

    .line 1172
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BackgroundToSavedMessages:I

    const-string v3, "BackgroundToSavedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->saved_messages:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto/16 :goto_59

    .line 1175
    :cond_b6
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1176
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1177
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BackgroundToGroup:I

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v0, v7, v10

    const-string v0, "BackgroundToGroup"

    invoke-static {v0, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 1179
    :cond_b7
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1180
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BackgroundToUser:I

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    const-string v0, "BackgroundToUser"

    invoke-static {v0, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    :goto_58
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_59

    .line 1185
    :cond_b8
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1186
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BackgroundToChats:I

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    new-array v4, v10, [Ljava/lang/Object;

    const-string v8, "Chats"

    invoke-static {v8, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    const-string v0, "BackgroundToChats"

    invoke-static {v0, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    :goto_59
    const-wide/16 v2, 0xbb8

    .line 1189
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_5c

    .line 1064
    :cond_b9
    :goto_5a
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v0

    if-nez v0, :cond_ba

    return-void

    .line 1067
    :cond_ba
    sget v0, Lorg/telegram/messenger/R$raw;->copy:I

    .line 1069
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-ne v2, v9, :cond_bb

    .line 1070
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->photo_viewer_image_copied:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5b

    :cond_bb
    const/16 v3, 0x50

    if-ne v2, v3, :cond_bc

    .line 1073
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->EmailCopied:I

    const-string v4, "EmailCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    :cond_bc
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_bd

    .line 1075
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->PhoneCopied:I

    const-string v4, "PhoneCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    :cond_bd
    const/16 v3, 0x38

    if-ne v2, v3, :cond_be

    .line 1077
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->UsernameCopied:I

    const-string v4, "UsernameCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    :cond_be
    const/16 v3, 0x39

    if-ne v2, v3, :cond_bf

    .line 1079
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->HashtagCopied:I

    const-string v4, "HashtagCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    :cond_bf
    const/16 v3, 0x34

    if-ne v2, v3, :cond_c0

    .line 1081
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->MessageCopied:I

    const-string v4, "MessageCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    :cond_c0
    const/16 v3, 0x3b

    if-ne v2, v3, :cond_c1

    .line 1083
    sget v0, Lorg/telegram/messenger/R$raw;->voip_invite:I

    .line 1084
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->LinkCopied:I

    const-string v4, "LinkCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 1086
    :cond_c1
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->TextCopied:I

    const-string v4, "TextCopied"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    :goto_5b
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v3, 0x1e

    invoke-virtual {v2, v0, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v2, 0xbb8

    .line 1089
    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    const-wide/16 v7, 0x2

    .line 1090
    div-long v7, v2, v7

    iput-wide v7, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    .line 1091
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_c2
    :goto_5c
    move v0, v10

    move-wide/from16 v2, v19

    .line 1191
    :goto_5d
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1192
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1193
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v4, 0x3a

    .line 1195
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1196
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1198
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1199
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_c3

    .line 1201
    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v5, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda5;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1575
    :cond_c3
    :goto_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c4

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

    :cond_c4
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    .line 1577
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->isMultilineSubInfo()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 1578
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1579
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_c5

    .line 1581
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :cond_c5
    const/16 v2, 0x10

    .line 1583
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 1584
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

    .line 1585
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    const/16 v2, 0x25

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto/16 :goto_61

    .line 1586
    :cond_c6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->hasSubInfo()Z

    move-result v2

    if-eqz v2, :cond_c7

    const/16 v2, 0x34

    .line 1587
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto/16 :goto_61

    .line 1588
    :cond_c7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_cd

    .line 1589
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1590
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v3, v2

    if-gtz v3, :cond_c8

    .line 1592
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    :cond_c8
    const/16 v2, 0x10

    .line 1594
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1595
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

    .line 1596
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_ca

    const/16 v4, 0x11

    if-eq v3, v4, :cond_ca

    const/16 v4, 0x12

    if-eq v3, v4, :cond_ca

    const/16 v4, 0x54

    if-eq v3, v4, :cond_ca

    const/16 v4, 0x56

    if-ne v3, v4, :cond_c9

    goto :goto_5f

    :cond_c9
    const/16 v14, 0x1c

    goto :goto_60

    :cond_ca
    :goto_5f
    move v14, v6

    :goto_60
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    .line 1597
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_cb

    const/16 v4, 0x34

    .line 1598
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto :goto_61

    :cond_cb
    const/16 v4, 0x19

    if-ne v3, v4, :cond_cc

    const/16 v0, 0x32

    .line 1600
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto :goto_61

    :cond_cc
    if-eqz v0, :cond_cd

    const/16 v3, 0x8

    .line 1602
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    .line 1606
    :cond_cd
    :goto_61
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d1

    .line 1607
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1608
    iget-boolean v0, v1, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz v0, :cond_ce

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_62

    :cond_ce
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_62
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UndoView;->setEnterOffset(F)V

    .line 1609
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/Animator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1610
    iget-boolean v4, v1, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz v4, :cond_cf

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_63

    :cond_cf
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_63
    iget v6, v1, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v7, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    aput v5, v2, v10

    if-eqz v4, :cond_d0

    const/4 v4, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_64

    :cond_d0
    const/high16 v14, -0x40800000    # -1.0f

    const/4 v4, 0x1

    :goto_64
    aput v14, v2, v4

    const-string v4, "enterOffset"

    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1611
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xb4

    .line 1612
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1613
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_d1
    return-void
.end method
