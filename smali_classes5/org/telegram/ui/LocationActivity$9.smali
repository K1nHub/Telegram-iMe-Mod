.class Lorg/telegram/ui/LocationActivity$9;
.super Lorg/telegram/ui/Adapters/LocationActivityAdapter;
.source "LocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstSet:Z

.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;IJZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 957
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;-><init>(Landroid/content/Context;IJZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x1

    .line 963
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity$9;->firstSet:Z

    return-void
.end method


# virtual methods
.method protected onDirectionClick()V
    .locals 2

    .line 960
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->access$1000(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/LocationActivity$LiveLocation;)V

    return-void
.end method

.method public setLiveLocations(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/LocationActivity$LiveLocation;",
            ">;)V"
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move v1, v0

    move v2, v1

    .line 970
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 971
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-eqz v3, :cond_0

    .line 972
    iget-object v3, v3, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 977
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity$9;->firstSet:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-ne v2, v3, :cond_3

    .line 978
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-wide v4, v4, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/LocationActivity;->access$2902(Lorg/telegram/ui/LocationActivity;J)J

    .line 980
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity$9;->firstSet:Z

    .line 981
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 983
    :cond_5
    invoke-super {p0, p1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setLiveLocations(Ljava/util/ArrayList;)V

    return-void
.end method
