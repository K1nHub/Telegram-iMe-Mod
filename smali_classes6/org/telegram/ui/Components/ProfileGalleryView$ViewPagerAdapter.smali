.class public Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;
.super Lorg/telegram/ui/Components/CircularViewPager$Adapter;
.source "ProfileGalleryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ProfileGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final imageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/BackupImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/ProfileGalleryView$Item;",
            ">;"
        }
    .end annotation
.end field

.field private parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final placeholderPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ProfileGalleryView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;-><init>()V

    .line 1035
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    .line 1036
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    .line 1044
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->context:Landroid/content/Context;

    .line 1045
    iput-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1047
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->placeholderPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    .line 1048
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;Lorg/telegram/ui/Components/BackupImageView;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 1033
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 1033
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 1033
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 1180
    check-cast p3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    .line 1181
    invoke-static {p3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1182
    invoke-static {p3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1184
    :cond_0
    iget-boolean p2, p3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->isActiveVideo:Z

    if-eqz p2, :cond_1

    return-void

    .line 1187
    :cond_1
    invoke-static {p3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object p2

    .line 1188
    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1189
    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 1190
    instance-of v0, p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_2

    .line 1191
    check-cast p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    :cond_2
    const/4 p3, 0x0

    .line 1194
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1195
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1196
    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getExtraCount()I
    .locals 2

    .line 1227
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1228
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$200(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1232
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getOffscreenPageLimit()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    check-cast p1, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    :cond_0
    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1033
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/ProfileGalleryView$Item;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1073
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    .line 1074
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result v4

    .line 1076
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$200(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    .line 1077
    iput-boolean v6, v3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->isActiveVideo:Z

    .line 1078
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1079
    new-instance v2, Lorg/telegram/ui/Components/ProfileGalleryView$TextureStubView;

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Components/ProfileGalleryView$TextureStubView;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;)V

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$802(Lorg/telegram/ui/Components/ProfileGalleryView$Item;Landroid/view/View;)Landroid/view/View;

    .line 1081
    :cond_0
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1082
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-object v3

    :cond_2
    const/4 v5, 0x0

    .line 1086
    iput-boolean v5, v3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->isActiveVideo:Z

    .line 1089
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1090
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1092
    :cond_3
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1093
    new-instance v7, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v9, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->context:Landroid/content/Context;

    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->placeholderPaint:Landroid/graphics/Paint;

    invoke-direct {v7, v8, v9, v2, v10}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;ILandroid/graphics/Paint;)V

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$702(Lorg/telegram/ui/Components/ProfileGalleryView$Item;Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    .line 1094
    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1097
    :cond_4
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1098
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1101
    :cond_5
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    .line 1102
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$200(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, v4, -0x1

    goto :goto_0

    :cond_6
    move v1, v4

    :goto_0
    const/4 v2, 0x2

    const-string v7, "b"

    const-string v8, "avatar_"

    const/4 v9, 0x0

    if-nez v1, :cond_11

    .line 1105
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v10, :cond_7

    move-object v10, v9

    goto :goto_1

    :cond_7
    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1106
    :goto_1
    instance-of v11, v10, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v11, :cond_8

    move-object v11, v10

    check-cast v11, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1108
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v7

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1109
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v7

    invoke-virtual {v11, v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addSecondParentView(Landroid/view/View;)V

    .line 1110
    invoke-virtual {v11, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setInvalidateParentViewWithSecond(Z)V

    move v10, v5

    goto/16 :goto_b

    .line 1112
    :cond_8
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lorg/telegram/messenger/ImageLocation;

    .line 1113
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v10

    if-eqz v13, :cond_9

    move v11, v6

    goto :goto_2

    :cond_9
    move v11, v5

    :goto_2
    iput-boolean v11, v10, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->isVideo:Z

    .line 1114
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$900(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_a

    move v10, v6

    goto :goto_3

    :cond_a
    move v10, v5

    .line 1116
    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1000(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v11

    if-eqz v11, :cond_b

    if-eqz v13, :cond_b

    iget v11, v13, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v11, v2, :cond_b

    const-string v11, "avatar"

    move-object/from16 v17, v11

    goto :goto_4

    :cond_b
    move-object/from16 v17, v9

    .line 1121
    :goto_4
    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1100(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ImageLocation;

    .line 1122
    iget-object v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v12, :cond_d

    iget-object v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1200(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_5

    :cond_c
    iget-object v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v19, v12

    goto :goto_6

    :cond_d
    :goto_5
    move-object/from16 v19, v9

    .line 1123
    :goto_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1300(Lorg/telegram/ui/Components/ProfileGalleryView;)J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    if-eqz v19, :cond_e

    .line 1124
    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$900(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_e

    .line 1125
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v14

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lorg/telegram/messenger/ImageLocation;

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/ImageLocation;

    const/16 v18, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1500(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v16, v17

    move-object/from16 v17, v7

    move-object/from16 v22, v25

    invoke-virtual/range {v14 .. v22}, Lorg/telegram/ui/Components/BackupImageView;->setImageMedia(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    goto/16 :goto_b

    .line 1126
    :cond_e
    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1600(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 1127
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v14

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$900(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Lorg/telegram/messenger/ImageLocation;

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v18, v7

    check-cast v18, Lorg/telegram/messenger/ImageLocation;

    const/16 v19, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1600(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1500(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const/16 v24, 0x1

    invoke-virtual/range {v14 .. v25}, Lorg/telegram/ui/Components/BackupImageView;->setImageMedia(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_b

    .line 1129
    :cond_f
    iget-object v8, v11, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v8, :cond_10

    move-object/from16 v18, v7

    goto :goto_7

    :cond_10
    move-object/from16 v18, v9

    .line 1130
    :goto_7
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v11

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$900(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    const/4 v14, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lorg/telegram/messenger/ImageLocation;

    const/16 v16, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1100(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Lorg/telegram/messenger/ImageLocation;

    const/16 v19, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1500(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v22, v25

    invoke-virtual/range {v11 .. v22}, Lorg/telegram/ui/Components/BackupImageView;->setImageMedia(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_b

    .line 1134
    :cond_11
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lorg/telegram/messenger/ImageLocation;

    .line 1135
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v10

    if-eqz v13, :cond_12

    move v11, v6

    goto :goto_8

    :cond_12
    move v11, v5

    :goto_8
    iput-boolean v11, v10, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->isVideo:Z

    .line 1136
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$900(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_13

    move v10, v6

    goto :goto_9

    :cond_13
    move v10, v5

    .line 1137
    :goto_9
    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1100(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ImageLocation;

    if-eqz v11, :cond_14

    .line 1138
    iget-object v11, v11, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v11, :cond_14

    move-object/from16 v18, v7

    goto :goto_a

    :cond_14
    move-object/from16 v18, v9

    .line 1139
    :goto_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1300(Lorg/telegram/ui/Components/ProfileGalleryView;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1140
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v11

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$900(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    const/4 v14, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lorg/telegram/messenger/ImageLocation;

    const/16 v16, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1100(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Lorg/telegram/messenger/ImageLocation;

    const/16 v19, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1500(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    invoke-virtual/range {v11 .. v22}, Lorg/telegram/ui/Components/BackupImageView;->setImageMedia(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    .line 1142
    :goto_b
    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1700(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_15

    goto :goto_c

    :cond_15
    move v6, v10

    :goto_c
    if-eqz v6, :cond_18

    .line 1146
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1900(Lorg/telegram/ui/Components/ProfileGalleryView;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->access$1802(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;Lorg/telegram/ui/Components/RadialProgress2;)Lorg/telegram/ui/Components/RadialProgress2;

    .line 1147
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->access$1800(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v6

    if-nez v6, :cond_16

    .line 1148
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->access$1802(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;Lorg/telegram/ui/Components/RadialProgress2;)Lorg/telegram/ui/Components/RadialProgress2;

    .line 1149
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->access$1800(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgress2;->setOverrideAlpha(F)V

    .line 1150
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->access$1800(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7, v5, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 1151
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->access$1800(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v5

    const/high16 v6, 0x42000000    # 32.0f

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v6, v7, v7}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(IIII)V

    .line 1152
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1900(Lorg/telegram/ui/Components/ProfileGalleryView;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->access$1800(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1154
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2000(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1155
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_d

    .line 1157
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 1160
    :cond_18
    :goto_d
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter$1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter$1;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)V

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 1171
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 1173
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2200(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2200(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2300(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2300(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v7

    invoke-virtual {v1, v2, v5, v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(IIII)V

    .line 1174
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3

    .line 1058
    check-cast p2, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    .line 1059
    iget-boolean v0, p2, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->isActiveVideo:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1060
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1062
    :cond_1
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object p2

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1207
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1208
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1209
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1212
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1213
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1214
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1215
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$200(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1218
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    :goto_1
    if-ge v0, v1, :cond_3

    .line 1219
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1222
    :cond_3
    invoke-super {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
