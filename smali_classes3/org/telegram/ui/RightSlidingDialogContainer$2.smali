.class Lorg/telegram/ui/RightSlidingDialogContainer$2;
.super Ljava/lang/Object;
.source "RightSlidingDialogContainer.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/RightSlidingDialogContainer;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/RightSlidingDialogContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/RightSlidingDialogContainer;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$2;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishFragment()V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer$2;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreview()V

    return-void
.end method
