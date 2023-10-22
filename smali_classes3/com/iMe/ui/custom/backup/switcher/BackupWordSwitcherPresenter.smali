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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupWordSwitcherPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupWordSwitcherPresenter.kt\ncom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n288#2,2:54\n533#2,6:56\n*S KotlinDebug\n*F\n+ 1 BackupWordSwitcherPresenter.kt\ncom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter\n*L\n38#1:54,2\n39#1:56,6\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
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

    return-void
.end method
