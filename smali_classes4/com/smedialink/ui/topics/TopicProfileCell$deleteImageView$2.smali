.class final Lcom/smedialink/ui/topics/TopicProfileCell$deleteImageView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TopicProfileCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/topics/TopicProfileCell;-><init>(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/topics/TopicProfileCell;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/topics/TopicProfileCell;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicProfileCell$deleteImageView$2;->this$0:Lcom/smedialink/ui/topics/TopicProfileCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/ImageView;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicProfileCell$deleteImageView$2;->this$0:Lcom/smedialink/ui/topics/TopicProfileCell;

    invoke-static {v0}, Lcom/smedialink/ui/topics/TopicProfileCell;->access$initDeleteImageView(Lcom/smedialink/ui/topics/TopicProfileCell;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/smedialink/ui/topics/TopicProfileCell$deleteImageView$2;->invoke()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method
