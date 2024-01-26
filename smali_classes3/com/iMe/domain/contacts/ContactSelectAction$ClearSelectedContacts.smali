.class public final Lcom/iMe/domain/contacts/ContactSelectAction$ClearSelectedContacts;
.super Lcom/iMe/domain/contacts/ContactSelectAction;
.source "ContactSelectAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/domain/contacts/ContactSelectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClearSelectedContacts"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/domain/contacts/ContactSelectAction$ClearSelectedContacts;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/domain/contacts/ContactSelectAction$ClearSelectedContacts;

    invoke-direct {v0}, Lcom/iMe/domain/contacts/ContactSelectAction$ClearSelectedContacts;-><init>()V

    sput-object v0, Lcom/iMe/domain/contacts/ContactSelectAction$ClearSelectedContacts;->INSTANCE:Lcom/iMe/domain/contacts/ContactSelectAction$ClearSelectedContacts;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/iMe/domain/contacts/ContactSelectAction;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
