.class public final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1$onScrollChanged$lambda-1$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "Animator.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->onScrollChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 CreateWalletFragment.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n570#3,4:129\n97#4:133\n96#5:134\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1$onScrollChanged$lambda-1$$inlined$doOnEnd$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1$onScrollChanged$lambda-1$$inlined$doOnEnd$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->access$getActionBarAnimator$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1$onScrollChanged$lambda-1$$inlined$doOnEnd$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->access$setActionBarAnimator$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
