.class Lorg/telegram/ui/ThemePreviewActivity$11;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field scrollingBackground:Z

.field startX:F

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 0

    .line 1187
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private checkMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1340
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6200(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$3600(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2100(Lorg/telegram/ui/ThemePreviewActivity;)[Landroid/widget/FrameLayout;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1341
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1, v1, v1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6300(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    .line 1343
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6202(Lorg/telegram/ui/ThemePreviewActivity;Z)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(Landroid/view/View;)Z
    .locals 2

    .line 1299
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$1600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1303
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->allowSelectChildAtPosition(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .line 1190
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 1191
    instance-of p4, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p4, :cond_8

    .line 1192
    move-object p4, p2

    check-cast p4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1193
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    .line 1194
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1196
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1197
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1198
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$1600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1200
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1203
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemePreviewActivity;->access$1600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 p2, 0x3e8

    .line 1205
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    .line 1206
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return p3

    .line 1211
    :cond_0
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v2

    .line 1212
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLayoutHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1213
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemePreviewActivity;->access$1600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemePreviewActivity;->access$1600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_1

    move v3, v4

    .line 1217
    :cond_1
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result p4

    const/16 v4, 0x30

    if-eqz p4, :cond_5

    .line 1218
    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p4}, Lorg/telegram/ui/ThemePreviewActivity;->access$1600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 p4, 0x0

    :cond_2
    const/16 v5, 0x14

    if-lt p4, v5, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p4, p4, 0x1

    .line 1226
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 1228
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemePreviewActivity;->access$1600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1230
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1231
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1232
    iget-object v5, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1234
    :cond_4
    iget-object v5, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_5

    .line 1235
    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1236
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1248
    :cond_5
    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, v3, p2

    if-ge p2, v1, :cond_6

    .line 1249
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int v3, v1, p2

    :cond_6
    const/4 p2, 0x0

    cmpl-float p4, v2, p2

    if-eqz p4, :cond_7

    .line 1252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1253
    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    const/16 p2, 0x2c

    .line 1255
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr v3, p2

    int-to-float p2, v3

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    .line 1256
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    if-eqz p4, :cond_8

    .line 1258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return p3
.end method

.method protected onChildPressed(Landroid/view/View;FFZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1288
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    .line 1289
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1290
    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isInsideBackground(FF)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1294
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1349
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 1350
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$100(Lorg/telegram/ui/ThemePreviewActivity;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1311
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity$11;->checkMotionEvent(Landroid/view/MotionEvent;)V

    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6100(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 1313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->startX:F

    .line 1315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 1316
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1317
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1319
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->scrollingBackground:Z

    goto :goto_0

    .line 1320
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1321
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->scrollingBackground:Z

    if-nez v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 1322
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1323
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1325
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->scrollingBackground:Z

    goto :goto_0

    .line 1327
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1328
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->scrollingBackground:Z

    .line 1329
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1330
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1333
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/GestureDetector2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1335
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->scrollingBackground:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method public setTranslationY(F)V
    .locals 2

    .line 1267
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1268
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5700(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    .line 1269
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5700(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1270
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5700(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1273
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5800(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1274
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5800(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_1

    .line 1275
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5800(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1278
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1279
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1281
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1282
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$11;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method
