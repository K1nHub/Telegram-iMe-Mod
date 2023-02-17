.class public final synthetic Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$WhenMappings;
.super Ljava/lang/Object;
.source "FilteredByOnlineContactsDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/smedialink/model/contacts/ContactsFilter;->values()[Lcom/smedialink/model/contacts/ContactsFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/model/contacts/ContactsFilter;->ONLINE:Lcom/smedialink/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/contacts/ContactsFilter;->MUTUAL:Lcom/smedialink/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/contacts/ContactsFilter;->NOT_MUTUAL:Lcom/smedialink/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/contacts/ContactsFilter;->BLOCKED:Lcom/smedialink/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/contacts/ContactsFilter;->ALL:Lcom/smedialink/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
