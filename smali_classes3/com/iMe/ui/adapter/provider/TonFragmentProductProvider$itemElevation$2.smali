.class final Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider$itemElevation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TonFragmentProductProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;


# direct methods
.method constructor <init>(Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider$itemElevation$2;->this$0:Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider$itemElevation$2;->this$0:Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$dimen;->wallet_card_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider$itemElevation$2;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
