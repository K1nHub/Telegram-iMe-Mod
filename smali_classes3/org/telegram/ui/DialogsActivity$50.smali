.class Lorg/telegram/ui/DialogsActivity$50;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->updateSpeedItem(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0

    .line 8054
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$50;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$50;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 8057
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_4

    .line 8058
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$50;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 8059
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$50;->val$visible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8060
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 8062
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-eqz p1, :cond_4

    .line 8063
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$50;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$35900(Lorg/telegram/ui/DialogsActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object p1

    const/4 v0, 0x2

    .line 8064
    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 8067
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->video_sections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v1, v3, :cond_1

    .line 8068
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->video_sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v4, :cond_4

    .line 8074
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$50;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$36000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    goto :goto_2

    :cond_2
    const/16 v1, 0x17

    if-lt p1, v1, :cond_3

    .line 8080
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    .line 8082
    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setVisible(ZZ)Z

    :cond_4
    :goto_2
    return-void
.end method
