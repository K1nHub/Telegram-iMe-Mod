.class synthetic Lorg/telegram/ui/Adapters/ContactsAdapter$3;
.super Ljava/lang/Object;
.source "ContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/ContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$iMe$model$contacts$ContactsFilter:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 161
    invoke-static {}, Lcom/iMe/model/contacts/ContactsFilter;->values()[Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/ui/Adapters/ContactsAdapter$3;->$SwitchMap$com$iMe$model$contacts$ContactsFilter:[I

    :try_start_0
    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->ONLINE:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/telegram/ui/Adapters/ContactsAdapter$3;->$SwitchMap$com$iMe$model$contacts$ContactsFilter:[I

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->PREMIUM:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/telegram/ui/Adapters/ContactsAdapter$3;->$SwitchMap$com$iMe$model$contacts$ContactsFilter:[I

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/telegram/ui/Adapters/ContactsAdapter$3;->$SwitchMap$com$iMe$model$contacts$ContactsFilter:[I

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->NOT_MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/telegram/ui/Adapters/ContactsAdapter$3;->$SwitchMap$com$iMe$model$contacts$ContactsFilter:[I

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/telegram/ui/Adapters/ContactsAdapter$3;->$SwitchMap$com$iMe$model$contacts$ContactsFilter:[I

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->ALL:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
