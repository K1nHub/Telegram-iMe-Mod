.class public Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PhotoFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToolsAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method public static synthetic $r8$lambda$0krgHb7WblSm-Pbun4oy6OZgkWI(Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->lambda$onCreateViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EOKeFucSDUYP_lu9dSpbDzFOUJQ(Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->lambda$onCreateViewHolder$0(II)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/content/Context;)V
    .locals 0

    .line 1157
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1158
    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(II)V
    .locals 1

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1179
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 1180
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1181
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 1182
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1183
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 1184
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 1185
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 1186
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 1187
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1188
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 1189
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1190
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 1191
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1192
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1193
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1194
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 1195
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1196
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 1197
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1198
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 1199
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1200
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 1201
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 1203
    :cond_b
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1204
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Landroid/view/View;)V
    .locals 2

    .line 1210
    check-cast p1, Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    .line 1211
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1212
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$3000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->getCurrentColor()I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$3102(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    goto :goto_0

    .line 1215
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->getCurrentColor()I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$3302(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    .line 1217
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1218
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1163
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$3000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$3200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1232
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 1264
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    .line 1265
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$3000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 1267
    sget p2, Lorg/telegram/messenger/R$string;->TintShadows:I

    const-string v0, "TintShadows"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$3100(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->setIconAndTextAndValue(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1268
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$3200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_e

    .line 1269
    sget p2, Lorg/telegram/messenger/R$string;->TintHighlights:I

    const-string v0, "TintHighlights"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$3300(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->setIconAndTextAndValue(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1234
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    .line 1235
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setTag(Ljava/lang/Object;)V

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    const/16 v2, 0x64

    if-ne p2, v0, :cond_3

    .line 1237
    sget p2, Lorg/telegram/messenger/R$string;->Enhance:I

    const-string v0, "Enhance"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto/16 :goto_0

    .line 1238
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    const/16 v3, -0x64

    if-ne p2, v0, :cond_4

    .line 1239
    sget p2, Lorg/telegram/messenger/R$string;->Highlights:I

    const-string v0, "Highlights"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v3, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto/16 :goto_0

    .line 1240
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 1241
    sget p2, Lorg/telegram/messenger/R$string;->Contrast:I

    const-string v0, "Contrast"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v3, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto/16 :goto_0

    .line 1242
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 1243
    sget p2, Lorg/telegram/messenger/R$string;->Exposure:I

    const-string v0, "Exposure"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v3, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto/16 :goto_0

    .line 1244
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 1245
    sget p2, Lorg/telegram/messenger/R$string;->Warmth:I

    const-string v0, "Warmth"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v3, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto/16 :goto_0

    .line 1246
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 1247
    sget p2, Lorg/telegram/messenger/R$string;->Saturation:I

    const-string v0, "Saturation"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v3, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto/16 :goto_0

    .line 1248
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 1249
    sget p2, Lorg/telegram/messenger/R$string;->Vignette:I

    const-string v0, "Vignette"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto/16 :goto_0

    .line 1250
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_a

    .line 1251
    sget p2, Lorg/telegram/messenger/R$string;->Shadows:I

    const-string v0, "Shadows"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v3, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto :goto_0

    .line 1252
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 1253
    sget p2, Lorg/telegram/messenger/R$string;->Grain:I

    const-string v0, "Grain"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto :goto_0

    .line 1254
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 1255
    sget p2, Lorg/telegram/messenger/R$string;->Sharpen:I

    const-string v0, "Sharpen"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto :goto_0

    .line 1256
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_d

    .line 1257
    sget p2, Lorg/telegram/messenger/R$string;->Fade:I

    const-string v0, "Fade"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto :goto_0

    .line 1258
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_e

    .line 1259
    sget p2, Lorg/telegram/messenger/R$string;->SoftenSkin:I

    const-string v0, "SoftenSkin"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v0

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    :cond_e
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    if-nez p2, :cond_0

    .line 1175
    new-instance p1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$500(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1177
    new-instance p2, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setSeekBarDelegate(Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;)V

    goto :goto_0

    .line 1208
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;-><init>(Landroid/content/Context;)V

    .line 1209
    new-instance p2, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
