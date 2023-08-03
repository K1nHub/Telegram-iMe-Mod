.class public final synthetic Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

.field public final synthetic f$1:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iput-object p3, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;->f$2:[I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;->f$2:[I

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->$r8$lambda$pBEnySBawy041leTKBy0aepVr-Q(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[ILandroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    return-void
.end method
