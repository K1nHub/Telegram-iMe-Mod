.class final Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$getBoolean$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RemoteConfigRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl;->getBoolean(Ljava/lang/String;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteConfigRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigRepositoryImpl.kt\ncom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$getBoolean$1\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,48:1\n9#2:49\n*S KotlinDebug\n*F\n+ 1 RemoteConfigRepositoryImpl.kt\ncom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$getBoolean$1\n*L\n21#1:49\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$getBoolean$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$getBoolean$1;

    invoke-direct {v0}, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$getBoolean$1;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$getBoolean$1;->INSTANCE:Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$getBoolean$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Boolean;)Lcom/iMe/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$getBoolean$1;->invoke(Ljava/lang/Boolean;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
