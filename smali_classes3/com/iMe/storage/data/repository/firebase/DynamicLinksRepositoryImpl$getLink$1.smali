.class final Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DynamicLinksRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl;->getLink(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/google/DynamicLinkData;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicLinksRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicLinksRepositoryImpl.kt\ncom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$1\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,29:1\n9#2:30\n*S KotlinDebug\n*F\n+ 1 DynamicLinksRepositoryImpl.kt\ncom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$1\n*L\n23#1:30\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$1;

    invoke-direct {v0}, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$1;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$1;->INSTANCE:Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Lcom/iMe/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
            ")",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/google/DynamicLinkData;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/iMe/storage/domain/model/google/DynamicLinkData;->Companion:Lcom/iMe/storage/domain/model/google/DynamicLinkData$Companion;

    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/google/DynamicLinkData$Companion;->parseDynamicLink(Landroid/net/Uri;)Lcom/iMe/storage/domain/model/google/DynamicLinkData;

    move-result-object p1

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$1;->invoke(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
