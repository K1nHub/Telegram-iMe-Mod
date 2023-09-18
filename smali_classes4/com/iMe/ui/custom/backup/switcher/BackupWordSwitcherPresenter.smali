.class public final Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "BackupWordSwitcherPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherMvpView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupWordSwitcherPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupWordSwitcherPresenter.kt\ncom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n288#2,2:54\n533#2,6:56\n*S KotlinDebug\n*F\n+ 1 BackupWordSwitcherPresenter.kt\ncom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter\n*L\n38#1:54,2\n39#1:56,6\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private rightWord:Ljava/lang/String;

.field private seed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->seed:Ljava/util/List;

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->rightWord:Ljava/lang/String;

    return-void
.end method

.method private final setupBackupWords()V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->rightWord:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 38
    iget-object v2, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->seed:Ljava/util/List;

    .line 288
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 38
    iget-object v7, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->rightWord:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 289
    :goto_0
    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v5

    const/4 v2, 0x2

    .line 39
    iget-object v3, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->seed:Ljava/util/List;

    .line 533
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 534
    :cond_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 535
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    .line 536
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 39
    iget-object v8, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->rightWord:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v5

    if-eqz v7, :cond_2

    move-object v4, v6

    .line 538
    :cond_3
    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 36
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 42
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherMvpView;

    invoke-interface {v0, v1}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherMvpView;->setupBackupWords(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method private final setupTitle(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->rightWord:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 31
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherMvpView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherMvpView;->setupTitle(I)V

    return-void
.end method


# virtual methods
.method public final setupWithSeed(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "walletSeed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partOfSeed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->seed:Ljava/util/List;

    .line 15
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->rightWord:Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->setupTitle(Ljava/util/List;)V

    .line 18
    invoke-direct {p0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->setupBackupWords()V

    return-void
.end method
