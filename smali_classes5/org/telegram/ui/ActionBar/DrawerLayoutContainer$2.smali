.class Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DrawerLayoutContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;->this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;->this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onDrawerAnimationEnd(Z)V

    return-void
.end method
