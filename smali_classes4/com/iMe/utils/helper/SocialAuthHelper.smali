.class public final Lcom/iMe/utils/helper/SocialAuthHelper;
.super Ljava/lang/Object;
.source "SocialAuthHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/SocialAuthHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/helper/SocialAuthHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/SocialAuthHelper;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/SocialAuthHelper;->INSTANCE:Lcom/iMe/utils/helper/SocialAuthHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSocialAuthUrl(JLcom/iMe/model/common/SocialType;)Ljava/lang/String;
    .locals 2

    const-string v0, "socialType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/iMe/storage/common/AppConfiguration$Api;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Api;

    invoke-virtual {v1}, Lcom/iMe/storage/common/AppConfiguration$Api;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "social/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/startAuth?telegramChatId="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
