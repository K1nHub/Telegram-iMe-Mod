.class final Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromDb$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SocialRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->getSocialFromDb(J)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
        ">;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/feature/socialMedias/SocialDomain;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocialRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocialRepositoryImpl.kt\ncom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromDb$1\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n*L\n1#1,86:1\n15#2:87\n*S KotlinDebug\n*F\n+ 1 SocialRepositoryImpl.kt\ncom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromDb$1\n*L\n68#1:87\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromDb$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromDb$1;

    invoke-direct {v0}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromDb$1;-><init>()V

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromDb$1;->INSTANCE:Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromDb$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lcom/iMe/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
            ">;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lcom/iMe/feature/socialMedias/SocialDataMapperKt;->toDomain(Ljava/util/List;)Lcom/iMe/feature/socialMedias/SocialDomain;

    move-result-object p1

    .line 15
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromDb$1;->invoke(Ljava/util/List;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
