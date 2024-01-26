.class public final Lcom/iMe/fork/enums/ChatsGroupCreationFilter$Companion;
.super Ljava/lang/Object;
.source "ChatsGroupCreationFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/enums/ChatsGroupCreationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatsGroupCreationFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatsGroupCreationFilter.kt\ncom/iMe/fork/enums/ChatsGroupCreationFilter$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCategoriesCreatedFolderOrTopic(I)Lcom/iMe/fork/enums/ChatsGroupCreationFilter;
    .locals 6

    .line 65
    invoke-static {}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->values()[Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->getFabricId()I

    move-result v5

    if-ne p1, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return-object v4
.end method
