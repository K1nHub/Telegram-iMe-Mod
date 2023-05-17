.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;
.super Ljava/lang/Object;
.source "LPhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;-><init>(Landroid/content/Context;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntityDeselect()V
    .locals 2

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method public onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    return-object v0
.end method

.method public shouldReceiveTouches()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
