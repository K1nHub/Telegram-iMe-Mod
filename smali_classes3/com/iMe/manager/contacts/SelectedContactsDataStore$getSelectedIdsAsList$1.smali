.class public final Lcom/iMe/manager/contacts/SelectedContactsDataStore$getSelectedIdsAsList$1;
.super Lkotlin/collections/LongIterator;
.source "SelectedContactsDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/contacts/SelectedContactsDataStore;->getSelectedIdsAsList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/iMe/manager/contacts/SelectedContactsDataStore;


# direct methods
.method constructor <init>(Lcom/iMe/manager/contacts/SelectedContactsDataStore;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/contacts/SelectedContactsDataStore$getSelectedIdsAsList$1;->this$0:Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    .line 34
    invoke-direct {p0}, Lkotlin/collections/LongIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 36
    iget v0, p0, Lcom/iMe/manager/contacts/SelectedContactsDataStore$getSelectedIdsAsList$1;->index:I

    iget-object v1, p0, Lcom/iMe/manager/contacts/SelectedContactsDataStore$getSelectedIdsAsList$1;->this$0:Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    invoke-virtual {v1}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->getSelectedContactsId()Landroidx/collection/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextLong()J
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/iMe/manager/contacts/SelectedContactsDataStore$getSelectedIdsAsList$1;->this$0:Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    invoke-virtual {v0}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->getSelectedContactsId()Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget v1, p0, Lcom/iMe/manager/contacts/SelectedContactsDataStore$getSelectedIdsAsList$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/iMe/manager/contacts/SelectedContactsDataStore$getSelectedIdsAsList$1;->index:I

    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    return-wide v0
.end method
