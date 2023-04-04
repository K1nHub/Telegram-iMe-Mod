.class final Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initTonLib$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TonControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->initTonLib()Lio/reactivex/Observable;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initTonLib$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initTonLib$2;

    invoke-direct {v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initTonLib$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initTonLib$2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initTonLib$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 180
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initTonLib$2;->invoke(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
