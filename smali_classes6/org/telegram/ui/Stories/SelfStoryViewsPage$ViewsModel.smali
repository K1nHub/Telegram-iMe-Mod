.class public Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;
.super Ljava/lang/Object;
.source "SelfStoryViewsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewsModel"
.end annotation


# instance fields
.field animateDateForUsers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field currentAccount:I

.field private dialogId:J

.field hasNext:Z

.field initial:Z

.field isExpiredViews:Z

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/SelfStoryViewsPage;",
            ">;"
        }
    .end annotation
.end field

.field loading:Z

.field offset:Ljava/lang/String;

.field originalViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_storyView;",
            ">;"
        }
    .end annotation
.end field

.field reqId:I

.field showReactionOnly:Z

.field state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

.field storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

.field public totalCount:I

.field useLocalFilters:Z

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_storyView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AbZ-IpYL94TCZhlbYEhTtaOO7MY(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[ILorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->lambda$loadNext$0([ILorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ngx9JVX6aP6xiwQ6QiUTEb7JqBc(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->lambda$loadNext$1([ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zBe7mc_dAL-_ehJUNZOPcsu0FM4(Lorg/telegram/tgnet/TLRPC$TL_storyView;)I
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->lambda$applyLocalFilter$2(Lorg/telegram/tgnet/TLRPC$TL_storyView;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(IJLorg/telegram/tgnet/TLRPC$StoryItem;Z)V
    .locals 3

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    .line 963
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 967
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    const/4 v1, -0x1

    .line 969
    iput v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    .line 970
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    .line 973
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    .line 974
    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    .line 977
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    .line 978
    iput-object p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 979
    iput-wide p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->dialogId:J

    .line 980
    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$StoryViews;->views_count:I

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    const/16 v1, 0xc8

    if-ge p2, v1, :cond_1

    .line 982
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->useLocalFilters:Z

    .line 984
    :cond_1
    invoke-static {p4}, Lorg/telegram/ui/Stories/StoriesUtilities;->hasExpiredViews(Lorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-eqz p2, :cond_3

    .line 985
    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    if-eqz p2, :cond_3

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$StoryViews;->reactions_count:I

    if-lez p2, :cond_3

    .line 986
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    .line 987
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->showReactionOnly:Z

    .line 989
    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-nez p2, :cond_5

    .line 990
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    .line 991
    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    move p2, p3

    .line 992
    :goto_2
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p2, p5, :cond_5

    .line 993
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 994
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p5, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p5

    if-nez p5, :cond_4

    goto :goto_3

    .line 997
    :cond_4
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_storyView;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_storyView;-><init>()V

    .line 998
    iput-wide v0, p5, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    .line 999
    iput p3, p5, Lorg/telegram/tgnet/TLRPC$TL_storyView;->date:I

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private applyLocalFilter()V
    .locals 8

    .line 1104
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1130
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 1108
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1110
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const/4 v2, 0x0

    move v3, v2

    .line 1112
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 1113
    iget v4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_storyView;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1115
    iget-object v5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v5, v5, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v5, :cond_4

    :cond_3
    move v5, v2

    goto :goto_3

    :cond_4
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    .line 1119
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v7}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1120
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 1121
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v4, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move v5, v2

    :cond_6
    if-eqz v5, :cond_7

    .line 1126
    iget-object v4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_storyView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1132
    :cond_8
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    if-nez v0, :cond_9

    .line 1133
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1;

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_9
    return-void
.end method

.method private static synthetic lambda$applyLocalFilter$2(Lorg/telegram/tgnet/TLRPC$TL_storyView;)I
    .locals 0

    .line 1133
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_storyView;->date:I

    neg-int p0, p0

    return p0
.end method

.method private synthetic lambda$loadNext$0([ILorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 1035
    aget p1, p1, v0

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    const-string v2, "SelfStoryViewsPage "

    if-eq p1, v1, :cond_0

    .line 1036
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " localId != reqId"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 1039
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    const/4 p1, -0x1

    .line 1040
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    if-eqz p2, :cond_a

    .line 1042
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;

    .line 1043
    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->applyStoryViewsBlocked(Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;)V

    .line 1044
    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1045
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    if-eqz p1, :cond_2

    .line 1046
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    move p1, v0

    .line 1047
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1048
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_storyView;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1050
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1051
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1053
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->useLocalFilters:Z

    if-eqz p1, :cond_3

    .line 1054
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1055
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->applyLocalFilter()V

    goto :goto_1

    .line 1057
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1060
    :goto_1
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_4

    .line 1061
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    goto :goto_2

    .line 1063
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    .line 1065
    :goto_2
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offset:Ljava/lang/String;

    .line 1066
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1067
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    .line 1070
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    if-nez v3, :cond_6

    .line 1071
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_storyViews;-><init>()V

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    .line 1074
    :cond_6
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->count:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$StoryViews;->views_count:I

    if-le p1, v4, :cond_8

    .line 1075
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    move p1, v0

    :goto_3
    const/4 v3, 0x3

    .line 1076
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge p1, v3, :cond_7

    .line 1077
    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1079
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->count:I

    iput v3, p1, Lorg/telegram/tgnet/TLRPC$StoryViews;->views_count:I

    move p1, v1

    goto :goto_4

    :cond_8
    move p1, v0

    .line 1082
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$StoryViews;->reactions_count:I

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->reactions_count:I

    if-eq v4, p2, :cond_9

    .line 1083
    iput p2, v3, Lorg/telegram/tgnet/TLRPC$StoryViews;->reactions_count:I

    goto :goto_5

    :cond_9
    move v1, p1

    :goto_5
    if-eqz v1, :cond_b

    .line 1087
    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_6

    .line 1090
    :cond_a
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    .line 1093
    :cond_b
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " response  totalItems "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has next "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1094
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_c

    .line 1095
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->onDataRecieved(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1097
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-eqz p1, :cond_d

    .line 1098
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    :cond_d
    return-void
.end method

.method private synthetic lambda$loadNext$1([ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1034
    new-instance p3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[ILorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 1

    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public loadNext()V
    .locals 6

    .line 1007
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1010
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;-><init>()V

    .line 1011
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->id:I

    .line 1012
    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1013
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->useLocalFilters:Z

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 1014
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->q:Ljava/lang/String;

    .line 1015
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->just_contacts:Z

    .line 1016
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->reactions_first:Z

    goto :goto_0

    .line 1018
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->q:Ljava/lang/String;

    .line 1019
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1020
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->flags:I

    .line 1022
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v5, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->just_contacts:Z

    .line 1023
    iget-boolean v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->reactions_first:Z

    .line 1025
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    const/16 v5, 0x14

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v5, :cond_3

    goto :goto_1

    :cond_3
    const/16 v5, 0x64

    :cond_4
    :goto_1
    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->limit:I

    .line 1026
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offset:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->offset:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 1028
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->offset:Ljava/lang/String;

    .line 1031
    :cond_5
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    new-array v1, v4, [I

    .line 1033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SelfStoryViewsPage load next "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " offset="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->offset:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " q"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->q:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->just_contacts:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->reactions_first:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1034
    iget v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[I)V

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    aput v0, v1, v2

    :cond_6
    :goto_2
    return-void
.end method

.method public release()V
    .locals 3

    .line 1148
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    if-ltz v0, :cond_0

    .line 1149
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    const/4 v0, -0x1

    .line 1151
    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    return-void
.end method

.method public reloadIfNeed(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;ZZ)V
    .locals 1

    .line 1155
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;-><init>()V

    .line 1156
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->set(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 1158
    iput-boolean p1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    :cond_0
    const/4 p2, 0x1

    if-nez p3, :cond_1

    .line 1161
    iput-boolean p2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    .line 1163
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 1166
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->set(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;)V

    .line 1167
    iget-boolean p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->useLocalFilters:Z

    if-eqz p3, :cond_3

    .line 1168
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->applyLocalFilter()V

    .line 1169
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 1170
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->onDataRecieved(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1173
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->release()V

    .line 1174
    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 1175
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    .line 1176
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    .line 1177
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    const-string p1, ""

    .line 1178
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offset:Ljava/lang/String;

    .line 1179
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    :cond_4
    return-void
.end method

.method public removeListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 1

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
