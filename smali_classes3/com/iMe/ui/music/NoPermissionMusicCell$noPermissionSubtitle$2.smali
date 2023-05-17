.class final Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionSubtitle$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NoPermissionMusicCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/music/NoPermissionMusicCell;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/app/Activity;

.field final synthetic this$0:Lcom/iMe/ui/music/NoPermissionMusicCell;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/iMe/ui/music/NoPermissionMusicCell;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionSubtitle$2;->$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionSubtitle$2;->this$0:Lcom/iMe/ui/music/NoPermissionMusicCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/TextView;
    .locals 3

    .line 47
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionSubtitle$2;->$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionSubtitle$2;->this$0:Lcom/iMe/ui/music/NoPermissionMusicCell;

    const/16 v2, 0x11

    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 49
    sget v2, Lorg/telegram/messenger/R$string;->music_device_no_permission_subtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {v1}, Lcom/iMe/ui/music/NoPermissionMusicCell;->access$getSubtitleColor$p(Lcom/iMe/ui/music/NoPermissionMusicCell;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/iMe/ui/music/NoPermissionMusicCell$noPermissionSubtitle$2;->invoke()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
