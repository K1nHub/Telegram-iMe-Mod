.class Lorg/telegram/ui/Components/ItemOptions$2;
.super Ljava/lang/Object;
.source "ItemOptions.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ItemOptions;

.field final synthetic val$container:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$2;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$2;->val$container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$2;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->access$102(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$2;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$2;->val$container:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->access$000(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V

    return-void
.end method
