.class final Lcom/smedialink/ui/music/NoPermissionMusicCell$requestButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NoPermissionMusicCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/music/NoPermissionMusicCell;-><init>(Landroid/app/Activity;)V
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

.field final synthetic this$0:Lcom/smedialink/ui/music/NoPermissionMusicCell;


# direct methods
.method public static synthetic $r8$lambda$wKX40oinGJRTEN2jQLwBPIDovjA(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/music/NoPermissionMusicCell$requestButton$2;->invoke$lambda$1$lambda$0(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/smedialink/ui/music/NoPermissionMusicCell;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/music/NoPermissionMusicCell$requestButton$2;->$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/smedialink/ui/music/NoPermissionMusicCell$requestButton$2;->this$0:Lcom/smedialink/ui/music/NoPermissionMusicCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const-string p1, "$context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 65
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/TextView;
    .locals 6

    .line 56
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smedialink/ui/music/NoPermissionMusicCell$requestButton$2;->$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/smedialink/ui/music/NoPermissionMusicCell$requestButton$2;->this$0:Lcom/smedialink/ui/music/NoPermissionMusicCell;

    iget-object v2, p0, Lcom/smedialink/ui/music/NoPermissionMusicCell$requestButton$2;->$context:Landroid/app/Activity;

    const/16 v3, 0x11

    .line 57
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x40800000    # 4.0f

    .line 58
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lcom/smedialink/ui/music/NoPermissionMusicCell;->access$getButtonDefaultColor$p(Lcom/smedialink/ui/music/NoPermissionMusicCell;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1}, Lcom/smedialink/ui/music/NoPermissionMusicCell;->access$getButtonPressedColor$p(Lcom/smedialink/ui/music/NoPermissionMusicCell;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    sget v3, Lorg/telegram/messenger/R$string;->PeopleNearbyAllowAccess:I

    const-string v4, "PeopleNearbyAllowAccess"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "fonts/rmedium.ttf"

    .line 60
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    .line 61
    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    invoke-static {v1}, Lcom/smedialink/ui/music/NoPermissionMusicCell;->access$getButtonTextColor$p(Lcom/smedialink/ui/music/NoPermissionMusicCell;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x42080000    # 34.0f

    .line 63
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    new-instance v1, Lcom/smedialink/ui/music/NoPermissionMusicCell$requestButton$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lcom/smedialink/ui/music/NoPermissionMusicCell$requestButton$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/smedialink/ui/music/NoPermissionMusicCell$requestButton$2;->invoke()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
