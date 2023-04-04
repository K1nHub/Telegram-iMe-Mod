.class final Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TonConfigRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;->getTonConfigJsonString()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lokhttp3/Response;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonConfigRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonConfigRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$2\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,36:1\n9#2:37\n*S KotlinDebug\n*F\n+ 1 TonConfigRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$2\n*L\n30#1:37\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$2;

    invoke-direct {v0}, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$2;->INSTANCE:Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lokhttp3/Response;)Lcom/iMe/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 9
    :cond_1
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$2;->invoke(Lokhttp3/Response;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
