.class final Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ListBotsPageView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/shop/view/ListBotsPageView;->subscribeToContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$4;

    invoke-direct {v0}, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$4;-><init>()V

    sput-object v0, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$4;->INSTANCE:Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$4;

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

    .line 84
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$4;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method