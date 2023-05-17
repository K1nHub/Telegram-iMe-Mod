.class Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "FloatingDebugView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/content/Context;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    iput-object p2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$1100(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$1100(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    iget-object p1, p1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->type:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 226
    invoke-static {}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;->values()[Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    aget-object p1, v0, p1

    .line 228
    sget-object v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;->SIMPLE:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$1100(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    .line 254
    sget-object v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$4;->$SwitchMap$org$telegram$ui$Components$FloatingDebug$FloatingDebugController$DebugItemType:[I

    iget-object v1, p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->type:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;

    .line 269
    iget-object v0, p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;->access$1202(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    iget-object v0, p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->floatProperty:Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;->access$1302(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;F)F

    .line 271
    iget v0, p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->from:F

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;->access$1402(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;F)F

    .line 272
    iget v0, p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->to:F

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;->access$1502(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;F)F

    .line 273
    iget-object p2, p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->floatProperty:Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;->access$1602(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;)Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;

    .line 274
    invoke-virtual {p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;->invalidate()V

    goto :goto_0

    .line 262
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 263
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setTextColor(I)V

    .line 264
    iget-object p2, p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;

    .line 257
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->setTextColor(I)V

    .line 258
    iget-object p2, p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->title:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 235
    sget-object p1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$4;->$SwitchMap$org$telegram$ui$Components$FloatingDebug$FloatingDebugController$DebugItemType:[I

    invoke-static {}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;->values()[Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItemType;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 238
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 244
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/content/Context;)V

    goto :goto_0

    .line 241
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 247
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
