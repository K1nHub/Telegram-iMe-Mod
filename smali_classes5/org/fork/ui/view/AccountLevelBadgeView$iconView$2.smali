.class final Lorg/fork/ui/view/AccountLevelBadgeView$iconView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AccountLevelBadgeView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/AccountLevelBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/AccountLevelBadgeView;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/AccountLevelBadgeView;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/AccountLevelBadgeView$iconView$2;->this$0:Lorg/fork/ui/view/AccountLevelBadgeView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/ImageView;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/fork/ui/view/AccountLevelBadgeView$iconView$2;->this$0:Lorg/fork/ui/view/AccountLevelBadgeView;

    invoke-static {v0}, Lorg/fork/ui/view/AccountLevelBadgeView;->access$createIconView(Lorg/fork/ui/view/AccountLevelBadgeView;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/fork/ui/view/AccountLevelBadgeView$iconView$2;->invoke()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method
