.class public abstract Lorg/fork/utils/AbstractTabbedViewPage;
.super Ljava/lang/Object;
.source "AbstractTabbedViewPage.kt"


# instance fields
.field private final icon:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/fork/utils/AbstractTabbedViewPage;->title:Ljava/lang/String;

    .line 8
    iput p2, p0, Lorg/fork/utils/AbstractTabbedViewPage;->icon:I

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 8
    iget v0, p0, Lorg/fork/utils/AbstractTabbedViewPage;->icon:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/fork/utils/AbstractTabbedViewPage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method
