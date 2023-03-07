.class final Lcom/smedialink/ui/custom/cells/TextDetailWithRankCell$badgeView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TextDetailWithRankCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/custom/cells/TextDetailWithRankCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/fork/ui/view/AccountLevelBadgeView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/custom/cells/TextDetailWithRankCell$badgeView$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/cells/TextDetailWithRankCell$badgeView$2;->invoke()Lorg/fork/ui/view/AccountLevelBadgeView;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/fork/ui/view/AccountLevelBadgeView;
    .locals 7

    .line 15
    new-instance v6, Lorg/fork/ui/view/AccountLevelBadgeView;

    iget-object v1, p0, Lcom/smedialink/ui/custom/cells/TextDetailWithRankCell$badgeView$2;->$context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/fork/ui/view/AccountLevelBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
