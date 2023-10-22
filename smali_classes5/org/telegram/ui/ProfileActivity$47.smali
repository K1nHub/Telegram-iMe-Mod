.class Lorg/telegram/ui/ProfileActivity$47;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 7263
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 7266
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$21900(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7267
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)V

    .line 7268
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$22000(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 7269
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$22100(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return v1
.end method
