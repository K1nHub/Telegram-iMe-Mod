.class public Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupTitleCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BackupWordSwitcherMvpView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupTitleCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;",
        ">;"
    }
.end annotation


# instance fields
.field public final rightWordPosition:I


# direct methods
.method constructor <init>(Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State;I)V
    .locals 1

    .line 47
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupTitle"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 49
    iput p2, p0, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupTitleCommand;->rightWordPosition:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupTitleCommand;->rightWordPosition:I

    invoke-interface {p1, v0}, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;->setupTitle(I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupTitleCommand;->apply(Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;)V

    return-void
.end method
