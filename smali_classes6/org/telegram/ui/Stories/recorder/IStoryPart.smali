.class public abstract Lorg/telegram/ui/Stories/recorder/IStoryPart;
.super Ljava/lang/Object;
.source "IStoryPart.java"


# instance fields
.field public height:I

.field public id:I

.field public final matrix:Landroid/graphics/Matrix;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    return-void
.end method
