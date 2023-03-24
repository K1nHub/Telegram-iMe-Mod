.class Lorg/telegram/ui/Components/SharedMediaLayout$1;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    .line 1046
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    const/4 v5, 0x5

    if-eq v2, v5, :cond_0

    goto/16 :goto_6

    .line 1049
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    .line 1052
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, -0x1

    move v7, v3

    move v8, v6

    move v9, v8

    :goto_0
    if-ge v7, v5, :cond_14

    .line 1053
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1054
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v11

    .line 1055
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_1

    .line 1057
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getY()F

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 1058
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v13, v12

    sub-int/2addr v11, v13

    .line 1062
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v12

    if-lt v12, v11, :cond_2

    goto/16 :goto_5

    .line 1065
    :cond_2
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v11

    if-lt v11, v8, :cond_3

    if-ne v8, v6, :cond_4

    :cond_3
    move v8, v11

    :cond_4
    if-gt v11, v9, :cond_5

    if-ne v9, v6, :cond_6

    :cond_5
    move v9, v11

    :cond_6
    const/4 v11, 0x2

    new-array v11, v11, [I

    .line 1074
    instance-of v12, v10, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v12, :cond_8

    .line 1075
    move-object v12, v10

    check-cast v12, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 1076
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    if-nez v13, :cond_7

    goto/16 :goto_5

    .line 1080
    :cond_7
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 1081
    iget-object v13, v12, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1082
    invoke-virtual {v12, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1083
    aget v14, v11, v3

    iget-object v15, v12, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    add-int/2addr v14, v15

    aput v14, v11, v3

    .line 1084
    aget v14, v11, v4

    iget-object v12, v12, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v14, v12

    aput v14, v11, v4

    goto :goto_1

    .line 1086
    :cond_8
    instance-of v12, v10, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v12, :cond_9

    .line 1087
    move-object v12, v10

    check-cast v12, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1088
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    .line 1089
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 1090
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v12

    .line 1091
    invoke-virtual {v12}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    .line 1092
    invoke-virtual {v12, v11}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_1

    .line 1094
    :cond_9
    instance-of v12, v10, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v12, :cond_a

    .line 1095
    move-object v12, v10

    check-cast v12, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1096
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    if-eqz v13, :cond_b

    .line 1097
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 1098
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    .line 1099
    invoke-virtual {v12, v11}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    goto :goto_1

    .line 1101
    :cond_a
    instance-of v12, v10, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v12, :cond_b

    .line 1102
    move-object v12, v10

    check-cast v12, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 1103
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 1104
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 1105
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLinkImageView()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    .line 1106
    invoke-virtual {v12, v11}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    goto :goto_1

    :cond_b
    move-object v13, v1

    :goto_1
    if-eqz v13, :cond_13

    .line 1110
    new-instance v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v1}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 1111
    aget v5, v11, v3

    iput v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 1112
    aget v5, v11, v4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_c

    move v6, v3

    goto :goto_2

    :cond_c
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_2
    sub-int/2addr v5, v6

    iput v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 1113
    iput-object v2, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 1114
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    .line 1115
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 1116
    aget v4, v11, v4

    neg-int v4, v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->animatingImageViewYOffset:I

    .line 1117
    iput-object v13, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1118
    iput-boolean v3, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->allowTakeAnimation:Z

    .line 1119
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    .line 1120
    iget-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 1121
    iget-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1122
    iput v3, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    .line 1123
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->starOffset:I

    .line 1124
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    .line 1125
    iget v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    const/16 v5, 0x24

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    .line 1128
    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1129
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 1132
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_e

    .line 1133
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    const/high16 v6, 0x40200000    # 2.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    goto :goto_3

    :cond_e
    move v5, v3

    .line 1135
    :goto_3
    instance-of v6, v10, Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/high16 v7, 0x41000000    # 8.0f

    if-eqz v6, :cond_f

    .line 1136
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    .line 1138
    :cond_f
    iget v8, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    sub-int/2addr v5, v8

    .line 1139
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v8

    if-le v5, v8, :cond_10

    .line 1140
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v5, v4

    neg-int v4, v5

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_4

    .line 1142
    :cond_10
    iget v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz v6, :cond_11

    .line 1144
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    :cond_11
    if-ltz v4, :cond_12

    .line 1147
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_12
    :goto_4
    return-object v1

    :cond_13
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1156
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-nez v2, :cond_16

    if-ltz v8, :cond_16

    if-ltz v9, :cond_16

    .line 1157
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v2

    move/from16 v5, p3

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getPositionForIndex(I)I

    move-result v2

    if-gt v2, v8, :cond_15

    .line 1160
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1161
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->scrollToSharedMedia()V

    goto :goto_6

    :cond_15
    if-lt v2, v9, :cond_16

    if-ltz v9, :cond_16

    .line 1163
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    .line 1164
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->scrollToSharedMedia()V

    :cond_16
    :goto_6
    return-object v1
.end method
