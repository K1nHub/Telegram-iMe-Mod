.class final Lcom/iMe/fork/ui/view/TemplateCell$avatarView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TemplateCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/TemplateCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/Components/BackupImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/TemplateCell;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/TemplateCell;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplateCell$avatarView$2;->this$0:Lcom/iMe/fork/ui/view/TemplateCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/TemplateCell$avatarView$2;->invoke()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplateCell$avatarView$2;->this$0:Lcom/iMe/fork/ui/view/TemplateCell;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/TemplateCell;->access$initAvatarView(Lcom/iMe/fork/ui/view/TemplateCell;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    return-object v0
.end method
