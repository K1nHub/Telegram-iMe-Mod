.class final Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BinanceAccountProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/Components/BackupImageView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$2;

    invoke-direct {v0}, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$2;-><init>()V

    sput-object v0, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$2;->INSTANCE:Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$2;->invoke(Lorg/telegram/ui/Components/BackupImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 1

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_binance_40:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    return-void
.end method
