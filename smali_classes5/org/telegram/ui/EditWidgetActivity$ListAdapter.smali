.class Lorg/telegram/ui/EditWidgetActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "EditWidgetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/EditWidgetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/EditWidgetActivity;


# direct methods
.method public static synthetic $r8$lambda$DSsKbuKfWT3I3cbgW4RlMG2dRdM(Lorg/telegram/ui/EditWidgetActivity$ListAdapter;Lorg/telegram/ui/Cells/GroupCreateUserCell;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->lambda$onCreateViewHolder$0(Lorg/telegram/ui/Cells/GroupCreateUserCell;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/EditWidgetActivity;Landroid/content/Context;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 928
    iput-object p2, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lorg/telegram/ui/Cells/GroupCreateUserCell;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 966
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 967
    iget-object p2, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p2}, Lorg/telegram/ui/EditWidgetActivity;->access$1900(Lorg/telegram/ui/EditWidgetActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p3}, Lorg/telegram/ui/EditWidgetActivity;->access$200(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$1500(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$1700(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 1035
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$1800(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1037
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$1600(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 938
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 980
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto/16 :goto_4

    .line 1010
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 1011
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v4}, Lorg/telegram/ui/EditWidgetActivity;->access$1300(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1012
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1014
    iget-object v4, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v4}, Lorg/telegram/ui/EditWidgetActivity;->access$100(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v4

    sub-int/2addr v4, v1

    if-eq p2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p1, v0, v2, v2, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_4

    .line 1016
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1017
    iget-object v4, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v4}, Lorg/telegram/ui/EditWidgetActivity;->access$100(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v4

    sub-int/2addr v4, v1

    if-eq p2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {p1, v0, v2, v2, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_4

    .line 998
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    const-string p2, "windowBackgroundWhiteBlueText4"

    .line 999
    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object p2, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1002
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "switchTrackChecked"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1003
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "checkboxCheck"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1004
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v2, p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1005
    sget p2, Lorg/telegram/messenger/R$string;->SelectChats:I

    const-string v0, "SelectChats"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$1300(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-virtual {p1, p2, v2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 1006
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    const/4 p2, 0x7

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v3, p2, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_4

    .line 982
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$1600(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    if-ne p2, v0, :cond_a

    .line 984
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$500(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    if-nez v0, :cond_7

    .line 986
    sget v0, Lorg/telegram/messenger/R$string;->EditWidgetChatsInfo:I

    const-string v1, "EditWidgetChatsInfo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 987
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$500(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 988
    sget v0, Lorg/telegram/messenger/R$string;->EditWidgetContactsInfo:I

    const-string v1, "EditWidgetContactsInfo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 990
    :cond_8
    :goto_3
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "\n\n"

    .line 991
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->WidgetPasscode2:I

    const-string v2, "WidgetPasscode2"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 993
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    .line 959
    new-instance p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object p2, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 960
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 961
    sget v0, Lorg/telegram/messenger/R$drawable;->list_reorder:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 962
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 963
    sget v0, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    const/16 v1, 0x28

    const/4 v2, -0x1

    .line 964
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v3, v0, 0x10

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    new-instance v0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/EditWidgetActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/EditWidgetActivity$ListAdapter;Lorg/telegram/ui/Cells/GroupCreateUserCell;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 971
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const-string v1, "chats_pinnedIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 955
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    new-instance p2, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;

    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;-><init>(Lorg/telegram/ui/EditWidgetActivity;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/EditWidgetActivity;->access$302(Lorg/telegram/ui/EditWidgetActivity;Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;)Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;

    move-result-object p1

    goto :goto_1

    .line 951
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    const-string p2, "windowBackgroundWhite"

    .line 952
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 947
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 948
    iget-object p2, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 975
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1025
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1027
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public swapElements(II)Z
    .locals 5

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$1300(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    sub-int v0, p1, v0

    .line 1045
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->access$1300(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v1

    sub-int v1, p2, v1

    .line 1046
    iget-object v2, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v2}, Lorg/telegram/ui/EditWidgetActivity;->access$100(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v3}, Lorg/telegram/ui/EditWidgetActivity;->access$1300(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    if-ge v0, v2, :cond_1

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 1050
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v2}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1051
    iget-object v3, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v3}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1052
    iget-object v4, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v4}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1054
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
