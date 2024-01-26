.class Lorg/telegram/ui/ProfileActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public static synthetic $r8$lambda$CiC4UC0xQtm0EzucCZiMm8b3cGw(Lorg/telegram/ui/ProfileActivity$ListAdapter;Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onBindViewHolder$3(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LSOZsfLye4RNQvpr3FS5aIk_tRo(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onBindViewHolder$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TQdUAWPzwag9MLv8txaKw8Zq6B8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e_l7kNiuVDTFP1JNKZAsk9v25XM(Lorg/telegram/ui/ProfileActivity$ListAdapter;Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onBindViewHolder$2(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kBIRRd2NgElTzkzS2phYjYCPbm4(Lorg/telegram/ui/ProfileActivity$ListAdapter;Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onBindViewHolder$1(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x_1LEQkHvTYqIq8hW8ZhttLw4Sg(Lorg/telegram/ui/ProfileActivity$ListAdapter;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onBindViewHolder$4(Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yMMv6ZDBdwqzp3kuZNUqV_WOALA(Lorg/telegram/ui/ProfileActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->lambda$onBindViewHolder$6(Lorg/telegram/ui/ProfileActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 10849
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 10850
    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private alsoUsernamesString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_username;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    .line 11609
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    move v1, p2

    .line 11610
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 11612
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    .line 11613
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v2, v1, -0x1

    .line 11615
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11618
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 11619
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    move p3, p2

    .line 11620
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    .line 11621
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    .line 11622
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11623
    new-instance v3, Lorg/telegram/ui/ProfileActivity$ListAdapter$7;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$7;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Ljava/lang/String;)V

    .line 11637
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v4, 0x21

    .line 11623
    invoke-virtual {v2, v3, p2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11638
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    invoke-static {v3, v5, p2}, Lorg/telegram/ui/ProfileActivity;->access$14500(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v1, p2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11639
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11640
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_4

    const-string v1, ", "

    .line 11641
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 11644
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->UsernameAlso:I

    const-string p3, "UsernameAlso"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 11645
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, "%1$s"

    .line 11647
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_6

    add-int/lit8 v0, p2, 0x4

    .line 11649
    invoke-virtual {p3, p2, v0, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    return-object p3
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;
    .locals 1

    .line 11079
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->presenter:Lcom/iMe/feature/profile/ProfilePresenter;

    invoke-virtual {v0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->onSocialClicked(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    .line 11080
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;
    .locals 1

    .line 11083
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ProfileActivity;->showSocialMenuBottomSheet(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    .line 11084
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$3(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;
    .locals 1

    .line 11092
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->presenter:Lcom/iMe/feature/profile/ProfilePresenter;

    invoke-virtual {v0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->onSocialAddClicked(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    .line 11093
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$4(Ljava/util/List;)Lkotlin/Unit;
    .locals 3

    .line 11087
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11089
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    .line 11088
    invoke-static {v1, p1, v2}, Lcom/iMe/feature/socialMedias/SocialDialog;->newInstance(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/iMe/feature/socialMedias/SocialDialog;

    move-result-object p1

    .line 11087
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 11097
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$5(Landroid/view/View;)V
    .locals 0

    .line 11137
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$33500(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$6(Lorg/telegram/ui/ProfileActivity;Landroid/view/View;)V
    .locals 0

    .line 11292
    invoke-static {p0, p1}, Lorg/telegram/ui/ProfileActivity;->access$33400(Lorg/telegram/ui/ProfileActivity;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "On SocialCell click ovverided"

    .line 10859
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 11705
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 11711
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 11712
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SOCIAL:I

    return p1

    .line 11714
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 11715
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPIC_PROFILE:I

    return p1

    .line 11717
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 11718
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_DETAIL_WITH_RANK:I

    return p1

    .line 11721
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11722
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto/16 :goto_7

    .line 11724
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto/16 :goto_6

    .line 11726
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto/16 :goto_5

    .line 11728
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto/16 :goto_4

    .line 11730
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11731
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11732
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11733
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11734
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11735
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11736
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11737
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11738
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto/16 :goto_3

    .line 11740
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x5

    return p1

    .line 11742
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    const/4 p1, 0x6

    return p1

    .line 11744
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    goto/16 :goto_2

    .line 11746
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11747
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11748
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11749
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$33000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$33100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    goto :goto_1

    .line 11751
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-lt p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ge p1, v0, :cond_c

    const/16 p1, 0x8

    return p1

    .line 11753
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$33200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d

    const/16 p1, 0xb

    return p1

    .line 11755
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_e

    const/16 p1, 0xc

    return p1

    .line 11757
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_f

    const/16 p1, 0xd

    return p1

    .line 11759
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_10

    const/16 p1, 0xe

    return p1

    .line 11761
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    goto :goto_0

    .line 11763
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$33300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_12

    const/16 p1, 0x11

    return p1

    .line 11765
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_13

    const/16 p1, 0x12

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_14
    :goto_0
    const/16 p1, 0xf

    return p1

    :cond_15
    :goto_1
    const/4 p1, 0x7

    return p1

    :cond_16
    :goto_2
    const/16 p1, 0x14

    return p1

    :cond_17
    :goto_3
    const/4 p1, 0x4

    return p1

    :cond_18
    :goto_4
    const/4 p1, 0x3

    return p1

    :cond_19
    :goto_5
    const/16 p1, 0x13

    return p1

    :cond_1a
    :goto_6
    const/4 p1, 0x2

    return p1

    :cond_1b
    :goto_7
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 11666
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 11667
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 11669
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11670
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11671
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11672
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11673
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11674
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 11679
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11680
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11681
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11682
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11683
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11684
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 11685
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2

    .line 11687
    :cond_4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, v0, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_5

    .line 11688
    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    .line 11689
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object v0

    .line 11690
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_5

    .line 11691
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 11692
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 11697
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eq p1, v2, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/4 v0, 0x7

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb

    if-eq p1, v0, :cond_6

    const/16 v0, 0xc

    if-eq p1, v0, :cond_6

    const/16 v0, 0xd

    if-eq p1, v0, :cond_6

    const/16 v0, 0x9

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 11073
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$15400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v4, v3, Lcom/iMe/feature/profile/ProfileSocialCell;

    if-eqz v4, :cond_0

    .line 11074
    check-cast v3, Lcom/iMe/feature/profile/ProfileSocialCell;

    .line 11075
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->presenter:Lcom/iMe/feature/profile/ProfilePresenter;

    if-eqz v0, :cond_9d

    .line 11077
    invoke-virtual {v0}, Lcom/iMe/feature/profile/ProfilePresenter;->getProfileUiState()Lcom/iMe/feature/profile/ProfileUiState;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    new-instance v4, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    new-instance v5, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    .line 11076
    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/iMe/feature/profile/ProfileSocialCell;->updateState(Lcom/iMe/feature/profile/ProfileUiState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_3b

    .line 11100
    :cond_0
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$24800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    .line 11101
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    :goto_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3b

    .line 11102
    :cond_2
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$24900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-string v6, "SettingsHelp"

    const/4 v7, 0x0

    if-eq v2, v3, :cond_3

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_6

    :cond_3
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v8, v3, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v8, :cond_6

    .line 11103
    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 11104
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 11105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 11106
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v2, v0, :cond_4

    .line 11107
    sget v0, Lorg/telegram/messenger/R$string;->settings_tools:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_settings_tools:I

    invoke-virtual {v3, v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_3b

    .line 11108
    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v2, v0, :cond_5

    .line 11109
    sget v0, Lorg/telegram/messenger/R$string;->topics:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_select_26:I

    invoke-virtual {v3, v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_3b

    .line 11110
    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v2, v0, :cond_9d

    .line 11111
    sget v0, Lorg/telegram/messenger/R$string;->SettingsHelp:I

    invoke-static {v6, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_help:I

    invoke-virtual {v3, v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_3b

    .line 11113
    :cond_6
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$15500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-wide/16 v8, 0x0

    if-ne v2, v3, :cond_e

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v11, v3, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;

    if-eqz v11, :cond_e

    .line 11114
    check-cast v3, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;

    .line 11116
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9

    .line 11117
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11118
    sget v0, Lorg/telegram/messenger/R$string;->profile_bot_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 11119
    :cond_7
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    if-nez v0, :cond_8

    .line 11120
    sget v0, Lorg/telegram/messenger/R$string;->profile_user_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 11122
    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->profile_my_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 11124
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$300(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_c

    .line 11125
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 11126
    sget v0, Lorg/telegram/messenger/R$string;->profile_album_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 11127
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_b

    .line 11128
    sget v0, Lorg/telegram/messenger/R$string;->profile_channel_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 11130
    :cond_b
    sget v0, Lorg/telegram/messenger/R$string;->profile_group_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_c
    const/4 v10, 0x0

    .line 11133
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25300(Lorg/telegram/ui/ProfileActivity;)Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 11134
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25300(Lorg/telegram/ui/ProfileActivity;)Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;->getLevel()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;->setAccountLevel(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    .line 11135
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25300(Lorg/telegram/ui/ProfileActivity;)Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;->isOwnLevel()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11136
    new-instance v0, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    invoke-virtual {v3, v0}, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;->setBadgeClickListener(Landroid/view/View$OnClickListener;)V

    .line 11141
    :cond_d
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25400(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v10, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_3b

    .line 11142
    :cond_e
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_f

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v11, v3, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v11, :cond_f

    .line 11143
    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    .line 11144
    sget v0, Lorg/telegram/messenger/R$string;->topic:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 11145
    invoke-virtual {v3, v7, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setExpandableMode(ZZ)V

    goto/16 :goto_3b

    .line 11146
    :cond_f
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_10

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v11, v3, Lcom/iMe/ui/topics/TopicProfileCell;

    if-eqz v11, :cond_10

    .line 11147
    check-cast v3, Lcom/iMe/ui/topics/TopicProfileCell;

    .line 11148
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/iMe/fork/controller/ForkTopicsController;->getTopicForDialog(J)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/iMe/ui/topics/TopicProfileCell;->setData(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    goto/16 :goto_3b

    .line 11150
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const-string v11, "ChannelMembers"

    const/4 v12, -0x1

    if-eq v3, v5, :cond_92

    const/4 v6, 0x2

    if-eq v3, v6, :cond_74

    const/4 v13, 0x3

    if-eq v3, v13, :cond_69

    const/16 v14, 0xc

    const/16 v15, 0x8

    if-eq v3, v4, :cond_32

    const/4 v4, 0x6

    const-string v10, "Notifications"

    if-eq v3, v4, :cond_22

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1e

    if-eq v3, v15, :cond_16

    if-eq v3, v14, :cond_15

    const/16 v4, 0xf

    if-eq v3, v4, :cond_13

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3b

    .line 11593
    :pswitch_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 11595
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_11

    .line 11596
    sget v2, Lorg/telegram/messenger/R$string;->debug_test_backend:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v3

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_3b

    .line 11597
    :cond_11
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$32000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_12

    .line 11598
    sget v2, Lorg/telegram/messenger/R$string;->debug_option_theme_switch:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isDebugThemeSwitchEnabled:Z

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_3b

    .line 11600
    :cond_12
    sget v2, Lorg/telegram/messenger/R$string;->Notifications:I

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v8

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v10

    invoke-virtual {v3, v8, v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_3b

    .line 11588
    :pswitch_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 11589
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11590
    sget v2, Lorg/telegram/messenger/R$string;->BotAddToGroupOrChannelInfo:I

    const-string v3, "BotAddToGroupOrChannelInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    .line 11584
    :cond_13
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SettingsSuggestionCell;

    .line 11585
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$24700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_14

    goto :goto_2

    :cond_14
    move v5, v7

    :goto_2
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/SettingsSuggestionCell;->setType(I)V

    goto/16 :goto_3b

    .line 11581
    :cond_15
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_3b

    .line 11540
    :cond_16
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v8, v0

    check-cast v8, Lorg/telegram/ui/Cells/UserCell;

    .line 11543
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31900(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 11544
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31900(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$15700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    goto :goto_3

    .line 11546
    :cond_17
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$15700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 11550
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_9d

    .line 11554
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v3, :cond_1a

    .line 11555
    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 11556
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 11557
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    :goto_4
    move-object v10, v3

    goto :goto_5

    .line 11559
    :cond_18
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v4, :cond_19

    .line 11560
    sget v3, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    const-string v4, "ChannelCreator"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 11561
    :cond_19
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz v3, :cond_1c

    .line 11562
    sget v3, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    const-string v4, "ChannelAdmin"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 11568
    :cond_1a
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v3, :cond_1b

    .line 11569
    sget v3, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    const-string v4, "ChannelCreator"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 11570
    :cond_1b
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v3, :cond_1c

    .line 11571
    sget v3, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    const-string v4, "ChannelAdmin"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_1c
    const/4 v10, 0x0

    .line 11576
    :goto_5
    invoke-virtual {v8, v10}, Lorg/telegram/ui/Cells/UserCell;->setAdminRole(Ljava/lang/String;)V

    .line 11577
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    sub-int/2addr v0, v5

    if-eq v2, v0, :cond_1d

    move v13, v5

    goto :goto_6

    :cond_1d
    move v13, v7

    :goto_6
    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_3b

    .line 11530
    :cond_1e
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11531
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11533
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1f

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v3, v12, :cond_1f

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v3, v12, :cond_1f

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v3, v12, :cond_1f

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v3, v12, :cond_21

    :cond_1f
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v2, v3, :cond_21

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v2, v3, :cond_21

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_20

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$31700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v2, v12, :cond_20

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v2, v12, :cond_20

    goto :goto_7

    .line 11536
    :cond_20
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3b

    .line 11534
    :cond_21
    :goto_7
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3b

    .line 11467
    :cond_22
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 11468
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_9d

    .line 11469
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$31400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 11471
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_23

    .line 11472
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    goto :goto_8

    .line 11473
    :cond_23
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_24

    .line 11474
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    goto :goto_8

    .line 11476
    :cond_24
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$300(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    neg-long v3, v3

    .line 11478
    :goto_8
    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JJ)Ljava/lang/String;

    move-result-object v8

    .line 11480
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "custom_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 11481
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notify2_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    .line 11482
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "notify2_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 11483
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "notifyuntil_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v12, v13, :cond_2a

    const v8, 0x7fffffff

    if-eq v2, v8, :cond_2a

    .line 11486
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    sub-int/2addr v2, v3

    if-gtz v2, :cond_26

    if-eqz v9, :cond_25

    .line 11489
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsCustom:I

    const-string v3, "NotificationsCustom"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 11491
    :cond_25
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    const-string v3, "NotificationsOn"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object v3, v2

    move v2, v5

    goto/16 :goto_e

    :cond_26
    const/16 v3, 0xe10

    const-string v4, "WillUnmuteIn"

    if-ge v2, v3, :cond_27

    .line 11495
    sget v3, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    new-array v8, v5, [Ljava/lang/Object;

    div-int/lit8 v2, v2, 0x3c

    new-array v9, v7, [Ljava/lang/Object;

    const-string v11, "Minutes"

    invoke-static {v11, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v7

    invoke-static {v4, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_a
    move-object v3, v2

    move v2, v7

    goto/16 :goto_e

    :cond_27
    const v3, 0x15180

    const/high16 v8, 0x42700000    # 60.0f

    if-ge v2, v3, :cond_28

    .line 11497
    sget v3, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    new-array v9, v5, [Ljava/lang/Object;

    int-to-float v2, v2

    div-float/2addr v2, v8

    div-float/2addr v2, v8

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v2, v11

    new-array v8, v7, [Ljava/lang/Object;

    const-string v11, "Hours"

    invoke-static {v11, v2, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v7

    invoke-static {v4, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_28
    const v3, 0x1e13380

    if-ge v2, v3, :cond_29

    .line 11499
    sget v3, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    new-array v9, v5, [Ljava/lang/Object;

    int-to-float v2, v2

    div-float/2addr v2, v8

    div-float/2addr v2, v8

    const/high16 v8, 0x41c00000    # 24.0f

    div-float/2addr v2, v8

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v2, v11

    new-array v8, v7, [Ljava/lang/Object;

    const-string v11, "Days"

    invoke-static {v11, v2, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v7

    invoke-static {v4, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_29
    move v2, v7

    const/4 v3, 0x0

    goto :goto_e

    :cond_2a
    if-nez v12, :cond_2c

    if-eqz v11, :cond_2b

    goto :goto_b

    .line 11508
    :cond_2b
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$31500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v2

    goto :goto_c

    :cond_2c
    if-ne v12, v5, :cond_2d

    :goto_b
    move v2, v5

    goto :goto_c

    :cond_2d
    move v2, v7

    :goto_c
    if-eqz v2, :cond_2e

    if-eqz v9, :cond_2e

    .line 11514
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsCustom:I

    const-string v4, "NotificationsCustom"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_2e
    if-eqz v2, :cond_2f

    .line 11516
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    const-string v4, "NotificationsOn"

    goto :goto_d

    :cond_2f
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    const-string v4, "NotificationsOff"

    :goto_d
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_e
    if-nez v3, :cond_30

    .line 11520
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    const-string v4, "NotificationsOff"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 11522
    :cond_30
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity;->notificationsExceptionTopics:Ljava/util/HashSet;

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    .line 11523
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v8, v8, Lorg/telegram/ui/ProfileActivity;->notificationsExceptionTopics:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    const-string v9, "NotificationTopicExceptionsDesctription"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity;->notificationsExceptionTopics:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v5

    invoke-static {v4, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 11525
    :cond_31
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$10600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setAnimationsEnabled(Z)V

    .line 11526
    sget v4, Lorg/telegram/messenger/R$string;->Notifications:I

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v2, v7}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_3b

    .line 11332
    :cond_32
    :pswitch_2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 11333
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 11334
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 11335
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_34

    .line 11336
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    .line 11338
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-nez v2, :cond_33

    .line 11339
    sget v2, Lorg/telegram/messenger/R$string;->ShortMessageLifetimeForever:I

    const-string v3, "ShortMessageLifetimeForever"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 11341
    :cond_33
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v2

    .line 11343
    :goto_f
    sget v3, Lorg/telegram/messenger/R$string;->MessageLifetime:I

    const-string v4, "MessageLifetime"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v7, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_1d

    .line 11344
    :cond_34
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_35

    .line 11345
    sget v2, Lorg/telegram/messenger/R$string;->Unblock:I

    const-string v3, "Unblock"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 11346
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0, v12, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_1d

    .line 11347
    :cond_35
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 11348
    new-instance v2, Lorg/telegram/ui/Components/IdenticonDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/IdenticonDrawable;-><init>()V

    .line 11349
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$9500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 11350
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/IdenticonDrawable;->setEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 11351
    sget v3, Lorg/telegram/messenger/R$string;->EncryptionKey:I

    const-string v4, "EncryptionKey"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_1d

    .line 11352
    :cond_36
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_38

    .line 11353
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-virtual {v0, v12, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 11354
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_37

    .line 11355
    sget v2, Lorg/telegram/messenger/R$string;->ProfileJoinGroup:I

    const-string v3, "ProfileJoinGroup"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 11357
    :cond_37
    sget v2, Lorg/telegram/messenger/R$string;->ProfileJoinChannel:I

    const-string v3, "ProfileJoinChannel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 11359
    :cond_38
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-string v4, "%d"

    if-ne v2, v3, :cond_40

    .line 11360
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 11361
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_3a

    .line 11362
    sget v3, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    const-string v6, "ChannelSubscribers"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    sub-int/2addr v8, v5

    if-eq v2, v8, :cond_39

    goto :goto_10

    :cond_39
    move v5, v7

    :goto_10
    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1d

    .line 11364
    :cond_3a
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    sub-int/2addr v8, v5

    if-eq v2, v8, :cond_3b

    goto :goto_11

    :cond_3b
    move v5, v7

    :goto_11
    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1d

    .line 11367
    :cond_3c
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_3e

    .line 11368
    sget v3, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    const-string v4, "ChannelSubscribers"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_3d

    goto :goto_12

    :cond_3d
    move v5, v7

    :goto_12
    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11370
    :cond_3e
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_3f

    goto :goto_13

    :cond_3f
    move v5, v7

    :goto_13
    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11373
    :cond_40
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_42

    .line 11374
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_68

    .line 11375
    sget v3, Lorg/telegram/messenger/R$string;->SubscribeRequests:I

    const-string v6, "SubscribeRequests"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_requests:I

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    sub-int/2addr v8, v5

    if-eq v2, v8, :cond_41

    goto :goto_14

    :cond_41
    move v5, v7

    :goto_14
    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1d

    .line 11377
    :cond_42
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_46

    .line 11378
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 11379
    sget v3, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    const-string v6, "ChannelAdministrators"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    sub-int/2addr v8, v5

    if-eq v2, v8, :cond_43

    goto :goto_15

    :cond_43
    move v5, v7

    :goto_15
    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1d

    .line 11381
    :cond_44
    sget v3, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    const-string v4, "ChannelAdministrators"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_45

    goto :goto_16

    :cond_45
    move v5, v7

    :goto_16
    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11383
    :cond_46
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_48

    .line 11384
    sget v3, Lorg/telegram/messenger/R$string;->ChannelAdminSettings:I

    const-string v4, "ChannelAdminSettings"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_customize:I

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_47

    goto :goto_17

    :cond_47
    move v5, v7

    :goto_17
    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11385
    :cond_48
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4c

    .line 11386
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 11387
    sget v3, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    const-string v6, "ChannelBlacklist"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    iget-object v9, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v9

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    sub-int/2addr v8, v5

    if-eq v2, v8, :cond_49

    goto :goto_18

    :cond_49
    move v5, v7

    :goto_18
    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1d

    .line 11389
    :cond_4a
    sget v3, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    const-string v4, "ChannelBlacklist"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_4b

    goto :goto_19

    :cond_4b
    move v5, v7

    :goto_19
    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11391
    :cond_4c
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$24400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4e

    .line 11392
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 11393
    sget v2, Lorg/telegram/messenger/R$string;->AddMember:I

    const-string v3, "AddMember"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    if-ne v4, v12, :cond_4d

    goto :goto_1a

    :cond_4d
    move v5, v7

    :goto_1a
    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11394
    :cond_4e
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4f

    .line 11395
    sget v2, Lorg/telegram/messenger/R$string;->SendMessageLocation:I

    const-string v3, "SendMessageLocation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 11396
    :cond_4f
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_50

    .line 11397
    sget v2, Lorg/telegram/messenger/R$string;->AddToContacts:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 11398
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_1d

    .line 11399
    :cond_50
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_52

    .line 11400
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28900(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 11401
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 11402
    sget v2, Lorg/telegram/messenger/R$string;->ReportReactionAndBan:I

    const-string v3, "ReportReactionAndBan"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_1b

    .line 11404
    :cond_51
    sget v2, Lorg/telegram/messenger/R$string;->ReportReaction:I

    const-string v3, "ReportReaction"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_report:I

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 11407
    :goto_1b
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 11408
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_1d

    .line 11409
    :cond_52
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_53

    .line 11410
    sget v2, Lorg/telegram/messenger/R$string;->ReportUserLocation:I

    const-string v3, "ReportUserLocation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 11411
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0, v12, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 11412
    invoke-virtual {v0, v12, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_1d

    .line 11413
    :cond_53
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const/16 v4, 0x17

    if-ne v2, v3, :cond_54

    .line 11414
    sget v2, Lorg/telegram/messenger/R$string;->Language:I

    const-string v3, "Language"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    sget v20, Lorg/telegram/messenger/R$drawable;->msg2_language:I

    const/16 v21, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v21}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V

    .line 11415
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    goto/16 :goto_1d

    .line 11416
    :cond_54
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_55

    .line 11417
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    const-string v3, "NotificationsAndSounds"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_notifications:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11418
    :cond_55
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_56

    .line 11419
    sget v2, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    const-string v3, "PrivacySettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11420
    :cond_56
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_57

    .line 11421
    sget v2, Lorg/telegram/messenger/R$string;->DataSettings:I

    const-string v3, "DataSettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11422
    :cond_57
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_58

    .line 11423
    sget v2, Lorg/telegram/messenger/R$string;->ChatSettings:I

    const-string v3, "ChatSettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11424
    :cond_58
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_59

    .line 11425
    sget v2, Lorg/telegram/messenger/R$string;->Filters:I

    const-string v3, "Filters"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_folder:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11426
    :cond_59
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5a

    .line 11427
    sget v2, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11428
    :cond_5a
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5b

    .line 11429
    sget v2, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11430
    :cond_5b
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5c

    .line 11431
    sget v2, Lorg/telegram/messenger/R$string;->AskAQuestion:I

    const-string v3, "AskAQuestion"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_ask_question:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11432
    :cond_5c
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5d

    .line 11433
    sget v2, Lorg/telegram/messenger/R$string;->TelegramFAQ:I

    const-string v3, "TelegramFAQ"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_help:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11434
    :cond_5d
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5e

    .line 11435
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyPolicy:I

    const-string v3, "PrivacyPolicy"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_policy:I

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11436
    :cond_5e
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5f

    .line 11437
    sget v2, Lorg/telegram/messenger/R$string;->DebugSendLogs:I

    const-string v3, "DebugSendLogs"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 11438
    :cond_5f
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_60

    .line 11439
    sget v2, Lorg/telegram/messenger/R$string;->DebugSendLastLogs:I

    const-string v3, "DebugSendLastLogs"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 11440
    :cond_60
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_62

    .line 11441
    sget v2, Lorg/telegram/messenger/R$string;->DebugClearLogs:I

    const-string v3, "DebugClearLogs"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v3, v12, :cond_61

    goto :goto_1c

    :cond_61
    move v5, v7

    :goto_1c
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 11442
    :cond_62
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_63

    const-string v2, "Switch Backend"

    .line 11443
    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 11444
    :cond_63
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_64

    .line 11445
    sget v2, Lorg/telegram/messenger/R$string;->Devices:I

    const-string v3, "Devices"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_devices:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1d

    .line 11446
    :cond_64
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_65

    .line 11447
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$30800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    const/16 v3, 0x56

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 11448
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$30800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    const/16 v3, 0x55

    invoke-virtual {v2, v3, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 11449
    sget v2, Lorg/telegram/messenger/R$string;->SetProfilePhoto:I

    const-string v3, "SetProfilePhoto"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 11450
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 11451
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 11452
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    .line 11453
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ProfileActivity;->access$30902(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Cells/TextCell;)Lorg/telegram/ui/Cells/TextCell;

    goto :goto_1d

    .line 11454
    :cond_65
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_66

    .line 11455
    sget v2, Lorg/telegram/messenger/R$string;->AddToGroupOrChannel:I

    const-string v3, "AddToGroupOrChannel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 11456
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto :goto_1d

    .line 11457
    :cond_66
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_67

    .line 11458
    sget v2, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    const-string v3, "TelegramPremium"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarMenuDrawable:Lorg/telegram/ui/Components/Premium/PremiumGradient$InternalDrawable;

    const/16 v8, 0x18

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/16 v9, 0x18

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-direct {v3, v6, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 11459
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    goto :goto_1d

    .line 11460
    :cond_67
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_68

    .line 11461
    sget v2, Lorg/telegram/messenger/R$string;->GiftPremiumGifting:I

    const-string v3, "GiftPremiumGifting"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Cells/TextCell;->applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_gift:I

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 11462
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    .line 11464
    :cond_68
    :goto_1d
    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3, v7}, Lorg/telegram/ui/ProfileActivity;->access$14500(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    goto/16 :goto_3b

    .line 11301
    :cond_69
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/AboutLinkCell;

    .line 11302
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-string v4, "UserBio"

    if-ne v2, v3, :cond_6d

    .line 11303
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_6a

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1e

    :cond_6a
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 11304
    :goto_1e
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v3

    if-nez v3, :cond_6c

    if-eqz v2, :cond_6b

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    if-eqz v2, :cond_6b

    goto :goto_1f

    :cond_6b
    move v5, v7

    .line 11305
    :cond_6c
    :goto_1f
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    sget v3, Lorg/telegram/messenger/R$string;->UserBio:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3b

    .line 11306
    :cond_6d
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_6f

    .line 11307
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    :goto_20
    const-string v3, "\n\n\n"

    .line 11308
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6e

    const-string v3, "\n\n\n"

    const-string v4, "\n\n"

    .line 11309
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    .line 11311
    :cond_6e
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    .line 11312
    :cond_6f
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_9d

    .line 11314
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_71

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_70

    goto :goto_21

    .line 11319
    :cond_70
    sget v2, Lorg/telegram/messenger/R$string;->UserBio:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->UserBioDetail:I

    const-string v4, "UserBioDetail"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11320
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->access$27502(Lorg/telegram/ui/ProfileActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_24

    .line 11315
    :cond_71
    :goto_21
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-nez v2, :cond_72

    sget v2, Lorg/telegram/messenger/R$string;->Loading:I

    const-string v3, "Loading"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_72
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    .line 11316
    :goto_22
    sget v3, Lorg/telegram/messenger/R$string;->UserBio:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11317
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    if-eqz v3, :cond_73

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    goto :goto_23

    :cond_73
    const/4 v10, 0x0

    :goto_23
    invoke-static {v2, v10}, Lorg/telegram/ui/ProfileActivity;->access$27502(Lorg/telegram/ui/ProfileActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 11322
    :goto_24
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setMoreButtonDisabled(Z)V

    .line 11324
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$15400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    add-int/2addr v3, v5

    if-ne v2, v3, :cond_9d

    .line 11325
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setDividerVisible()V

    goto/16 :goto_3b

    .line 11175
    :cond_74
    :pswitch_3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextDetailCell;

    .line 11177
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-string v4, "+"

    if-ne v2, v3, :cond_79

    .line 11179
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 11181
    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$26500(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_75

    .line 11182
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$26500(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11183
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$26500(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    goto :goto_25

    :cond_75
    if-eqz v3, :cond_76

    .line 11184
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 11185
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11186
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    goto :goto_25

    .line 11188
    :cond_76
    sget v3, Lorg/telegram/messenger/R$string;->PhoneHidden:I

    const-string v4, "PhoneHidden"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    const/4 v3, 0x0

    .line 11191
    :goto_25
    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    if-eqz v3, :cond_77

    const-string v8, "888\\d{8}"

    invoke-virtual {v3, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    goto :goto_26

    :cond_77
    move v5, v7

    :goto_26
    invoke-static {v6, v5}, Lorg/telegram/ui/ProfileActivity;->access$26602(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 11192
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v3

    if-eqz v3, :cond_78

    sget v3, Lorg/telegram/messenger/R$string;->AnonymousNumber:I

    goto :goto_27

    :cond_78
    sget v3, Lorg/telegram/messenger/R$string;->PhoneMobile:I

    :goto_27
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3, v7}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_35

    .line 11193
    :cond_79
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-string v6, "@"

    if-ne v2, v3, :cond_85

    .line 11196
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11197
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v10

    cmp-long v4, v10, v8

    const-string v10, ""

    if-eqz v4, :cond_80

    .line 11198
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_7a

    .line 11200
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7a
    if-eqz v4, :cond_7b

    .line 11202
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 11203
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_28

    :cond_7b
    const/4 v3, 0x0

    :goto_28
    if-nez v4, :cond_7c

    .line 11205
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_29

    :cond_7c
    new-instance v8, Ljava/util/ArrayList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v8

    .line 11206
    :goto_29
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7e

    move v8, v7

    .line 11207
    :goto_2a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_7e

    .line 11208
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v9, :cond_7d

    .line 11209
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v10, :cond_7d

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7d

    .line 11210
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    goto :goto_2b

    :cond_7d
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 11215
    :cond_7e
    :goto_2b
    sget v8, Lorg/telegram/messenger/R$string;->Username:I

    const-string v9, "Username"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v3, :cond_7f

    .line 11217
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2c

    :cond_7f
    const-string v6, "\u2014"

    :goto_2c
    move-object v8, v10

    move-object v10, v6

    goto/16 :goto_2e

    .line 11222
    :cond_80
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_84

    .line 11223
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$300(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 11224
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v6

    .line 11225
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11226
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v11

    const-string v12, "/"

    if-eqz v11, :cond_82

    .line 11228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v13

    cmp-long v8, v13, v8

    if-eqz v8, :cond_81

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_81
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11229
    sget v8, Lorg/telegram/messenger/R$string;->InviteLink:I

    const-string v9, "InviteLink"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    move-object v10, v4

    goto :goto_2d

    .line 11231
    :cond_82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/c/"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v13

    cmp-long v4, v13, v8

    if-eqz v4, :cond_83

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_83
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11232
    sget v5, Lorg/telegram/messenger/R$string;->InviteLinkPrivate:I

    const-string v8, "InviteLinkPrivate"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v10, v4

    move-object v8, v5

    move v5, v7

    :goto_2d
    move-object v4, v3

    move-object v3, v6

    goto :goto_2e

    .line 11237
    :cond_84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    move v5, v7

    move-object v8, v10

    const/4 v3, 0x0

    .line 11239
    :goto_2e
    invoke-direct {v1, v3, v4, v8}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->alsoUsernamesString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$6900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v4

    invoke-virtual {v0, v10, v3, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_36

    .line 11240
    :cond_85
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_86

    .line 11241
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_90

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v3, :cond_90

    .line 11242
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    .line 11243
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    sget v4, Lorg/telegram/messenger/R$string;->AttachLocation:I

    const-string v5, "AttachLocation"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v7}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_35

    .line 11245
    :cond_86
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_88

    .line 11246
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_87

    .line 11248
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v6, :cond_87

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_87

    .line 11249
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2f

    .line 11251
    :cond_87
    sget v3, Lorg/telegram/messenger/R$string;->NumberUnknown:I

    const-string v4, "NumberUnknown"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 11253
    :goto_2f
    sget v4, Lorg/telegram/messenger/R$string;->TapToChangePhone:I

    const-string v6, "TapToChangePhone"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 11254
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextDetailCell;->setContentDescriptionValueFirst(Z)V

    goto/16 :goto_35

    .line 11255
    :cond_88
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_90

    .line 11256
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 11258
    sget v4, Lorg/telegram/messenger/R$string;->Username:I

    const-string v8, "Username"

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_8e

    .line 11260
    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8e

    move v8, v7

    .line 11261
    :goto_30
    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_8a

    .line 11262
    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v9, :cond_89

    .line 11263
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v10, :cond_89

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_89

    .line 11264
    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    goto :goto_31

    :cond_89
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_8a
    const/4 v8, 0x0

    :goto_31
    if-nez v8, :cond_8b

    .line 11269
    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    :cond_8b
    if-eqz v8, :cond_8d

    .line 11271
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8c

    goto :goto_32

    .line 11274
    :cond_8c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_33

    .line 11272
    :cond_8d
    :goto_32
    sget v6, Lorg/telegram/messenger/R$string;->UsernameEmpty:I

    const-string v9, "UsernameEmpty"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 11276
    :goto_33
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-direct {v1, v8, v3, v4}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->alsoUsernamesString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_34

    .line 11278
    :cond_8e
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_8f

    .line 11279
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8f

    .line 11280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_34

    .line 11282
    :cond_8f
    sget v3, Lorg/telegram/messenger/R$string;->UsernameEmpty:I

    const-string v6, "UsernameEmpty"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 11285
    :goto_34
    invoke-virtual {v0, v6, v4, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 11286
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setContentDescriptionValueFirst(Z)V

    :cond_90
    :goto_35
    move v5, v7

    :goto_36
    if-eqz v5, :cond_91

    .line 11289
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_qr_mini:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 11290
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v6

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ProfileActivity;->access$14500(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 11291
    sget v4, Lorg/telegram/messenger/R$string;->GetQRCode:I

    const-string v5, "GetQRCode"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setImage(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 11292
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v4, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_37

    :cond_91
    const/4 v3, 0x0

    .line 11294
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 11295
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    .line 11297
    :goto_37
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 11298
    iget-object v0, v0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3, v7}, Lorg/telegram/ui/ProfileActivity;->access$14500(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3b

    .line 11152
    :cond_92
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 11153
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v2, v3, :cond_94

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_93

    goto :goto_38

    :cond_93
    move v3, v7

    goto :goto_39

    :cond_94
    :goto_38
    move v3, v5

    :goto_39
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    xor-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setExpandableMode(ZZ)V

    .line 11154
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_97

    .line 11155
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_96

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_96

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$25900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v2, v12, :cond_95

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    if-eqz v2, :cond_96

    .line 11156
    :cond_95
    sget v2, Lorg/telegram/messenger/R$string;->ReportChatDescription:I

    const-string v3, "ReportChatDescription"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 11158
    :cond_96
    sget v2, Lorg/telegram/messenger/R$string;->Info:I

    const-string v3, "Info"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 11160
    :cond_97
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_98

    .line 11161
    sget v2, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 11162
    :cond_98
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_99

    .line 11163
    sget v2, Lorg/telegram/messenger/R$string;->SETTINGS:I

    const-string v3, "SETTINGS"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 11164
    :cond_99
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_9a

    .line 11165
    sget v2, Lorg/telegram/messenger/R$string;->Account:I

    const-string v3, "Account"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 11166
    :cond_9a
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_9b

    .line 11167
    sget v2, Lorg/telegram/messenger/R$string;->SettingsHelp:I

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 11168
    :cond_9b
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_9c

    .line 11169
    sget v2, Lorg/telegram/messenger/R$string;->SettingsDebug:I

    const-string v3, "SettingsDebug"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 11171
    :cond_9c
    :goto_3a
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3, v7}, Lorg/telegram/ui/ProfileActivity;->access$14500(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setTextColor(I)V

    :cond_9d
    :goto_3b
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 13

    .line 10857
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SOCIAL:I

    const/4 v0, -0x1

    if-ne p2, p1, :cond_0

    .line 10858
    new-instance p1, Lcom/iMe/feature/profile/ProfileSocialCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/iMe/feature/profile/ProfileSocialCell;-><init>(Landroid/content/Context;)V

    .line 10859
    sget-object v1, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 10861
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPIC_PROFILE:I

    if-ne p2, p1, :cond_1

    .line 10862
    new-instance p1, Lcom/iMe/ui/topics/TopicProfileCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v2

    invoke-direct {p1, v1, v2, v3}, Lcom/iMe/ui/topics/TopicProfileCell;-><init>(Landroid/content/Context;J)V

    goto/16 :goto_6

    .line 10863
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_DETAIL_WITH_RANK:I

    const/4 v1, 0x1

    if-ne p2, p1, :cond_2

    .line 10864
    new-instance p1, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;-><init>(Landroid/content/Context;)V

    .line 10865
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setContentDescriptionValueFirst(Z)V

    goto/16 :goto_6

    :cond_2
    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 10993
    :pswitch_0
    new-instance v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {v2, v3, v5, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 10994
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 10995
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10996
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_3

    .line 10922
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 11047
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10988
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 11025
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/ProfileActivity$ListAdapter$6;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, p0, v1, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$6;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10981
    :pswitch_5
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10982
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10984
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    goto/16 :goto_6

    .line 10943
    :pswitch_6
    new-instance v1, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;)V

    .line 10977
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 10934
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/ProfileActivity$ListAdapter$4;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$4;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 10930
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/Cells/UserCell;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$24400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v1, v0, :cond_4

    const/16 v1, 0x9

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    :goto_0
    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10926
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10913
    :pswitch_a
    new-instance p1, Lorg/telegram/ui/ProfileActivity$ListAdapter$3;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v6, 0x17

    const/16 v7, 0x46

    const/4 v8, 0x0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ProfileActivity$ListAdapter$3;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10908
    :pswitch_b
    new-instance v1, Lorg/telegram/ui/Cells/DividerCell;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v2, 0x14

    .line 10909
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    move-object p1, v1

    goto/16 :goto_6

    .line 10899
    :pswitch_c
    new-instance p1, Lorg/telegram/ui/ProfileActivity$ListAdapter$2;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, p0, v1, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10880
    :pswitch_d
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v1}, Lorg/telegram/ui/ProfileActivity;->access$24202(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Cells/AboutLinkCell;

    move-result-object p1

    goto/16 :goto_6

    .line 10875
    :pswitch_e
    new-instance v2, Lorg/telegram/ui/Cells/TextDetailCell;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/16 v5, 0x13

    if-ne p2, v5, :cond_5

    move p1, v1

    :cond_5
    invoke-direct {v2, v3, v4, p1}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    .line 10876
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setContentDescriptionValueFirst(Z)V

    :goto_2
    move-object p1, v2

    goto/16 :goto_6

    .line 10870
    :pswitch_f
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x17

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10998
    :goto_3
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 10999
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit8 v6, v4, 0xa

    .line 11001
    rem-int/2addr v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    const-string v7, " "

    if-eq v4, v1, :cond_7

    if-eq v4, v5, :cond_7

    .line 11008
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isStandaloneBuild()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 11009
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "direct "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 11011
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "universal "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 11004
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "store bundled "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    const-string v7, "TelegramVersion"

    .line 11015
    sget v8, Lorg/telegram/messenger/R$string;->TelegramVersion:I

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "v%s (%d) %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v3, v12, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v12, v1

    aput-object v4, v12, v5

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, p1

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    .line 11017
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 11019
    :goto_5
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/16 v3, 0xe

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, p1, v4, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 11021
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v3

    invoke-static {p1, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :goto_6
    const/16 v1, 0xd

    if-eq p2, v1, :cond_8

    .line 11051
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11053
    :cond_8
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_e
        :pswitch_1
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 11058
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 11059
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$2602(Lorg/telegram/ui/ProfileActivity;Z)Z

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 11065
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 11066
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$2602(Lorg/telegram/ui/ProfileActivity;Z)Z

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 11659
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 11660
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$30902(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Cells/TextCell;)Lorg/telegram/ui/Cells/TextCell;

    :cond_0
    return-void
.end method
