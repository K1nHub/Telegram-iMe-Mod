.class Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;
.super Ljava/lang/Object;
.source "StoriesPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/StoriesPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field iconRes:I

.field order:I

.field text:Ljava/lang/String;

.field final viewType:I


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;I)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p2, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->viewType:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p2, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->viewType:I

    .line 173
    iput p3, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->iconRes:I

    .line 174
    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->text:Ljava/lang/String;

    .line 175
    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->description:Ljava/lang/String;

    .line 176
    iput p6, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->order:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;ILorg/telegram/ui/Components/Premium/StoriesPageView$1;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;I)V

    return-void
.end method
