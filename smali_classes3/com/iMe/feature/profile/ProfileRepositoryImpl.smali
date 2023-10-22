.class public final Lcom/iMe/feature/profile/ProfileRepositoryImpl;
.super Ljava/lang/Object;
.source "ProfileRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/feature/profile/ProfileRepository;


# instance fields
.field private currentProfile:Lcom/iMe/feature/profile/ProfileData;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
    .locals 9

    const-string v0, "telegramGateway"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/feature/profile/ProfileRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 10
    new-instance p1, Lcom/iMe/feature/profile/ProfileData;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/iMe/feature/profile/ProfileData;-><init>(JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/feature/profile/ProfileRepositoryImpl;->currentProfile:Lcom/iMe/feature/profile/ProfileData;

    return-void
.end method


# virtual methods
.method public getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileRepositoryImpl;->currentProfile:Lcom/iMe/feature/profile/ProfileData;

    return-object v0
.end method

.method public isMyProfile(Lcom/iMe/feature/profile/ProfileData;)Z
    .locals 6

    const-string v0, "profile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/iMe/feature/profile/ProfileData;->getChatId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    goto :goto_0

    :cond_0
    move v0, v1

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/iMe/feature/profile/ProfileRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iMe/feature/profile/ProfileData;->getUserId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public saveProfile(Lcom/iMe/feature/profile/ProfileData;)V
    .locals 1

    const-string v0, "profile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/iMe/feature/profile/ProfileRepositoryImpl;->currentProfile:Lcom/iMe/feature/profile/ProfileData;

    return-void
.end method
