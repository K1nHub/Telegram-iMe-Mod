.class public final Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1$onScrollChanged$lambda$1$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "Animator.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->onScrollChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 CreateWalletFragment.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,136:1\n99#2:137\n1063#3,4:138\n98#4:142\n97#5:143\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1$onScrollChanged$lambda$1$$inlined$doOnEnd$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;

    .line 101
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

    .line 138
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1$onScrollChanged$lambda$1$$inlined$doOnEnd$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->access$getActionBarAnimator$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1$onScrollChanged$lambda$1$$inlined$doOnEnd$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;->access$setActionBarAnimator$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;Landroid/animation/AnimatorSet;)V

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
