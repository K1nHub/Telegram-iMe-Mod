.class Lorg/telegram/ui/ActionBar/INavigationLayout$1;
.super Lorg/telegram/ui/ActionBar/ActionBarLayout;
.source "INavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->newLayout(Landroid/content/Context;Landroidx/core/util/Supplier;)Lorg/telegram/ui/ActionBar/INavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$supplier:Landroidx/core/util/Supplier;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/util/Supplier;)V
    .locals 0

    .line 107
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$1;->val$supplier:Landroidx/core/util/Supplier;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$1;->val$supplier:Landroidx/core/util/Supplier;

    invoke-interface {v0}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object v0
.end method
