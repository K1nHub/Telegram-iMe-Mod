.class public Lorg/telegram/ui/PhotoViewer$$PresentersBinder$RecognitionPresenterBinder;
.super Lmoxy/presenter/PresenterField;
.source "PhotoViewer$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecognitionPresenterBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/presenter/PresenterField<",
        "Lorg/telegram/ui/PhotoViewer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer$$PresentersBinder;)V
    .locals 2

    .line 21
    const-class p1, Lcom/smedialink/ui/recognition/PhotoViewerPresenter;

    const-string v0, "recognitionPresenter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmoxy/presenter/PresenterField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 19
    check-cast p1, Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$$PresentersBinder$RecognitionPresenterBinder;->bind(Lorg/telegram/ui/PhotoViewer;Lmoxy/MvpPresenter;)V

    return-void
.end method

.method public bind(Lorg/telegram/ui/PhotoViewer;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/smedialink/ui/recognition/PhotoViewerPresenter;

    iput-object p2, p1, Lorg/telegram/ui/PhotoViewer;->recognitionPresenter:Lcom/smedialink/ui/recognition/PhotoViewerPresenter;

    return-void
.end method

.method public bridge synthetic providePresenter(Ljava/lang/Object;)Lmoxy/MvpPresenter;
    .locals 0

    .line 19
    check-cast p1, Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoViewer$$PresentersBinder$RecognitionPresenterBinder;->providePresenter(Lorg/telegram/ui/PhotoViewer;)Lmoxy/MvpPresenter;

    move-result-object p1

    return-object p1
.end method

.method public providePresenter(Lorg/telegram/ui/PhotoViewer;)Lmoxy/MvpPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/PhotoViewer;",
            ")",
            "Lmoxy/MvpPresenter<",
            "*>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->providePresenter()Lcom/smedialink/ui/recognition/PhotoViewerPresenter;

    move-result-object p1

    return-object p1
.end method
