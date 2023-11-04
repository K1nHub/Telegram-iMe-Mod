.class public final Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$lambda$12$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 CreateWalletIntroFragment.kt\ncom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment\n*L\n1#1,432:1\n72#2:433\n162#2,8:435\n73#2:444\n226#3:434\n227#3:443\n*S KotlinDebug\n*F\n+ 1 CreateWalletIntroFragment.kt\ncom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment\n*L\n226#1:435,8\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$lambda$12$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 226
    iget-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$lambda$12$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    const-string p3, "nestedRoot"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$lambda$12$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    iget-object p3, p3, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p3, p1

    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 165
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    .line 166
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    .line 168
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
