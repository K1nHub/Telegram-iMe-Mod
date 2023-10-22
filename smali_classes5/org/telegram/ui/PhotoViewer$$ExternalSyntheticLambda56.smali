.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda56;->f$0:Lorg/telegram/ui/PhotoViewer;

    return-void
.end method


# virtual methods
.method public final onTranslateAction(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda56;->f$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PhotoViewer;->showTranslateDialog(Ljava/lang/String;)V

    return-void
.end method
