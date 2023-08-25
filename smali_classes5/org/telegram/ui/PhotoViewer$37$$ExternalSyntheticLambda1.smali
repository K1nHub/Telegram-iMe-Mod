.class public final synthetic Lorg/telegram/ui/PhotoViewer$37$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$37;

.field public final synthetic f$1:Landroid/widget/FrameLayout;

.field public final synthetic f$2:Landroidx/collection/LongSparseArray;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$37;Landroid/widget/FrameLayout;Landroidx/collection/LongSparseArray;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$37$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/PhotoViewer$37;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$37$$ExternalSyntheticLambda1;->f$1:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$37$$ExternalSyntheticLambda1;->f$2:Landroidx/collection/LongSparseArray;

    iput p4, p0, Lorg/telegram/ui/PhotoViewer$37$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$37$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/PhotoViewer$37;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$37$$ExternalSyntheticLambda1;->f$1:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$37$$ExternalSyntheticLambda1;->f$2:Landroidx/collection/LongSparseArray;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$37$$ExternalSyntheticLambda1;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$37;->$r8$lambda$mpy5cdXCzlu7bAC2cj-i3jtz2F8(Lorg/telegram/ui/PhotoViewer$37;Landroid/widget/FrameLayout;Landroidx/collection/LongSparseArray;I)V

    return-void
.end method
