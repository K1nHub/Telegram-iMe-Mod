.class final Lcom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TonControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->signData([B)Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/Result<",
        "+[B>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n*L\n1#1,201:1\n8#2,2:202\n*S KotlinDebug\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2\n*L\n121#1:202,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2;

    invoke-direct {v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/iMe/storage/domain/model/Result<",
            "[B>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 120
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2;->invoke(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
