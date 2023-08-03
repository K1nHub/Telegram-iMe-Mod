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

    .line 9898
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 9899
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

    .line 10634
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    move v1, p2

    .line 10635
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 10637
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    .line 10638
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v2, v1, -0x1

    .line 10640
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10643
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 10644
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    move p3, p2

    .line 10645
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    .line 10646
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    .line 10647
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10648
    new-instance v3, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Ljava/lang/String;)V

    .line 10662
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v4, 0x21

    .line 10648
    invoke-virtual {v2, v3, p2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10663
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v1, p2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10664
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10665
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_4

    const-string v1, ", "

    .line 10666
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 10669
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->UsernameAlso:I

    const-string p3, "UsernameAlso"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 10670
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, "%1$s"

    .line 10672
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_6

    add-int/lit8 v0, p2, 0x4

    .line 10674
    invoke-virtual {p3, p2, v0, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    return-object p3
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;
    .locals 1

    .line 10118
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->presenter:Lcom/iMe/feature/profile/ProfilePresenter;

    invoke-virtual {v0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->onSocialClicked(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    .line 10119
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;
    .locals 1

    .line 10122
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ProfileActivity;->showSocialMenuBottomSheet(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    .line 10123
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$3(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lkotlin/Unit;
    .locals 1

    .line 10131
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->presenter:Lcom/iMe/feature/profile/ProfilePresenter;

    invoke-virtual {v0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->onSocialAddClicked(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    .line 10132
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$4(Ljava/util/List;)Lkotlin/Unit;
    .locals 3

    .line 10126
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10128
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    .line 10127
    invoke-static {v1, p1, v2}, Lcom/iMe/feature/socialMedias/SocialDialog;->newInstance(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/iMe/feature/socialMedias/SocialDialog;

    move-result-object p1

    .line 10126
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 10136
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$5(Landroid/view/View;)V
    .locals 0

    .line 10176
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$33000(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$6(Lorg/telegram/ui/ProfileActivity;Landroid/view/View;)V
    .locals 0

    .line 10330
    invoke-static {p0, p1}, Lorg/telegram/ui/ProfileActivity;->access$32900(Lorg/telegram/ui/ProfileActivity;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "On SocialCell click ovverided"

    .line 9908
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 10728
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 10734
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 10735
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SOCIAL:I

    return p1

    .line 10737
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 10738
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPIC_PROFILE:I

    return p1

    .line 10740
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 10741
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_DETAIL_WITH_RANK:I

    return p1

    .line 10744
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10745
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto/16 :goto_6

    .line 10747
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto/16 :goto_5

    .line 10749
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto/16 :goto_4

    .line 10751
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto/16 :goto_3

    .line 10753
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10754
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10755
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10756
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10757
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10758
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10759
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10760
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10761
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto/16 :goto_2

    .line 10763
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x5

    return p1

    .line 10765
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    const/4 p1, 0x6

    return p1

    .line 10767
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    const/16 p1, 0x14

    return p1

    .line 10769
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10770
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10771
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10772
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    goto :goto_1

    .line 10774
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-lt p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ge p1, v0, :cond_c

    const/16 p1, 0x8

    return p1

    .line 10776
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d

    const/16 p1, 0xb

    return p1

    .line 10778
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_e

    const/16 p1, 0xc

    return p1

    .line 10780
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_f

    const/16 p1, 0xd

    return p1

    .line 10782
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_10

    const/16 p1, 0xe

    return p1

    .line 10784
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    goto :goto_0

    .line 10786
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_12

    const/16 p1, 0x11

    return p1

    .line 10788
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30800(Lorg/telegram/ui/ProfileActivity;)I

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
    const/4 p1, 0x4

    return p1

    :cond_17
    :goto_3
    const/4 p1, 0x3

    return p1

    :cond_18
    :goto_4
    const/16 p1, 0x13

    return p1

    :cond_19
    :goto_5
    const/4 p1, 0x2

    return p1

    :cond_1a
    :goto_6
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 10691
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 10692
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 10694
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10695
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10696
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10697
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10698
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 10702
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10703
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10704
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10705
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10706
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10707
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 10708
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2

    .line 10710
    :cond_4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, v0, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_5

    .line 10711
    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    .line 10712
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object v0

    .line 10713
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_5

    .line 10714
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 10715
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 10720
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

    .line 10112
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$14900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v4, v3, Lcom/iMe/feature/profile/ProfileSocialCell;

    if-eqz v4, :cond_0

    .line 10113
    check-cast v3, Lcom/iMe/feature/profile/ProfileSocialCell;

    .line 10114
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->presenter:Lcom/iMe/feature/profile/ProfilePresenter;

    if-eqz v0, :cond_96

    .line 10116
    invoke-virtual {v0}, Lcom/iMe/feature/profile/ProfilePresenter;->getProfileUiState()Lcom/iMe/feature/profile/ProfileUiState;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    new-instance v4, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    new-instance v5, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    .line 10115
    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/iMe/feature/profile/ProfileSocialCell;->updateState(Lcom/iMe/feature/profile/ProfileUiState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_35

    .line 10139
    :cond_0
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$24600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    .line 10140
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

    goto/16 :goto_35

    .line 10141
    :cond_2
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$24700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-string v6, "SettingsHelp"

    const/4 v7, 0x0

    if-eq v2, v3, :cond_3

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$24800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$24900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_6

    :cond_3
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v8, v3, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v8, :cond_6

    .line 10142
    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 10143
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 10144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 10145
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v2, v0, :cond_4

    .line 10146
    sget v0, Lorg/telegram/messenger/R$string;->settings_tools:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_settings_tools:I

    invoke-virtual {v3, v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10147
    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v2, v0, :cond_5

    .line 10148
    sget v0, Lorg/telegram/messenger/R$string;->topics:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_topic_select_26:I

    invoke-virtual {v3, v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10149
    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne v2, v0, :cond_96

    .line 10150
    sget v0, Lorg/telegram/messenger/R$string;->SettingsHelp:I

    invoke-static {v6, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_help:I

    invoke-virtual {v3, v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10152
    :cond_6
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$15000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-wide/16 v8, 0x0

    if-ne v2, v3, :cond_e

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v11, v3, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;

    if-eqz v11, :cond_e

    .line 10153
    check-cast v3, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;

    .line 10155
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_9

    .line 10156
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10157
    sget v0, Lorg/telegram/messenger/R$string;->profile_bot_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 10158
    :cond_7
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    if-nez v0, :cond_8

    .line 10159
    sget v0, Lorg/telegram/messenger/R$string;->profile_user_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 10161
    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->profile_my_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 10163
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$300(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_c

    .line 10164
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25000(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10165
    sget v0, Lorg/telegram/messenger/R$string;->profile_album_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 10166
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_b

    .line 10167
    sget v0, Lorg/telegram/messenger/R$string;->profile_channel_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 10169
    :cond_b
    sget v0, Lorg/telegram/messenger/R$string;->profile_group_id_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_c
    const/4 v10, 0x0

    .line 10172
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25100(Lorg/telegram/ui/ProfileActivity;)Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 10173
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25100(Lorg/telegram/ui/ProfileActivity;)Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;->getLevel()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;->setAccountLevel(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    .line 10174
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25100(Lorg/telegram/ui/ProfileActivity;)Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;->isOwnLevel()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 10175
    new-instance v0, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    invoke-virtual {v3, v0}, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;->setBadgeClickListener(Landroid/view/View$OnClickListener;)V

    .line 10180
    :cond_d
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25200(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v10, v7}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_35

    .line 10181
    :cond_e
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_f

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v11, v3, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v11, :cond_f

    .line 10182
    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    .line 10183
    sget v0, Lorg/telegram/messenger/R$string;->topic:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 10184
    invoke-virtual {v3, v7, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setExpandableMode(ZZ)V

    goto/16 :goto_35

    .line 10185
    :cond_f
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_10

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v11, v3, Lcom/iMe/ui/topics/TopicProfileCell;

    if-eqz v11, :cond_10

    .line 10186
    check-cast v3, Lcom/iMe/ui/topics/TopicProfileCell;

    .line 10187
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/iMe/fork/controller/ForkTopicsController;->getTopicForDialog(J)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/iMe/ui/topics/TopicProfileCell;->setData(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    goto/16 :goto_35

    .line 10189
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const-string v11, "ChannelMembers"

    const/4 v12, -0x1

    if-eq v3, v5, :cond_8c

    const/4 v6, 0x2

    if-eq v3, v6, :cond_6e

    const/4 v13, 0x3

    if-eq v3, v13, :cond_63

    const/16 v14, 0xc

    const/16 v15, 0x8

    if-eq v3, v4, :cond_30

    const/4 v4, 0x6

    const-string v10, "Notifications"

    if-eq v3, v4, :cond_20

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1c

    if-eq v3, v15, :cond_14

    if-eq v3, v14, :cond_13

    const/16 v4, 0xf

    if-eq v3, v4, :cond_11

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_35

    .line 10624
    :pswitch_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 10625
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

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    invoke-virtual {v3, v8, v9, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_35

    .line 10619
    :pswitch_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 10620
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10621
    sget v2, Lorg/telegram/messenger/R$string;->BotAddToGroupOrChannelInfo:I

    const-string v3, "BotAddToGroupOrChannelInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 10615
    :cond_11
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SettingsSuggestionCell;

    .line 10616
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$24500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_12

    goto :goto_2

    :cond_12
    move v5, v7

    :goto_2
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/SettingsSuggestionCell;->setType(I)V

    goto/16 :goto_35

    .line 10612
    :cond_13
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_35

    .line 10571
    :cond_14
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v8, v0

    check-cast v8, Lorg/telegram/ui/Cells/UserCell;

    .line 10574
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31500(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 10575
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15500(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31500(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$15200(Lorg/telegram/ui/ProfileActivity;)I

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

    .line 10577
    :cond_15
    iget-object v0, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15500(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$15200(Lorg/telegram/ui/ProfileActivity;)I

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

    .line 10581
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_96

    .line 10585
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v3, :cond_18

    .line 10586
    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 10587
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 10588
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    :goto_4
    move-object v10, v3

    goto :goto_5

    .line 10590
    :cond_16
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v4, :cond_17

    .line 10591
    sget v3, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    const-string v4, "ChannelCreator"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 10592
    :cond_17
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz v3, :cond_1a

    .line 10593
    sget v3, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    const-string v4, "ChannelAdmin"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 10599
    :cond_18
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v3, :cond_19

    .line 10600
    sget v3, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    const-string v4, "ChannelCreator"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 10601
    :cond_19
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v3, :cond_1a

    .line 10602
    sget v3, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    const-string v4, "ChannelAdmin"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_1a
    const/4 v10, 0x0

    .line 10607
    :goto_5
    invoke-virtual {v8, v10}, Lorg/telegram/ui/Cells/UserCell;->setAdminRole(Ljava/lang/String;)V

    .line 10608
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

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    sub-int/2addr v0, v5

    if-eq v2, v0, :cond_1b

    move v13, v5

    goto :goto_6

    :cond_1b
    move v13, v7

    :goto_6
    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_35

    .line 10561
    :cond_1c
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10562
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10564
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1d

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v3, v12, :cond_1d

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v3, v12, :cond_1d

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v3, v12, :cond_1d

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v3, v12, :cond_1f

    :cond_1d
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v2, v3, :cond_1f

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v2, v3, :cond_1f

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1e

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$31300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v2, v12, :cond_1e

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v2, v12, :cond_1e

    goto :goto_7

    .line 10567
    :cond_1e
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_35

    .line 10565
    :cond_1f
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

    goto/16 :goto_35

    .line 10498
    :cond_20
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 10499
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_96

    .line 10500
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$31000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 10502
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_21

    .line 10503
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    goto :goto_8

    .line 10504
    :cond_21
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_22

    .line 10505
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    goto :goto_8

    .line 10507
    :cond_22
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$300(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    neg-long v3, v3

    .line 10509
    :goto_8
    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    invoke-static {v3, v4, v8}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v8

    .line 10511
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "custom_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 10512
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notify2_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    .line 10513
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "notify2_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 10514
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "notifyuntil_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v12, v13, :cond_28

    const v8, 0x7fffffff

    if-eq v2, v8, :cond_28

    .line 10517
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    sub-int/2addr v2, v3

    if-gtz v2, :cond_24

    if-eqz v9, :cond_23

    .line 10520
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsCustom:I

    const-string v3, "NotificationsCustom"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 10522
    :cond_23
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    const-string v3, "NotificationsOn"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object v3, v2

    move v2, v5

    goto/16 :goto_e

    :cond_24
    const/16 v3, 0xe10

    const-string v4, "WillUnmuteIn"

    if-ge v2, v3, :cond_25

    .line 10526
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

    :cond_25
    const v3, 0x15180

    const/high16 v8, 0x42700000    # 60.0f

    if-ge v2, v3, :cond_26

    .line 10528
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

    :cond_26
    const v3, 0x1e13380

    if-ge v2, v3, :cond_27

    .line 10530
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

    :cond_27
    move v2, v7

    const/4 v3, 0x0

    goto :goto_e

    :cond_28
    if-nez v12, :cond_2a

    if-eqz v11, :cond_29

    goto :goto_b

    .line 10539
    :cond_29
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$31100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v2

    goto :goto_c

    :cond_2a
    if-ne v12, v5, :cond_2b

    :goto_b
    move v2, v5

    goto :goto_c

    :cond_2b
    move v2, v7

    :goto_c
    if-eqz v2, :cond_2c

    if-eqz v9, :cond_2c

    .line 10545
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsCustom:I

    const-string v4, "NotificationsCustom"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_2c
    if-eqz v2, :cond_2d

    .line 10547
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    const-string v4, "NotificationsOn"

    goto :goto_d

    :cond_2d
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    const-string v4, "NotificationsOff"

    :goto_d
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_e
    if-nez v3, :cond_2e

    .line 10551
    sget v3, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    const-string v4, "NotificationsOff"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 10553
    :cond_2e
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity;->notificationsExceptionTopics:Ljava/util/HashSet;

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 10554
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

    .line 10556
    :cond_2f
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$10300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setAnimationsEnabled(Z)V

    .line 10557
    sget v4, Lorg/telegram/messenger/R$string;->Notifications:I

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v2, v7}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_35

    .line 10369
    :cond_30
    :pswitch_2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 10370
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 10371
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 10372
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_32

    .line 10373
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    .line 10375
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-nez v2, :cond_31

    .line 10376
    sget v2, Lorg/telegram/messenger/R$string;->ShortMessageLifetimeForever:I

    const-string v3, "ShortMessageLifetimeForever"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 10378
    :cond_31
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v2

    .line 10380
    :goto_f
    sget v3, Lorg/telegram/messenger/R$string;->MessageLifetime:I

    const-string v4, "MessageLifetime"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v7, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_35

    .line 10381
    :cond_32
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_33

    .line 10382
    sget v2, Lorg/telegram/messenger/R$string;->Unblock:I

    const-string v3, "Unblock"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 10383
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0, v12, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_35

    .line 10384
    :cond_33
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_34

    .line 10385
    new-instance v2, Lorg/telegram/ui/Components/IdenticonDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/IdenticonDrawable;-><init>()V

    .line 10386
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 10387
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/IdenticonDrawable;->setEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 10388
    sget v3, Lorg/telegram/messenger/R$string;->EncryptionKey:I

    const-string v4, "EncryptionKey"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_35

    .line 10389
    :cond_34
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 10390
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-virtual {v0, v12, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 10391
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_35

    .line 10392
    sget v2, Lorg/telegram/messenger/R$string;->ProfileJoinGroup:I

    const-string v3, "ProfileJoinGroup"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_35

    .line 10394
    :cond_35
    sget v2, Lorg/telegram/messenger/R$string;->ProfileJoinChannel:I

    const-string v3, "ProfileJoinChannel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_35

    .line 10396
    :cond_36
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-string v4, "%d"

    if-ne v2, v3, :cond_3e

    .line 10397
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 10398
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_38

    .line 10399
    sget v3, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    const-string v6, "ChannelSubscribers"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    sub-int/2addr v8, v5

    if-eq v2, v8, :cond_37

    goto :goto_10

    :cond_37
    move v5, v7

    :goto_10
    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10401
    :cond_38
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    sub-int/2addr v8, v5

    if-eq v2, v8, :cond_39

    goto :goto_11

    :cond_39
    move v5, v7

    :goto_11
    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10404
    :cond_3a
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_3c

    .line 10405
    sget v3, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    const-string v4, "ChannelSubscribers"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_3b

    goto :goto_12

    :cond_3b
    move v5, v7

    :goto_12
    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10407
    :cond_3c
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_3d

    goto :goto_13

    :cond_3d
    move v5, v7

    :goto_13
    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10410
    :cond_3e
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_40

    .line 10411
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_96

    .line 10412
    sget v3, Lorg/telegram/messenger/R$string;->SubscribeRequests:I

    const-string v6, "SubscribeRequests"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_requests:I

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    sub-int/2addr v8, v5

    if-eq v2, v8, :cond_3f

    goto :goto_14

    :cond_3f
    move v5, v7

    :goto_14
    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10414
    :cond_40
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_44

    .line 10415
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 10416
    sget v3, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    const-string v6, "ChannelAdministrators"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    sub-int/2addr v8, v5

    if-eq v2, v8, :cond_41

    goto :goto_15

    :cond_41
    move v5, v7

    :goto_15
    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10418
    :cond_42
    sget v3, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    const-string v4, "ChannelAdministrators"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_43

    goto :goto_16

    :cond_43
    move v5, v7

    :goto_16
    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10420
    :cond_44
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_48

    .line 10421
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 10422
    sget v3, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    const-string v6, "ChannelBlacklist"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    iget-object v9, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

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

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    sub-int/2addr v8, v5

    if-eq v2, v8, :cond_45

    goto :goto_17

    :cond_45
    move v5, v7

    :goto_17
    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10424
    :cond_46
    sget v3, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    const-string v4, "ChannelBlacklist"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_47

    goto :goto_18

    :cond_47
    move v5, v7

    :goto_18
    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10426
    :cond_48
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$24000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4a

    .line 10427
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 10428
    sget v2, Lorg/telegram/messenger/R$string;->AddMember:I

    const-string v3, "AddMember"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    if-ne v4, v12, :cond_49

    goto :goto_19

    :cond_49
    move v5, v7

    :goto_19
    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10429
    :cond_4a
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4b

    .line 10430
    sget v2, Lorg/telegram/messenger/R$string;->SendMessageLocation:I

    const-string v3, "SendMessageLocation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_35

    .line 10431
    :cond_4b
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4c

    .line 10432
    sget v2, Lorg/telegram/messenger/R$string;->AddToContacts:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 10433
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_35

    .line 10434
    :cond_4c
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4e

    .line 10435
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28600(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 10436
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 10437
    sget v2, Lorg/telegram/messenger/R$string;->ReportReactionAndBan:I

    const-string v3, "ReportReactionAndBan"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_1a

    .line 10439
    :cond_4d
    sget v2, Lorg/telegram/messenger/R$string;->ReportReaction:I

    const-string v3, "ReportReaction"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_report:I

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 10442
    :goto_1a
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 10443
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_35

    .line 10444
    :cond_4e
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4f

    .line 10445
    sget v2, Lorg/telegram/messenger/R$string;->ReportUserLocation:I

    const-string v3, "ReportUserLocation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 10446
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0, v12, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 10447
    invoke-virtual {v0, v12, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_35

    .line 10448
    :cond_4f
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_50

    .line 10449
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

    invoke-virtual/range {v16 .. v21}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    const/16 v2, 0x17

    .line 10450
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    goto/16 :goto_35

    .line 10451
    :cond_50
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$28900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_51

    .line 10452
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    const-string v3, "NotificationsAndSounds"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_notifications:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10453
    :cond_51
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_52

    .line 10454
    sget v2, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    const-string v3, "PrivacySettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10455
    :cond_52
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_53

    .line 10456
    sget v2, Lorg/telegram/messenger/R$string;->DataSettings:I

    const-string v3, "DataSettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10457
    :cond_53
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_54

    .line 10458
    sget v2, Lorg/telegram/messenger/R$string;->ChatSettings:I

    const-string v3, "ChatSettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_discussion:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10459
    :cond_54
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_55

    .line 10460
    sget v2, Lorg/telegram/messenger/R$string;->Filters:I

    const-string v3, "Filters"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_folder:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10461
    :cond_55
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_56

    .line 10462
    sget v2, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10463
    :cond_56
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_57

    .line 10464
    sget v2, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_battery:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10465
    :cond_57
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_58

    .line 10466
    sget v2, Lorg/telegram/messenger/R$string;->AskAQuestion:I

    const-string v3, "AskAQuestion"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_ask_question:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10467
    :cond_58
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_59

    .line 10468
    sget v2, Lorg/telegram/messenger/R$string;->TelegramFAQ:I

    const-string v3, "TelegramFAQ"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_help:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10469
    :cond_59
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5a

    .line 10470
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyPolicy:I

    const-string v3, "PrivacyPolicy"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_policy:I

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10471
    :cond_5a
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$29900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5b

    .line 10472
    sget v2, Lorg/telegram/messenger/R$string;->DebugSendLogs:I

    const-string v3, "DebugSendLogs"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_35

    .line 10473
    :cond_5b
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5c

    .line 10474
    sget v2, Lorg/telegram/messenger/R$string;->DebugSendLastLogs:I

    const-string v3, "DebugSendLastLogs"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_35

    .line 10475
    :cond_5c
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5e

    .line 10476
    sget v2, Lorg/telegram/messenger/R$string;->DebugClearLogs:I

    const-string v3, "DebugClearLogs"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v3, v12, :cond_5d

    goto :goto_1b

    :cond_5d
    move v5, v7

    :goto_1b
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_35

    .line 10477
    :cond_5e
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5f

    const-string v2, "Switch Backend"

    .line 10478
    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_35

    .line 10479
    :cond_5f
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_60

    .line 10480
    sget v2, Lorg/telegram/messenger/R$string;->Devices:I

    const-string v3, "Devices"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_devices:I

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_35

    .line 10481
    :cond_60
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_61

    .line 10482
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$30500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    const/16 v3, 0x56

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 10483
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$30500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    const/16 v3, 0x55

    invoke-virtual {v2, v3, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 10484
    sget v2, Lorg/telegram/messenger/R$string;->SetProfilePhoto:I

    const-string v3, "SetProfilePhoto"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 10485
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 10486
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 10487
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    .line 10488
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ProfileActivity;->access$30602(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Cells/TextCell;)Lorg/telegram/ui/Cells/TextCell;

    goto/16 :goto_35

    .line 10489
    :cond_61
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_62

    .line 10490
    sget v2, Lorg/telegram/messenger/R$string;->AddToGroupOrChannel:I

    const-string v3, "AddToGroupOrChannel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 10491
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_35

    .line 10492
    :cond_62
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_96

    .line 10493
    sget v2, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    const-string v3, "TelegramPremium"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarMenuDrawable:Lorg/telegram/ui/Components/Premium/PremiumGradient$InternalDrawable;

    const/16 v5, 0x18

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v6, 0x18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    const/16 v2, 0x17

    .line 10494
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setImageLeft(I)V

    goto/16 :goto_35

    .line 10338
    :cond_63
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/AboutLinkCell;

    .line 10339
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-string v4, "UserBio"

    if-ne v2, v3, :cond_67

    .line 10340
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_64

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1c

    :cond_64
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 10341
    :goto_1c
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v3

    if-nez v3, :cond_66

    if-eqz v2, :cond_65

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    if-eqz v2, :cond_65

    goto :goto_1d

    :cond_65
    move v5, v7

    .line 10342
    :cond_66
    :goto_1d
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    sget v3, Lorg/telegram/messenger/R$string;->UserBio:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_35

    .line 10343
    :cond_67
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_69

    .line 10344
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    :goto_1e
    const-string v3, "\n\n\n"

    .line 10345
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_68

    const-string v4, "\n\n"

    .line 10346
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 10348
    :cond_68
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_35

    .line 10349
    :cond_69
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_96

    .line 10351
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_6b

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    goto :goto_1f

    .line 10356
    :cond_6a
    sget v2, Lorg/telegram/messenger/R$string;->UserBio:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->UserBioDetail:I

    const-string v4, "UserBioDetail"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10357
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->access$27302(Lorg/telegram/ui/ProfileActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_22

    .line 10352
    :cond_6b
    :goto_1f
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-nez v2, :cond_6c

    sget v2, Lorg/telegram/messenger/R$string;->Loading:I

    const-string v3, "Loading"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    :cond_6c
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    .line 10353
    :goto_20
    sget v3, Lorg/telegram/messenger/R$string;->UserBio:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10354
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    if-eqz v3, :cond_6d

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    goto :goto_21

    :cond_6d
    const/4 v10, 0x0

    :goto_21
    invoke-static {v2, v10}, Lorg/telegram/ui/ProfileActivity;->access$27302(Lorg/telegram/ui/ProfileActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 10359
    :goto_22
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setMoreButtonDisabled(Z)V

    .line 10361
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$14900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    add-int/2addr v3, v5

    if-ne v2, v3, :cond_96

    .line 10362
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setDividerVisible()V

    goto/16 :goto_35

    .line 10213
    :cond_6e
    :pswitch_3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextDetailCell;

    .line 10215
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-string v4, "+"

    if-ne v2, v3, :cond_73

    .line 10217
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

    if-eqz v3, :cond_6f

    .line 10219
    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$26300(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6f

    .line 10220
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$26300(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10221
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$26300(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    goto :goto_23

    :cond_6f
    if-eqz v3, :cond_70

    .line 10222
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_70

    .line 10223
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

    .line 10224
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    goto :goto_23

    .line 10226
    :cond_70
    sget v3, Lorg/telegram/messenger/R$string;->PhoneHidden:I

    const-string v4, "PhoneHidden"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    const/4 v3, 0x0

    .line 10229
    :goto_23
    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    if-eqz v3, :cond_71

    const-string v8, "888\\d{8}"

    invoke-virtual {v3, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    goto :goto_24

    :cond_71
    move v5, v7

    :goto_24
    invoke-static {v6, v5}, Lorg/telegram/ui/ProfileActivity;->access$26402(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 10230
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v3

    if-eqz v3, :cond_72

    sget v3, Lorg/telegram/messenger/R$string;->AnonymousNumber:I

    goto :goto_25

    :cond_72
    sget v3, Lorg/telegram/messenger/R$string;->PhoneMobile:I

    :goto_25
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3, v7}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_33

    .line 10231
    :cond_73
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    const-string v6, "@"

    if-ne v2, v3, :cond_7f

    .line 10234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10235
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v10

    cmp-long v4, v10, v8

    const-string v8, ""

    if-eqz v4, :cond_7a

    .line 10236
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

    if-eqz v4, :cond_74

    .line 10238
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_74
    if-eqz v4, :cond_75

    .line 10240
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 10241
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_26

    :cond_75
    const/4 v3, 0x0

    :goto_26
    if-nez v4, :cond_76

    .line 10243
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_27

    :cond_76
    new-instance v8, Ljava/util/ArrayList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v8

    .line 10244
    :goto_27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 10245
    :goto_28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_78

    .line 10246
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v8, :cond_77

    .line 10247
    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v9, :cond_77

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_77

    .line 10248
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    goto :goto_29

    :cond_77
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 10253
    :cond_78
    :goto_29
    sget v7, Lorg/telegram/messenger/R$string;->Username:I

    const-string v8, "Username"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_79

    .line 10255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2a

    :cond_79
    const-string v6, "\u2014"

    :goto_2a
    move-object v7, v8

    move-object v8, v6

    goto/16 :goto_2c

    .line 10260
    :cond_7a
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_7e

    .line 10261
    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v6, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$300(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 10262
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v6

    .line 10263
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10264
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    const-string v10, "/"

    if-eqz v9, :cond_7c

    .line 10266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    if-eqz v7, :cond_7b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_7b
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10267
    sget v7, Lorg/telegram/messenger/R$string;->InviteLink:I

    const-string v8, "InviteLink"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    goto :goto_2b

    .line 10269
    :cond_7c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/c/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    if-eqz v4, :cond_7d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_7d
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10270
    sget v5, Lorg/telegram/messenger/R$string;->InviteLinkPrivate:I

    const-string v8, "InviteLinkPrivate"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v8, v4

    move/from16 v22, v7

    move-object v7, v5

    move/from16 v5, v22

    :goto_2b
    move-object v4, v3

    move-object v3, v6

    goto :goto_2c

    .line 10275
    :cond_7e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    move v5, v7

    move-object v7, v8

    const/4 v3, 0x0

    .line 10277
    :goto_2c
    invoke-direct {v1, v3, v4, v7}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->alsoUsernamesString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$6500(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v4

    invoke-virtual {v0, v8, v3, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    move v7, v5

    goto/16 :goto_33

    .line 10278
    :cond_7f
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_80

    .line 10279
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_8a

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v3, :cond_8a

    .line 10280
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    .line 10281
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    sget v4, Lorg/telegram/messenger/R$string;->AttachLocation:I

    const-string v5, "AttachLocation"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v7}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_33

    .line 10283
    :cond_80
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_82

    .line 10284
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_81

    .line 10286
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v6, :cond_81

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_81

    .line 10287
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

    goto :goto_2d

    .line 10289
    :cond_81
    sget v3, Lorg/telegram/messenger/R$string;->NumberUnknown:I

    const-string v4, "NumberUnknown"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 10291
    :goto_2d
    sget v4, Lorg/telegram/messenger/R$string;->TapToChangePhone:I

    const-string v6, "TapToChangePhone"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 10292
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextDetailCell;->setContentDescriptionValueFirst(Z)V

    goto/16 :goto_33

    .line 10293
    :cond_82
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_8a

    .line 10294
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$27000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 10296
    sget v4, Lorg/telegram/messenger/R$string;->Username:I

    const-string v8, "Username"

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_88

    .line 10298
    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_88

    move v8, v7

    .line 10299
    :goto_2e
    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_84

    .line 10300
    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v9, :cond_83

    .line 10301
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v10, :cond_83

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_83

    .line 10302
    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    goto :goto_2f

    :cond_83
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_84
    const/4 v8, 0x0

    :goto_2f
    if-nez v8, :cond_85

    .line 10307
    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    :cond_85
    if-eqz v8, :cond_87

    .line 10309
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_86

    goto :goto_30

    .line 10312
    :cond_86
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_31

    .line 10310
    :cond_87
    :goto_30
    sget v6, Lorg/telegram/messenger/R$string;->UsernameEmpty:I

    const-string v9, "UsernameEmpty"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 10314
    :goto_31
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-direct {v1, v8, v3, v4}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->alsoUsernamesString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_32

    .line 10316
    :cond_88
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_89

    .line 10317
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 10318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_32

    .line 10320
    :cond_89
    sget v3, Lorg/telegram/messenger/R$string;->UsernameEmpty:I

    const-string v6, "UsernameEmpty"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 10323
    :goto_32
    invoke-virtual {v0, v6, v4, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 10324
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setContentDescriptionValueFirst(Z)V

    :cond_8a
    :goto_33
    if-eqz v7, :cond_8b

    .line 10327
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_qr_mini:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 10328
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 10329
    sget v4, Lorg/telegram/messenger/R$string;->GetQRCode:I

    const-string v5, "GetQRCode"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setImage(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 10330
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v4, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_34

    :cond_8b
    const/4 v3, 0x0

    .line 10332
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 10333
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    .line 10335
    :goto_34
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_35

    .line 10191
    :cond_8c
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 10192
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v2, v3, :cond_8d

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_8e

    :cond_8d
    move v7, v5

    :cond_8e
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    xor-int/2addr v3, v5

    invoke-virtual {v0, v7, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setExpandableMode(ZZ)V

    .line 10193
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_91

    .line 10194
    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_90

    iget-object v2, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$25700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-ne v2, v12, :cond_8f

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    if-eqz v2, :cond_90

    .line 10195
    :cond_8f
    sget v2, Lorg/telegram/messenger/R$string;->ReportChatDescription:I

    const-string v3, "ReportChatDescription"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 10197
    :cond_90
    sget v2, Lorg/telegram/messenger/R$string;->Info:I

    const-string v3, "Info"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 10199
    :cond_91
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_92

    .line 10200
    sget v2, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 10201
    :cond_92
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_93

    .line 10202
    sget v2, Lorg/telegram/messenger/R$string;->SETTINGS:I

    const-string v3, "SETTINGS"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 10203
    :cond_93
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$25600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_94

    .line 10204
    sget v2, Lorg/telegram/messenger/R$string;->Account:I

    const-string v3, "Account"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 10205
    :cond_94
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_95

    .line 10206
    sget v2, Lorg/telegram/messenger/R$string;->SettingsHelp:I

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 10207
    :cond_95
    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$26100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v2, v3, :cond_96

    .line 10208
    sget v2, Lorg/telegram/messenger/R$string;->SettingsDebug:I

    const-string v3, "SettingsDebug"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_96
    :goto_35
    return-void

    nop

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

    .line 9906
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SOCIAL:I

    const/4 v0, -0x1

    if-ne p2, p1, :cond_0

    .line 9907
    new-instance p1, Lcom/iMe/feature/profile/ProfileSocialCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/iMe/feature/profile/ProfileSocialCell;-><init>(Landroid/content/Context;)V

    .line 9908
    sget-object v1, Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/ProfileActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 9910
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPIC_PROFILE:I

    if-ne p2, p1, :cond_1

    .line 9911
    new-instance p1, Lcom/iMe/ui/topics/TopicProfileCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v2

    invoke-direct {p1, v1, v2, v3}, Lcom/iMe/ui/topics/TopicProfileCell;-><init>(Landroid/content/Context;J)V

    goto/16 :goto_6

    .line 9912
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_DETAIL_WITH_RANK:I

    const/4 v1, 0x1

    if-ne p2, p1, :cond_2

    .line 9913
    new-instance p1, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;-><init>(Landroid/content/Context;)V

    .line 9914
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setContentDescriptionValueFirst(Z)V

    goto/16 :goto_6

    :cond_2
    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 10032
    :pswitch_0
    new-instance v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {v2, v3, v5, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 10033
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 10034
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10035
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_3

    .line 9961
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10086
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10027
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10064
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/ProfileActivity$ListAdapter$4;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, p0, v1, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$4;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10020
    :pswitch_5
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10021
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10023
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    goto/16 :goto_6

    .line 9982
    :pswitch_6
    new-instance v1, Lorg/telegram/ui/ProfileActivity$ListAdapter$3;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$3;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;)V

    .line 10016
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 9973
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/ProfileActivity$ListAdapter$2;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 9969
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/Cells/UserCell;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$24000(Lorg/telegram/ui/ProfileActivity;)I

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

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 9965
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 9957
    :pswitch_a
    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x17

    const/16 v6, 0x46

    const/4 v7, 0x0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 9952
    :pswitch_b
    new-instance v1, Lorg/telegram/ui/Cells/DividerCell;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v2, 0x14

    .line 9953
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    move-object p1, v1

    goto/16 :goto_6

    .line 9948
    :pswitch_c
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 9929
    :pswitch_d
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v1}, Lorg/telegram/ui/ProfileActivity;->access$23802(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Cells/AboutLinkCell;

    move-result-object p1

    goto/16 :goto_6

    .line 9924
    :pswitch_e
    new-instance v2, Lorg/telegram/ui/Cells/TextDetailCell;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/16 v5, 0x13

    if-ne p2, v5, :cond_5

    move p1, v1

    :cond_5
    invoke-direct {v2, v3, v4, p1}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    .line 9925
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setContentDescriptionValueFirst(Z)V

    :goto_2
    move-object p1, v2

    goto/16 :goto_6

    .line 9919
    :pswitch_f
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x17

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    .line 10037
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

    .line 10038
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit8 v6, v4, 0xa

    .line 10040
    rem-int/2addr v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    const-string v7, " "

    if-eq v4, v1, :cond_7

    if-eq v4, v5, :cond_7

    .line 10047
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isStandaloneApp()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 10048
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

    .line 10050
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

    .line 10043
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

    .line 10054
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

    .line 10056
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 10058
    :goto_5
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/16 v3, 0xe

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, p1, v4, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 10060
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

    .line 10090
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10092
    :cond_8
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

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

    .line 10097
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 10098
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$2302(Lorg/telegram/ui/ProfileActivity;Z)Z

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 10104
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 10105
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$2302(Lorg/telegram/ui/ProfileActivity;Z)Z

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 10684
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 10685
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$30602(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Cells/TextCell;)Lorg/telegram/ui/Cells/TextCell;

    :cond_0
    return-void
.end method
