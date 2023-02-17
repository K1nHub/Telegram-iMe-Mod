.class public final synthetic Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ContentPreviewViewer;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/telegram/ui/Components/RecyclerListView;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:I

.field public final synthetic f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;ZLorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/ContentPreviewViewer;

    iput-boolean p2, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object p4, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$3:Landroid/view/View;

    iput p5, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$4:I

    iput-object p6, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$3:Landroid/view/View;

    iget v4, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$4:I

    iget-object v5, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer;->$r8$lambda$KoTEzFIip5_oT8Y94rNgr-WUbpI(Lorg/telegram/ui/ContentPreviewViewer;ZLorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method
