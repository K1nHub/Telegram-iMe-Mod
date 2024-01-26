.class Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "FiltersSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FiltersSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemInner"
.end annotation


# instance fields
.field filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field suggested:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

.field text:Ljava/lang/CharSequence;

.field private topic:Lcom/iMe/storage/domain/model/topics/TopicModel;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1053
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/FiltersSetupActivity$ItemInner;)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 0

    .line 1043
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    return-object p0
.end method

.method public static asButton(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    .line 1080
    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    .line 1081
    iput-object p0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    .line 1074
    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    .line 1075
    iput-object p0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 1076
    iput-object p1, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    return-object v0
.end method

.method public static asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    .line 1061
    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    .line 1062
    iput-object p0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asHint()Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    .line 1066
    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    return-object v0
.end method

.method public static asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    .line 1069
    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    .line 1070
    iput-object p0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asSuggested(Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;
    .locals 2

    .line 1085
    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    .line 1086
    iput-object p0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->suggested:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1095
    :cond_0
    instance-of v1, p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1098
    :cond_1
    check-cast p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    .line 1099
    iget v1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    if-eqz v3, :cond_3

    const/4 v1, 0x4

    if-eq v3, v1, :cond_3

    const/4 v1, 0x3

    if-ne v3, v1, :cond_4

    .line 1103
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1107
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    .line 1109
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    if-nez v1, :cond_5

    move v3, v0

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    iget-object v4, p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    if-nez v4, :cond_6

    move v4, v0

    goto :goto_1

    :cond_6
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    if-eqz v1, :cond_8

    .line 1112
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v3

    iget-object v1, p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->topic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    .line 1116
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez v1, :cond_9

    move v3, v0

    goto :goto_2

    :cond_9
    move v3, v2

    :goto_2
    iget-object v4, p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez v4, :cond_a

    move v5, v0

    goto :goto_3

    :cond_a
    move v5, v2

    :goto_3
    if-eq v3, v5, :cond_b

    return v2

    :cond_b
    if-eqz v1, :cond_c

    .line 1119
    iget v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iget v3, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    if-eq v1, v3, :cond_c

    return v2

    .line 1123
    :cond_c
    iget v1, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_10

    .line 1124
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->suggested:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    if-nez v1, :cond_d

    move v3, v0

    goto :goto_4

    :cond_d
    move v3, v2

    :goto_4
    iget-object p1, p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->suggested:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    if-nez p1, :cond_e

    move v4, v0

    goto :goto_5

    :cond_e
    move v4, v2

    :goto_5
    if-eq v3, v4, :cond_f

    return v2

    :cond_f
    if-eqz v1, :cond_10

    .line 1127
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DialogFilter;->id:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$DialogFilter;->id:I

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method
