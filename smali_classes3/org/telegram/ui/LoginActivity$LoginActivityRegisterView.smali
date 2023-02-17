.class public Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivityRegisterView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$LinkSpan;
    }
.end annotation


# instance fields
.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarAnimation:Landroid/animation/AnimatorSet;

.field private avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarOverlay:Landroid/view/View;

.field private avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private cameraWaitDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private currentParams:Landroid/os/Bundle;

.field private descriptionTextView:Landroid/widget/TextView;

.field private editTextContainer:Landroid/widget/FrameLayout;

.field private firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private firstNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field private isCameraWaitAnimationAllowed:Z

.field private lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private lastNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private nextPressed:Z

.field private phoneHash:Ljava/lang/String;

.field private privacyView:Landroid/widget/TextView;

.field private requestPhone:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private titleTextView:Landroid/widget/TextView;

.field private wrongNumber:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$0W002WdxARVgZ8IFj89Iy_leGuw(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$showTermsOfService$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1P3nB2me_aeBEZr8oiNgnbPihDs(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$new$9(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2wzM8ylNHBcZnzeLe6ZGRXf9xuk(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$onShow$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$7qSP0bzuABnut1r0qaI4M6LhP3w(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$new$10(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$9zZljM1gOLSfmMcCJ7zoFbMjLCc(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$showTermsOfService$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EK-nPdvlXaOUTc3B5OMTi7-VakY(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$onBackPressed$14(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hv1x2v8kQ6j_ftzcXeCRai3VxbQ(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$onNextPressed$17(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kpz0k20nv5NPYohCXKUKY41h71s(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N_IgDuPOqvWTz91lZL-DamuJXrc(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$showTermsOfService$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PaHjbMETVrNBkywzaGnbIOqnWTY(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$new$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Y3a7VmOTnYgtZmKDzJF4UEc9kYg(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$onNextPressed$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_rJuXzRdDa_yyopPO4Qlw6P5lBI(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$didUploadPhoto$13(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$atKXsjtSXkmAfBhpIuw0NTWPcFA(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$showTermsOfService$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$byogp_Nc-RMMkNd2-FhiDV-dYf8(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$new$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ckmr6BtxK7A3tz1WN-t7xKdkh68(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$iHntAVfTqrzMJ16HNEPfrt7rYR4(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$onNextPressed$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p8LOpaEJr-CxkBj8CLXHHJKAws8(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/tgnet/TLRPC$FileLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$onNextPressed$16(Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tKJExPLG5SdhtDHFLSfoYpxhuoE(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$new$8(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yAqwEXZsfu2ZpisTS9xDUDt32t0(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$new$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yJX_VY2HpVoA7tPtzPvOq2fWmvw(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lambda$new$5()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 7078
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 7079
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 7015
    iput-boolean v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    const/4 v4, 0x1

    .line 7019
    iput-boolean v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->isCameraWaitAnimationAllowed:Z

    .line 7081
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7083
    new-instance v5, Lorg/telegram/ui/Components/ImageUpdater;

    invoke-direct {v5, v3, v3, v3}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    .line 7084
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/ImageUpdater;->setOpenWithFrontfaceCamera(Z)V

    .line 7085
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/ImageUpdater;->setSearchAvailable(Z)V

    .line 7086
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/ImageUpdater;->setUploadAfterSelect(Z)V

    .line 7087
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iput-object v1, v5, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 7088
    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/ImageUpdater;->setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    .line 7090
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x4e

    .line 7091
    invoke-static {v6, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7093
    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 7095
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;

    invoke-direct {v6, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v7, 0x40

    .line 7112
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 7113
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 7114
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-wide/16 v7, 0x5

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 7115
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7116
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v7, -0x1

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7118
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v8, 0x55000000

    .line 7119
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 7121
    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$2;

    invoke-direct {v8, v0, v2, v1, v6}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;Landroid/graphics/Paint;)V

    iput-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarOverlay:Landroid/view/View;

    .line 7130
    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7131
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarOverlay:Landroid/view/View;

    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda6;

    invoke-direct {v8, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7159
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v11, Lorg/telegram/messenger/R$raw;->camera:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/16 v8, 0x46

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v16}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 7160
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v18, Lorg/telegram/messenger/R$raw;->camera_wait:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v20

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v23}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraWaitDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 7162
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    invoke-direct {v6, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    .line 7175
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7176
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 7177
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 7178
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 7179
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7181
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$4;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 7214
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$5;

    invoke-direct {v6, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x1e

    .line 7221
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 7222
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 7223
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7225
    invoke-direct {v0, v3, v3}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->showAvatarProgress(ZZ)V

    .line 7227
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->titleTextView:Landroid/widget/TextView;

    .line 7228
    sget v5, Lorg/telegram/messenger/R$string;->RegistrationProfileInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7229
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->titleTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7230
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->titleTextView:Landroid/widget/TextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7231
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->titleTextView:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 7232
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 7233
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->titleTextView:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v12, 0x1

    const/16 v13, 0x8

    const/16 v14, 0xc

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7235
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->descriptionTextView:Landroid/widget/TextView;

    .line 7236
    sget v6, Lorg/telegram/messenger/R$string;->RegisterText2:I

    const-string v10, "RegisterText2"

    invoke-static {v10, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7237
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 7238
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->descriptionTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7239
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->descriptionTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1, v10, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 7240
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->descriptionTextView:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/4 v14, 0x6

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7242
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->editTextContainer:Landroid/widget/FrameLayout;

    const/4 v10, -0x1

    const/16 v12, 0x8

    const/16 v13, 0x15

    const/16 v14, 0x8

    const/4 v15, 0x0

    .line 7243
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7245
    new-instance v1, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 7246
    sget v10, Lorg/telegram/messenger/R$string;->FirstName:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 7248
    new-instance v1, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v10, 0x14

    .line 7249
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 7250
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 7251
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v12, 0x10000005

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7252
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v12, 0x41880000    # 17.0f

    invoke-virtual {v1, v4, v12}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 7253
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 7254
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v13, 0x2000

    invoke-virtual {v1, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 7255
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v14, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda9;

    invoke-direct {v14, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {v1, v14}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 7256
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7257
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v14, 0x10

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v15, v3, v8, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 7259
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    .line 7260
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, -0x2

    const/16 v8, 0x30

    invoke-static {v7, v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v1, v3, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7262
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 7270
    new-instance v1, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 7271
    sget v3, Lorg/telegram/messenger/R$string;->LastName:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 7273
    new-instance v1, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 7274
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 7275
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 7276
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v3, 0x10000006

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7277
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v4, v12}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 7278
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 7279
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 7280
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 7281
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7282
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v1, v3, v9, v10, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 7284
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    .line 7285
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v7, v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7287
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 7294
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->buildEditTextLayout(Z)V

    .line 7296
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    .line 7297
    sget v3, Lorg/telegram/messenger/R$string;->CancelRegistration:I

    const-string v5, "CancelRegistration"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7298
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v5, 0x5

    const/4 v9, 0x3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 7299
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7300
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v3, v10

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 7301
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v3, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 7302
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7303
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const/16 v18, -0x2

    const/16 v19, -0x2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    :goto_1
    or-int/lit8 v20, v5, 0x30

    const/16 v21, 0x0

    const/16 v22, 0x14

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7304
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7311
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x53

    .line 7312
    invoke-static {v7, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7314
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    .line 7315
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v2}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 7316
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v6, 0x41500000    # 13.0f

    :cond_2
    invoke-virtual {v2, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7317
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 7318
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 7319
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    const/4 v8, -0x2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_3

    const/16 v3, 0x38

    const/16 v9, 0x38

    goto :goto_2

    :cond_3
    const/16 v3, 0x3c

    const/16 v9, 0x3c

    :goto_2
    const/16 v10, 0x53

    const/16 v11, 0xe

    const/4 v12, 0x0

    const/16 v13, 0x46

    const/16 v14, 0x20

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7320
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 7322
    sget v1, Lorg/telegram/messenger/R$string;->TermsOfServiceLogin:I

    const-string v2, "TermsOfServiceLogin"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 7323
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2a

    .line 7324
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 7325
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v5, v7, :cond_4

    if-eq v1, v7, :cond_4

    if-eq v5, v1, :cond_4

    add-int/lit8 v3, v1, 0x1

    const-string v6, ""

    .line 7327
    invoke-virtual {v2, v1, v3, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v5, 0x1

    .line 7328
    invoke-virtual {v2, v5, v3, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7329
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$LinkSpan;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$LinkSpan;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    sub-int/2addr v1, v4

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7331
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$15200(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Z)V
    .locals 0

    .line 6996
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->showTermsOfService(Z)V

    return-void
.end method

.method static synthetic access$15300(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/view/View;
    .locals 0

    .line 6996
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$15400(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 6996
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$15500(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 6996
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$15600(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Z
    .locals 0

    .line 6996
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->isCameraWaitAnimationAllowed:Z

    return p0
.end method

.method static synthetic access$15700(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    .line 6996
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraWaitDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static synthetic access$15800(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 6996
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$15900(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    .line 6996
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static synthetic access$16000(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 6996
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$16002(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 6996
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;
    .locals 0

    .line 6996
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/TextView;
    .locals 0

    .line 6996
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method private buildEditTextLayout(Z)V
    .locals 10

    .line 7352
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    .line 7353
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->editTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_1

    .line 7356
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 7357
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7359
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v3, Lorg/telegram/messenger/R$string;->FirstNameSmall:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 7360
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v3, Lorg/telegram/messenger/R$string;->LastNameSmall:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 7362
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7363
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7365
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->editTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_0

    .line 7368
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7369
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    .line 7371
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7372
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    .line 7375
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v0, Lorg/telegram/messenger/R$string;->FirstName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 7376
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v0, Lorg/telegram/messenger/R$string;->LastName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 7378
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x30

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7379
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v1, -0x1

    const/16 v5, 0x52

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private hidePrivacyView()V
    .locals 3

    .line 7629
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$13(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 3

    .line 7386
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 7387
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 7388
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-string v1, "50_50"

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;Z)V
    .locals 0

    .line 7280
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$new$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 7289
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->onNextPressed(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$new$12(Landroid/view/View;)V
    .locals 0

    .line 7305
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$500(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 7308
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->onBackPressed(Z)Z

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 5

    const/4 v0, 0x0

    .line 7133
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 7134
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 7135
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->showAvatarProgress(ZZ)V

    .line 7136
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0, v0, v4, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 7137
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 7138
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 7139
    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->isCameraWaitAnimationAllowed:Z

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 1

    const/4 v0, 0x1

    .line 7144
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->isCameraWaitAnimationAllowed:Z

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/content/DialogInterface;)V
    .locals 1

    .line 7141
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7142
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 7143
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 7144
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    .line 7145
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    .line 7147
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 7148
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    const/4 p1, 0x1

    .line 7149
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->isCameraWaitAnimationAllowed:Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 4

    .line 7132
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V

    .line 7152
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->isCameraWaitAnimationAllowed:Z

    .line 7153
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 7154
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 7155
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 7156
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;Z)V
    .locals 0

    .line 7255
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 7264
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onBackPressed$14(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x1

    .line 7456
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->onBackPressed(Z)Z

    .line 7457
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 7458
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->hidePrivacyView()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$16(Lorg/telegram/tgnet/TLRPC$FileLocation;)V
    .locals 1

    .line 7553
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$16500(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->uploadAndApplyUserAvatar(Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$17(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 7548
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/LoginActivity;->access$9500(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 7549
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$16300(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 7550
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/LoginActivity;->access$16400(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V

    .line 7551
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p1, :cond_0

    .line 7553
    sget-object v0, Lorg/telegram/messenger/Utilities;->cacheClearQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onNextPressed$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v0, 0x0

    .line 7543
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    .line 7544
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    if-eqz v1, :cond_0

    .line 7545
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->hidePrivacyView()V

    .line 7546
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 7547
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/tgnet/TLObject;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p2, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 7557
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Z)V

    .line 7558
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "PHONE_NUMBER_INVALID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7559
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    const-string v1, "InvalidPhoneNumber"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7560
    :cond_1
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "PHONE_CODE_EMPTY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "PHONE_CODE_INVALID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 7562
    :cond_2
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "PHONE_CODE_EXPIRED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7563
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string v1, "CodeExpired"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7564
    :cond_3
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "FIRSTNAME_INVALID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7565
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->InvalidFirstName:I

    const-string v1, "InvalidFirstName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7566
    :cond_4
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "LASTNAME_INVALID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7567
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->InvalidLastName:I

    const-string v1, "InvalidLastName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7569
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v0, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7561
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->InvalidCode:I

    const-string v1, "InvalidCode"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onNextPressed$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 7542
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onShow$15()V
    .locals 2

    .line 7502
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 7503
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 7504
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 7505
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showTermsOfService$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 7050
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->popup:Z

    const/4 p1, 0x0

    .line 7051
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->onNextPressed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showTermsOfService$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 7058
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->popup:Z

    const/4 p1, 0x0

    .line 7059
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->onNextPressed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showTermsOfService$2(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x1

    .line 7062
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->onBackPressed(Z)Z

    .line 7063
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$showTermsOfService$3(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 7054
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7055
    sget p2, Lorg/telegram/messenger/R$string;->TermsOfService:I

    const-string v0, "TermsOfService"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7056
    sget p2, Lorg/telegram/messenger/R$string;->TosDecline:I

    const-string v0, "TosDecline"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7057
    sget p2, Lorg/telegram/messenger/R$string;->SignUp:I

    const-string v0, "SignUp"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7061
    sget p2, Lorg/telegram/messenger/R$string;->Decline:I

    const-string v0, "Decline"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7065
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showAvatarProgress(ZZ)V
    .locals 8

    .line 7393
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v0, :cond_0

    return-void

    .line 7396
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 7397
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 7398
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 7401
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarAnimation:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 7403
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7405
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    aput v0, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v2

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v1, v6, v2

    .line 7406
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v3

    .line 7405
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 7408
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7410
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    aput v1, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, p2, v2

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v0, v6, v2

    .line 7411
    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v3

    .line 7410
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7413
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 7414
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7433
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    const/4 p2, 0x4

    if-eqz p1, :cond_4

    .line 7436
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 7437
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7438
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 7439
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 7441
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 7442
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7443
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 7444
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private showTermsOfService(Z)V
    .locals 8

    .line 7042
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7045
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7046
    sget v1, Lorg/telegram/messenger/R$string;->TermsOfService:I

    const-string v2, "TermsOfService"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-eqz p1, :cond_1

    .line 7049
    sget p1, Lorg/telegram/messenger/R$string;->Accept:I

    const-string v1, "Accept"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7053
    sget p1, Lorg/telegram/messenger/R$string;->Decline:I

    const-string v1, "Decline"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 7068
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7071
    :goto_0
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->text:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7072
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object v1

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->entities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 7073
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7075
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public synthetic canFinishFragment()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic didStartUpload(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$didStartUpload(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;Z)V

    return-void
.end method

.method public synthetic didUploadFailed()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$didUploadFailed(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    return-void
.end method

.method public didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 0

    .line 7385
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0, p7, p6}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .line 7472
    sget v0, Lorg/telegram/messenger/R$string;->YourName:I

    const-string v1, "YourName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInitialSearchString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getInitialSearchString(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needBackButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 7452
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7453
    sget v2, Lorg/telegram/messenger/R$string;->Warning:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7454
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureRegistration:I

    const-string v3, "AreYouSureRegistration"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7455
    sget v2, Lorg/telegram/messenger/R$string;->Stop:I

    const-string v3, "Stop"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7460
    sget v2, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v3, "Continue"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7461
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v1

    .line 7464
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Z)V

    .line 7465
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    .line 7466
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    return v2
.end method

.method public onCancelPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 7477
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 3

    .line 7524
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    if-eqz p1, :cond_0

    return-void

    .line 7527
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->popup:Z

    if-eqz p1, :cond_1

    .line 7528
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->showTermsOfService(Z)V

    return-void

    .line 7531
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 7532
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {p1, v1, v0}, Lorg/telegram/ui/LoginActivity;->access$5100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V

    return-void

    .line 7535
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    .line 7536
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;-><init>()V

    .line 7537
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->phoneHash:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->phone_code_hash:Ljava/lang/String;

    .line 7538
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->requestPhone:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->phone_number:Ljava/lang/String;

    .line 7539
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->first_name:Ljava/lang/String;

    .line 7540
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->last_name:Ljava/lang/String;

    .line 7541
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$7300(Lorg/telegram/ui/LoginActivity;I)V

    .line 7542
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$16200(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 7487
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 7488
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 7489
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$16100(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 7490
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 7492
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 7493
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7496
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_2

    .line 7497
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 7498
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 7499
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 7501
    :cond_2
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    .line 7507
    invoke-static {}, Lorg/telegram/ui/LoginActivity;->access$7800()I

    move-result v1

    int-to-long v1, v1

    .line 7501
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic onUploadProgressChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$onUploadProgressChanged(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;F)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "registerview_params"

    .line 7599
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7601
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->setParams(Landroid/os/Bundle;Z)V

    :cond_0
    :try_start_0
    const-string v0, "terms"

    .line 7605
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 7607
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7609
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v0}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 7610
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v3

    invoke-static {v2, v3, v1}, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$8302(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    .line 7611
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7615
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const-string v0, "registerview_first"

    .line 7618
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7620
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "registerview_last"

    .line 7622
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7624
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 3

    .line 7577
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7578
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "registerview_first"

    .line 7579
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7581
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7582
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "registerview_last"

    .line 7583
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7585
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7586
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 7587
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7588
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "terms"

    .line 7589
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7590
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 7592
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v1, "registerview_params"

    .line 7593
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 7515
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7516
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "phoneFormated"

    .line 7517
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->requestPhone:Ljava/lang/String;

    const-string p2, "phoneHash"

    .line 7518
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->phoneHash:Ljava/lang/String;

    .line 7519
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 7336
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7337
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->titleTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7338
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->descriptionTextView:Landroid/widget/TextView;

    const-string v2, "windowBackgroundWhiteGrayText6"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7339
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 7340
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v3, "windowBackgroundWhiteInputFieldActivated"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 7341
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 7342
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 7343
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7344
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7345
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->privacyView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteLinkText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 7347
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->updateColor()V

    .line 7348
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->updateColor()V

    return-void
.end method
