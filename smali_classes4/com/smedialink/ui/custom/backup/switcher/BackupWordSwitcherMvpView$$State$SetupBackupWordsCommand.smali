.class public Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupBackupWordsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BackupWordSwitcherMvpView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupBackupWordsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;",
        ">;"
    }
.end annotation


# instance fields
.field public final words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupBackupWords"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 64
    iput-object p2, p0, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupBackupWordsCommand;->words:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupBackupWordsCommand;->words:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;->setupBackupWords(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupBackupWordsCommand;->apply(Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;)V

    return-void
.end method
