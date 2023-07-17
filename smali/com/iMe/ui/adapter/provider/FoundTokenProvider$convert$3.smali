.class final Lcom/iMe/ui/adapter/provider/FoundTokenProvider$convert$3;
.super Lkotlin/jvm/internal/Lambda;
.source "FoundTokenProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/FoundTokenItem;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/Components/Switch;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/home/FoundTokenItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/FoundTokenItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider$convert$3;->$item:Lcom/iMe/model/wallet/home/FoundTokenItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/FoundTokenProvider$convert$3;->invoke(Lorg/telegram/ui/Components/Switch;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Components/Switch;)V
    .locals 3

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/FoundTokenProvider$convert$3;->$item:Lcom/iMe/model/wallet/home/FoundTokenItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/FoundTokenItem;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 69
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0, v1, v2, v2}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    return-void
.end method
